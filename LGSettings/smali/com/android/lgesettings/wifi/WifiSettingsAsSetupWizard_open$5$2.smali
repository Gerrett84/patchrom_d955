.class Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5$2;
.super Ljava/lang/Object;
.source "WifiSettingsAsSetupWizard_open.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;

.field final synthetic val$cm:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;Landroid/net/ConnectivityManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;

    iput-object p2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5$2;->val$cm:Landroid/net/ConnectivityManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5$2;->val$cm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$300(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 478
    const-string v0, "WifiSettingsAsSetupWizard_open"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnClickListener AlertDialog mMobileNetworkOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$300(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$500(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 480
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$500(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 481
    return-void
.end method
