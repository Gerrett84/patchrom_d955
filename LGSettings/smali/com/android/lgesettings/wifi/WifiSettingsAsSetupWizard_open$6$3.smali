.class Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$6$3;
.super Ljava/lang/Object;
.source "WifiSettingsAsSetupWizard_open.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 567
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$6$3;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "Dialog"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$6$3;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$6;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$6;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$1100(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 571
    return-void
.end method
