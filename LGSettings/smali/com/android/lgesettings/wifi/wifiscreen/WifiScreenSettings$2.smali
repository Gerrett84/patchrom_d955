.class Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;-><init>()V
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
    .line 448
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$2;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 451
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.lge.systemservice.core.wfdmanager.WFD_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 454
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$2;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    const-string v3, "wfd_state"

    const/16 v4, 0x8

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "connected_udn"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->handleScreenStateChanged(ILjava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$700(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;ILjava/lang/String;)V

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    const-string v2, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 459
    const-string v2, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 460
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$2;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v2, :cond_0

    .line 461
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$2;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$2;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v3}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$800(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$2;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_0

    .line 463
    :cond_2
    const-string v2, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 464
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$2;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v2, :cond_0

    .line 465
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 470
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$2;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWfdState:I
    invoke-static {v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$900(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 472
    const-string v2, "WifiScreenSettings"

    const-string v3, "Connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$2;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/lgesettings/Settings$WifiScreenSettingsDialogActivity;

    if-eqz v2, :cond_3

    .line 474
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$2;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->finish()V

    .line 476
    :cond_3
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$602(Z)Z

    .line 477
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$2;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 479
    :cond_4
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$2;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWfdState:I
    invoke-static {v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$900(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 480
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$602(Z)Z

    .line 481
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$2;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 484
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    :cond_5
    const-string v2, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$2;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v2, :cond_0

    .line 488
    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$2;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    const-string v2, "wifiP2pDevice"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    #setter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v3, v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$1002(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 490
    const-string v2, "WifiScreenSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update device info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$2;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v4}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$1000(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$2;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #calls: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->updateDevicePref()V
    invoke-static {v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$1100(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)V

    goto/16 :goto_0
.end method
