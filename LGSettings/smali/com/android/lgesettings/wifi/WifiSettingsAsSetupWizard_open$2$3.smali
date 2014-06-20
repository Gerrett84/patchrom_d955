.class Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2$3;
.super Ljava/lang/Object;
.source "WifiSettingsAsSetupWizard_open.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2$3;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "Dialog"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2$3;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$300(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 313
    return-void
.end method
