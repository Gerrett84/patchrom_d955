.class Litectokyo/wiflus/SsbEnabler$4;
.super Ljava/lang/Object;
.source "SsbEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Litectokyo/wiflus/SsbEnabler;->saveNetworkState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Litectokyo/wiflus/SsbEnabler;


# direct methods
.method constructor <init>(Litectokyo/wiflus/SsbEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Litectokyo/wiflus/SsbEnabler$4;->this$0:Litectokyo/wiflus/SsbEnabler;

    .line 620
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 624
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$4;->this$0:Litectokyo/wiflus/SsbEnabler;

    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler$4;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Litectokyo/wiflus/SsbEnabler;->access$34(Litectokyo/wiflus/SsbEnabler;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Litectokyo/wiflus/SsbEnabler$4;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Litectokyo/wiflus/SsbEnabler;->access$4(Litectokyo/wiflus/SsbEnabler;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Litectokyo/wiflus/SsbEnabler$4;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;
    invoke-static {v5}, Litectokyo/wiflus/SsbEnabler;->access$4(Litectokyo/wiflus/SsbEnabler;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    #setter for: Litectokyo/wiflus/SsbEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v2, v3}, Litectokyo/wiflus/SsbEnabler;->access$35(Litectokyo/wiflus/SsbEnabler;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 626
    :try_start_0
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$4;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v2}, Litectokyo/wiflus/SsbEnabler;->access$34(Litectokyo/wiflus/SsbEnabler;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "enableP2p"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 627
    .local v1, method:Ljava/lang/reflect/Method;
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$4;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v2}, Litectokyo/wiflus/SsbEnabler;->access$34(Litectokyo/wiflus/SsbEnabler;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Litectokyo/wiflus/SsbEnabler$4;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v5}, Litectokyo/wiflus/SsbEnabler;->access$36(Litectokyo/wiflus/SsbEnabler;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$4;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Litectokyo/wiflus/SsbEnabler;->access$37(Litectokyo/wiflus/SsbEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0
.end method
