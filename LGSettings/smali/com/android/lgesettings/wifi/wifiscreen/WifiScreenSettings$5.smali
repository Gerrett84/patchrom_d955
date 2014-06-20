.class Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$5;
.super Ljava/lang/Object;
.source "WifiScreenSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$5;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 629
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 630
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$5;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mConnectDialog:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenDialog;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$1400(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenDialog;->getConfig()Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    .line 631
    .local v0, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$5;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_0

    .line 632
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$5;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$5;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$800(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    new-instance v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$5$1;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$5$1;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$5;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 643
    .end local v0           #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_0
    return-void
.end method
