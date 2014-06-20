.class Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$3;
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
    .line 419
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$3;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$3;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$600(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$3;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$600(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 425
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$3;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$600(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 428
    :cond_0
    return-void
.end method
