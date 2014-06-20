.class Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;
.super Ljava/lang/Object;
.source "WifiSettingsAsSetupWizard.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    .line 520
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 524
    const-string v5, "WifiSettingsAsSetupWizard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onPreferenceChange] value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 527
    .local v1, enable:Z
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    iget-object v5, v5, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetOperator:Ljava/lang/String;

    const-string v6, "USC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    iget-object v5, v5, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetCountry:Ljava/lang/String;

    const-string v6, "US"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 531
    if-eqz v1, :cond_0

    .line 532
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$800(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 533
    .local v0, check:Z
    const-string v5, "WifiSettingsAsSetupWizard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$800(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 535
    const-string v4, "WifiSettingsAsSetupWizard"

    const-string v5, "mWifiOn setcheck false!!!!!!!!!!!!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v4}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$600(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 538
    .local v2, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f04013d

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 540
    .local v3, inputView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v6}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$600(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f080a62

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5$3;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5$3;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5$2;

    invoke-direct {v7, p0, v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5$2;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;Z)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    new-instance v7, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5$1;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5$1;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    #setter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v4, v5}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$1002(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 568
    .end local v0           #check:Z
    .end local v2           #factory:Landroid/view/LayoutInflater;
    .end local v3           #inputView:Landroid/view/View;
    :goto_0
    const/4 v4, 0x1

    .line 581
    :goto_1
    return v4

    .line 565
    :cond_0
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$1100(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 566
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$800(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 570
    :cond_1
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    iget-object v5, v5, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetOperator:Ljava/lang/String;

    const-string v6, "TMO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    iget-object v5, v5, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetCountry:Ljava/lang/String;

    const-string v6, "US"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #calls: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->isWifiFirstChecked(Z)Z
    invoke-static {v5, v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$1200(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 571
    const-string v5, "WifiSettingsAsSetupWizard"

    const-string v6, " (TMO & US) First checked"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v5}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$600(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 574
    const-string v5, "WifiSettingsAsSetupWizard"

    const-string v6, "Make toast popup"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v6}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$600(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    #setter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mContext:Landroid/content/Context;
    invoke-static {v5, v6}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$502(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;Landroid/content/Context;)Landroid/content/Context;

    .line 576
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$500(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f081696

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 580
    :cond_2
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$1100(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_1
.end method
