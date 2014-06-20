.class Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiSettingsAsSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;
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
    .line 131
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$1;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 134
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, action:Ljava/lang/String;
    const-string v1, "WifiSettingsAsSetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onReceive] action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$1;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #calls: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->handleWifiStateChanged(I)V
    invoke-static {v1, v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$000(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;I)V

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$1;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #calls: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->isWifiExtendFuncAvailable()Z
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$100(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$1;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #calls: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->handleStateChanged(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v1, p1, p2}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$200(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;Landroid/content/Context;Landroid/content/Intent;)V

    .line 144
    :cond_1
    return-void
.end method
