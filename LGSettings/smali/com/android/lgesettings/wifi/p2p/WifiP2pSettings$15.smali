.class Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$15;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1549
    iput-object p1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1551
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_0

    .line 1552
    invoke-static {}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    move-result-object v0

    .line 1554
    .local v0, mdm:Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;
    invoke-virtual {v0, p2}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->receiveWifiPolicyChangeIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1555
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$1500(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->checkDisallowWifiDirect(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1556
    const-string v1, "WifiP2pSettings"

    const-string v2, "MDM : mLGMDMReceiver : finish"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$1500(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 1561
    .end local v0           #mdm:Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;
    :cond_0
    return-void
.end method
