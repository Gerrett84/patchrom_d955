.class Litectokyo/wiflus/SsbEnabler$WiFiDirectBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SsbEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Litectokyo/wiflus/SsbEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WiFiDirectBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Litectokyo/wiflus/SsbEnabler;


# direct methods
.method private constructor <init>(Litectokyo/wiflus/SsbEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Litectokyo/wiflus/SsbEnabler$WiFiDirectBroadcastReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Litectokyo/wiflus/SsbEnabler;Litectokyo/wiflus/SsbEnabler$WiFiDirectBroadcastReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 709
    invoke-direct {p0, p1}, Litectokyo/wiflus/SsbEnabler$WiFiDirectBroadcastReceiver;-><init>(Litectokyo/wiflus/SsbEnabler;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 712
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 714
    const-string v5, "wifiP2pDevice"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 716
    .local v1, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v5, p0, Litectokyo/wiflus/SsbEnabler$WiFiDirectBroadcastReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    iget-object v6, p0, Litectokyo/wiflus/SsbEnabler$WiFiDirectBroadcastReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;
    invoke-static {v6}, Litectokyo/wiflus/SsbEnabler;->access$4(Litectokyo/wiflus/SsbEnabler;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lg_device_name"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #setter for: Litectokyo/wiflus/SsbEnabler;->mProfileName:Ljava/lang/String;
    invoke-static {v5, v6}, Litectokyo/wiflus/SsbEnabler;->access$25(Litectokyo/wiflus/SsbEnabler;Ljava/lang/String;)V

    .line 720
    iget-object v5, p0, Litectokyo/wiflus/SsbEnabler$WiFiDirectBroadcastReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mProfileName:Ljava/lang/String;
    invoke-static {v5}, Litectokyo/wiflus/SsbEnabler;->access$26(Litectokyo/wiflus/SsbEnabler;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 721
    iget-object v5, p0, Litectokyo/wiflus/SsbEnabler$WiFiDirectBroadcastReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    iget-object v6, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    #setter for: Litectokyo/wiflus/SsbEnabler;->mProfileName:Ljava/lang/String;
    invoke-static {v5, v6}, Litectokyo/wiflus/SsbEnabler;->access$25(Litectokyo/wiflus/SsbEnabler;Ljava/lang/String;)V

    .line 736
    :cond_0
    const-string v5, "SsbEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SsbEnabler mProfileName - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Litectokyo/wiflus/SsbEnabler$WiFiDirectBroadcastReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mProfileName:Ljava/lang/String;
    invoke-static {v7}, Litectokyo/wiflus/SsbEnabler;->access$26(Litectokyo/wiflus/SsbEnabler;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :try_start_0
    const-string v5, "SsbEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SsbEnabler mProfileName length - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Litectokyo/wiflus/SsbEnabler$WiFiDirectBroadcastReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mProfileName:Ljava/lang/String;
    invoke-static {v7}, Litectokyo/wiflus/SsbEnabler;->access$26(Litectokyo/wiflus/SsbEnabler;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    .end local v1           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    :goto_0
    return-void

    .line 739
    .restart local v1       #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    :catch_0
    move-exception v2

    .line 740
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 743
    .end local v1           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    :cond_2
    const-string v5, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 744
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 745
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 746
    const-string v5, "SsbEnabler"

    const-string v6, "WIFI_P2P_CONNECTION_CHANGED_ACTION connected=true"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v5, p0, Litectokyo/wiflus/SsbEnabler$WiFiDirectBroadcastReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    #setter for: Litectokyo/wiflus/SsbEnabler;->mDirectGroupConnected:Z
    invoke-static {v5, v9}, Litectokyo/wiflus/SsbEnabler;->access$27(Litectokyo/wiflus/SsbEnabler;Z)V

    goto :goto_0

    .line 749
    :cond_3
    const-string v5, "SsbEnabler"

    const-string v6, "WIFI_P2P_CONNECTION_CHANGED_ACTION connected=false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v5, p0, Litectokyo/wiflus/SsbEnabler$WiFiDirectBroadcastReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    #setter for: Litectokyo/wiflus/SsbEnabler;->mDirectGroupConnected:Z
    invoke-static {v5, v8}, Litectokyo/wiflus/SsbEnabler;->access$27(Litectokyo/wiflus/SsbEnabler;Z)V

    goto :goto_0

    .line 752
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    :cond_4
    const-string v5, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 753
    const-string v5, "wifi_p2p_state"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 754
    .local v4, state:I
    const-string v5, "SsbEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "EXTRA_WIFIP2P_STATE "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    if-ne v4, v9, :cond_6

    .line 756
    iget-object v5, p0, Litectokyo/wiflus/SsbEnabler$WiFiDirectBroadcastReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    #setter for: Litectokyo/wiflus/SsbEnabler;->mDirectEnabled:Z
    invoke-static {v5, v8}, Litectokyo/wiflus/SsbEnabler;->access$28(Litectokyo/wiflus/SsbEnabler;Z)V

    .line 757
    iget-object v5, p0, Litectokyo/wiflus/SsbEnabler$WiFiDirectBroadcastReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    #setter for: Litectokyo/wiflus/SsbEnabler;->mDirectGroupConnected:Z
    invoke-static {v5, v8}, Litectokyo/wiflus/SsbEnabler;->access$27(Litectokyo/wiflus/SsbEnabler;Z)V

    .line 767
    :cond_5
    :goto_1
    iget-object v5, p0, Litectokyo/wiflus/SsbEnabler$WiFiDirectBroadcastReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Litectokyo/wiflus/SsbEnabler;->access$32(Litectokyo/wiflus/SsbEnabler;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 759
    :cond_6
    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 760
    iget-object v5, p0, Litectokyo/wiflus/SsbEnabler$WiFiDirectBroadcastReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    #setter for: Litectokyo/wiflus/SsbEnabler;->mDirectEnabled:Z
    invoke-static {v5, v9}, Litectokyo/wiflus/SsbEnabler;->access$28(Litectokyo/wiflus/SsbEnabler;Z)V

    .line 762
    iget-object v5, p0, Litectokyo/wiflus/SsbEnabler$WiFiDirectBroadcastReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mUserP2pEnable:Z
    invoke-static {v5}, Litectokyo/wiflus/SsbEnabler;->access$29(Litectokyo/wiflus/SsbEnabler;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 763
    iget-object v5, p0, Litectokyo/wiflus/SsbEnabler$WiFiDirectBroadcastReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    #setter for: Litectokyo/wiflus/SsbEnabler;->mUserP2pEnable:Z
    invoke-static {v5, v8}, Litectokyo/wiflus/SsbEnabler;->access$30(Litectokyo/wiflus/SsbEnabler;Z)V

    .line 764
    iget-object v5, p0, Litectokyo/wiflus/SsbEnabler$WiFiDirectBroadcastReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    #calls: Litectokyo/wiflus/SsbEnabler;->lunchEngine()V
    invoke-static {v5}, Litectokyo/wiflus/SsbEnabler;->access$31(Litectokyo/wiflus/SsbEnabler;)V

    goto :goto_1

    .line 768
    .end local v4           #state:I
    :cond_7
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 769
    const-string v5, "wifi_state"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 771
    .restart local v4       #state:I
    const-string v5, "SsbEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "WifiManager.WIFI_STATE_CHANGED_ACTION - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
