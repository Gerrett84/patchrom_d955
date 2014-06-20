.class Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$6$1;
.super Ljava/lang/Object;
.source "WifiSettingsAsSetupWizard_open.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$6;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$6;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$6;)V
    .locals 0
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$6$1;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x0

    .line 582
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$6$1;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$6;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$6;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$1300(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 583
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$6$1;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$6;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$6;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$1100(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 584
    return-void
.end method
