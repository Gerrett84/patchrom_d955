.class Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;
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
    .line 183
    iput-object p1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 186
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 189
    iget-object v5, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    const-string v6, "wifi_p2p_state"

    invoke-virtual {p2, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_1

    :goto_0
    #setter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z
    invoke-static {v5, v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$002(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 191
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->handleP2pStateChanged()V
    invoke-static {v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)V

    .line 248
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v4

    .line 189
    goto :goto_0

    .line 192
    :cond_2
    const-string v5, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 193
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 194
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v4}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 197
    invoke-static {}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v4}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    goto :goto_1

    .line 200
    :cond_3
    const-string v5, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 201
    iget-object v5, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v5}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 202
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 204
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    iget-object v5, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v5}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 205
    iget-object v5, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v5}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v6}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 207
    :cond_4
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 208
    const-string v4, "WifiP2pSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " GROUP Connected isGroup == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$500()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$500()Z

    move-result v4

    if-nez v4, :cond_5

    .line 211
    iget-object v4, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v4}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$600(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v4}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$600(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 212
    invoke-static {v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$502(Z)Z

    .line 225
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 226
    const-string v3, "WifiP2pSettings"

    const-string v4, "WIFI_P2P_PEERS_CHANGED_ACTION requestGroupInfo after connection"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v4}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    goto/16 :goto_1

    .line 218
    :cond_6
    iget-object v5, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->startSearch()V
    invoke-static {v5}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$700(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)V

    .line 219
    const-string v5, "WifiP2pSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GROUP DisConnected isGroup == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$500()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {v4}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$502(Z)Z

    .line 221
    iget-object v4, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->updateMenuGroupOwner(Z)V
    invoke-static {v4, v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;Z)V

    .line 222
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/preference/Preference;

    move-result-object v3

    const v4, 0x7f0816ec

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 229
    .end local v2           #networkInfo:Landroid/net/NetworkInfo;
    :cond_7
    const-string v5, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 230
    iget-object v4, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    const-string v3, "wifiP2pDevice"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    #setter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v4, v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$1002(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 232
    const-string v3, "WifiP2pSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update device info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v5}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$1000(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->updateDevicePref()V
    invoke-static {v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)V

    goto/16 :goto_1

    .line 234
    :cond_8
    const-string v5, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 235
    const-string v5, "discoveryState"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 237
    .local v1, discoveryState:I
    const-string v5, "WifiP2pSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discovery state changed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    if-ne v1, v8, :cond_9

    .line 239
    iget-object v4, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->updateSearchMenu(Z)V
    invoke-static {v4, v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$1200(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;Z)V

    goto/16 :goto_1

    .line 241
    :cond_9
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->updateSearchMenu(Z)V
    invoke-static {v3, v4}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$1200(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;Z)V

    goto/16 :goto_1

    .line 243
    .end local v1           #discoveryState:I
    :cond_a
    const-string v3, "android.net.wifi.p2p.PERSISTENT_GROUPS_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 245
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v4}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPersistentGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;)V

    goto/16 :goto_1
.end method
