.class public Lcom/android/server/QcConnectivityService$VpnCallback;
.super Lcom/android/server/ConnectivityService$VpnCallback;
.source "QcConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QcConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VpnCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/QcConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/QcConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 6966
    iput-object p1, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$VpnCallback;-><init>(Lcom/android/server/ConnectivityService;)V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroid/net/NetworkInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 6969
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$12700(Lcom/android/server/QcConnectivityService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x72

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6970
    return-void
.end method

.method public override(Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6973
    .local p1, dnsServers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, searchDomains:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 6974
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$VpnCallback;->restore()V

    .line 7029
    :goto_0
    return-void

    .line 6979
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6980
    .local v1, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6983
    .local v0, address:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6984
    :catch_0
    move-exception v7

    goto :goto_1

    .line 6988
    .end local v0           #address:Ljava/lang/String;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 6989
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$VpnCallback;->restore()V

    goto :goto_0

    .line 6994
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6995
    .local v2, buffer:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_3

    .line 6996
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6997
    .local v4, domain:Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 7000
    .end local v4           #domain:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 7003
    .local v5, domains:Ljava/lang/String;
    const/4 v3, 0x0

    .line 7004
    .local v3, changed:Z
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDnsLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/QcConnectivityService;->access$9500(Lcom/android/server/QcConnectivityService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 7005
    :try_start_1
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    const-string v9, "VPN"

    const-string v10, "VPN"

    #calls: Lcom/android/server/QcConnectivityService;->updateDns(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z
    invoke-static {v7, v9, v10, v1, v5}, Lcom/android/server/QcConnectivityService;->access$12800(Lcom/android/server/QcConnectivityService;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v3

    .line 7006
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    const/4 v9, 0x1

    #setter for: Lcom/android/server/QcConnectivityService;->mDnsOverridden:Z
    invoke-static {v7, v9}, Lcom/android/server/QcConnectivityService;->access$9602(Lcom/android/server/QcConnectivityService;Z)Z

    .line 7007
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7008
    if-eqz v3, :cond_4

    .line 7009
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #calls: Lcom/android/server/QcConnectivityService;->bumpDns()V
    invoke-static {v7}, Lcom/android/server/QcConnectivityService;->access$9700(Lcom/android/server/QcConnectivityService;)V

    .line 7013
    :cond_4
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v7, v7, Lcom/android/server/QcConnectivityService;->mLGfeature:Lcom/android/internal/telephony/LGfeature;

    iget-boolean v7, v7, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_CONNECTIVITYSERVICE_VPN_DEF_PROXY_DCM:Z

    if-eqz v7, :cond_5

    .line 7014
    const-string v7, "[jungil]VpnCallback.override: skip clearing defaultproxy when vpn connected"

    #calls: Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/server/QcConnectivityService;->access$300(Ljava/lang/String;)V

    goto :goto_0

    .line 7007
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 7018
    :cond_5
    const-string v7, "[jungil]VpnCallback.override: clear defaultproxy "

    #calls: Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/server/QcConnectivityService;->access$300(Ljava/lang/String;)V

    .line 7019
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDefaultProxyLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/QcConnectivityService;->access$12900(Lcom/android/server/QcConnectivityService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 7020
    :try_start_3
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    const/4 v9, 0x1

    #setter for: Lcom/android/server/QcConnectivityService;->mDefaultProxyDisabled:Z
    invoke-static {v7, v9}, Lcom/android/server/QcConnectivityService;->access$13002(Lcom/android/server/QcConnectivityService;Z)Z

    .line 7021
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;
    invoke-static {v7}, Lcom/android/server/QcConnectivityService;->access$13100(Lcom/android/server/QcConnectivityService;)Landroid/net/ProxyProperties;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 7022
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    const/4 v9, 0x0

    #calls: Lcom/android/server/QcConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V
    invoke-static {v7, v9}, Lcom/android/server/QcConnectivityService;->access$13200(Lcom/android/server/QcConnectivityService;Landroid/net/ProxyProperties;)V

    .line 7024
    :cond_6
    monitor-exit v8

    goto/16 :goto_0

    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7
.end method

.method public restore()V
    .locals 3

    .prologue
    .line 7032
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDnsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$9500(Lcom/android/server/QcConnectivityService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 7033
    :try_start_0
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDnsOverridden:Z
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$9600(Lcom/android/server/QcConnectivityService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7034
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/QcConnectivityService;->mDnsOverridden:Z
    invoke-static {v0, v2}, Lcom/android/server/QcConnectivityService;->access$9602(Lcom/android/server/QcConnectivityService;Z)Z

    .line 7035
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$12700(Lcom/android/server/QcConnectivityService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x6f

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7037
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7038
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDefaultProxyLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$12900(Lcom/android/server/QcConnectivityService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 7039
    :try_start_1
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/QcConnectivityService;->mDefaultProxyDisabled:Z
    invoke-static {v0, v2}, Lcom/android/server/QcConnectivityService;->access$13002(Lcom/android/server/QcConnectivityService;Z)Z

    .line 7040
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$13100(Lcom/android/server/QcConnectivityService;)Landroid/net/ProxyProperties;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7041
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$13100(Lcom/android/server/QcConnectivityService;)Landroid/net/ProxyProperties;

    move-result-object v2

    #calls: Lcom/android/server/QcConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V
    invoke-static {v0, v2}, Lcom/android/server/QcConnectivityService;->access$13200(Lcom/android/server/QcConnectivityService;Landroid/net/ProxyProperties;)V

    .line 7043
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7044
    return-void

    .line 7037
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 7043
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
