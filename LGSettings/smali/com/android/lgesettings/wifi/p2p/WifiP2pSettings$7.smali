.class Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$7;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 415
    iput-object p1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$7;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, -0x1

    .line 418
    if-ne p2, v3, :cond_0

    .line 419
    iget-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$7;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 421
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 422
    .local v0, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$7;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$1700(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;

    move-result-object v2

    iget-object v2, v2, Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 424
    const-string v2, "wifidirect.wps"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 426
    .local v1, forceWps:I
    if-eq v1, v3, :cond_1

    .line 427
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v1, v2, Landroid/net/wifi/WpsInfo;->setup:I

    .line 438
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$7;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$7;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    new-instance v4, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$7$1;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$7$1;-><init>(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$7;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 452
    .end local v0           #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v1           #forceWps:I
    :cond_0
    return-void

    .line 429
    .restart local v0       #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    .restart local v1       #forceWps:I
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$7;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$1700(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;

    move-result-object v2

    iget-object v2, v2, Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 430
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 431
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$7;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$1700(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;

    move-result-object v2

    iget-object v2, v2, Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 432
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v3, 0x2

    iput v3, v2, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 434
    :cond_3
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v3, 0x1

    iput v3, v2, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0
.end method
