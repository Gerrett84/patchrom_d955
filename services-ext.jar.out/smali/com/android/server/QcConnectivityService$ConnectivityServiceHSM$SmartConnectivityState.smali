.class final Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;
.super Lcom/android/internal/util/State;
.source "QcConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmartConnectivityState"
.end annotation


# instance fields
.field private avoidUnsuitableWifi:Z

.field final synthetic this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;


# direct methods
.method public constructor <init>(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)V
    .locals 1
    .parameter

    .prologue
    .line 5227
    iput-object p1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 5228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->avoidUnsuitableWifi:Z

    .line 5229
    return-void
.end method

.method private handleCaptivePortalTrackerCheck(Landroid/net/NetworkInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 5262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Captive portal check "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$300(Ljava/lang/String;)V

    .line 5263
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 5264
    .local v1, type:I
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    aget-object v0, v2, v1

    .line 5265
    .local v0, thisNet:Landroid/net/NetworkStateTracker;
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5266
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$800(Lcom/android/server/QcConnectivityService;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$800(Lcom/android/server/QcConnectivityService;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 5267
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #calls: Lcom/android/server/QcConnectivityService;->isNewNetTypePreferredOverCurrentNetType(I)Z
    invoke-static {v2, v1}, Lcom/android/server/QcConnectivityService;->access$5700(Lcom/android/server/QcConnectivityService;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Captive check on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$300(Ljava/lang/String;)V

    .line 5269
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mCaptivePortalTracker:Landroid/net/CaptivePortalTracker;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$5800(Lcom/android/server/QcConnectivityService;)Landroid/net/CaptivePortalTracker;

    move-result-object v2

    new-instance v3, Landroid/net/NetworkInfo;

    invoke-direct {v3, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v2, v3}, Landroid/net/CaptivePortalTracker;->detectCaptivePortal(Landroid/net/NetworkInfo;)V

    .line 5277
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->captivePortalCheckComplete()V

    .line 5278
    return-void

    .line 5271
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Captive portal check skipped on low priority net "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$300(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isNetworkSimultaneitySupported(Landroid/net/NetworkInfo;)Z
    .locals 4
    .parameter "info"

    .prologue
    .line 5250
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 5251
    .local v1, type:I
    const/4 v0, 0x0

    .line 5252
    .local v0, ret:Z
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5253
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$5600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->add(I)Z

    .line 5254
    iget-boolean v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->avoidUnsuitableWifi:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$5600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 5255
    const/4 v0, 0x1

    .line 5258
    :cond_0
    return v0
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectivityServiceHSM entering "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$5200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$300(Ljava/lang/String;)V

    .line 5235
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mRouteAttributes:[Lcom/android/server/QcConnectivityService$RouteAttributes;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$5300(Lcom/android/server/QcConnectivityService;)[Lcom/android/server/QcConnectivityService$RouteAttributes;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/android/server/QcConnectivityService$RouteAttributes;->setMetric(I)V

    .line 5236
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mRouteAttributes:[Lcom/android/server/QcConnectivityService$RouteAttributes;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$5300(Lcom/android/server/QcConnectivityService;)[Lcom/android/server/QcConnectivityService$RouteAttributes;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Lcom/android/server/QcConnectivityService$RouteAttributes;->setMetric(I)V

    .line 5238
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #setter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I
    invoke-static {v0, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$5402(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;I)I

    .line 5239
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 5243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectivityServiceHSM leaving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$5500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$300(Ljava/lang/String;)V

    .line 5244
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$5900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".processMessage what="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$300(Ljava/lang/String;)V

    .line 5283
    const/4 v0, 0x0

    .line 5284
    .local v0, info:Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 5285
    .local v1, ret:Z
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 5333
    const/4 v1, 0x0

    .line 5335
    :cond_0
    :goto_0
    return v1

    .line 5288
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #info:Landroid/net/NetworkInfo;
    check-cast v0, Landroid/net/NetworkInfo;

    .line 5289
    .restart local v0       #info:Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$5600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->add(I)Z

    .line 5290
    invoke-direct {p0, v0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->isNetworkSimultaneitySupported(Landroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5291
    const-string v2, "Dual Connectivity Mode detected"

    #calls: Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$300(Ljava/lang/String;)V

    .line 5292
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    .line 5293
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$800(Lcom/android/server/QcConnectivityService;)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 5294
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mWifiDefaultState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;
    invoke-static {v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;

    move-result-object v3

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V

    .line 5298
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 5296
    :cond_1
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mMobileDefaultState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;
    invoke-static {v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;

    move-result-object v3

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 5304
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #info:Landroid/net/NetworkInfo;
    check-cast v0, Landroid/net/NetworkInfo;

    .line 5305
    .restart local v0       #info:Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$5600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->remove(I)Z

    goto :goto_0

    .line 5310
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #info:Landroid/net/NetworkInfo;
    check-cast v0, Landroid/net/NetworkInfo;

    .line 5311
    .restart local v0       #info:Landroid/net/NetworkInfo;
    invoke-direct {p0, v0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->handleCaptivePortalTrackerCheck(Landroid/net/NetworkInfo;)V

    .line 5312
    const/4 v1, 0x1

    .line 5313
    goto :goto_0

    .line 5317
    :sswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->avoidUnsuitableWifi:Z

    .line 5318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dual network support "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->avoidUnsuitableWifi:Z

    if-eqz v2, :cond_4

    const-string v2, "enabled"

    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$300(Ljava/lang/String;)V

    .line 5319
    iget-boolean v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->avoidUnsuitableWifi:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$800(Lcom/android/server/QcConnectivityService;)I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 5320
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->reconnect()Z

    .line 5322
    :cond_2
    const/4 v1, 0x1

    .line 5323
    goto/16 :goto_0

    :cond_3
    move v2, v4

    .line 5317
    goto :goto_2

    .line 5318
    :cond_4
    const-string v2, "disabled"

    goto :goto_3

    .line 5327
    :sswitch_4
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$800(Lcom/android/server/QcConnectivityService;)I

    move-result v2

    if-nez v2, :cond_0

    .line 5328
    const-string v2, "NetTransition wakelock is not needed"

    #calls: Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$300(Ljava/lang/String;)V

    .line 5329
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 5285
    :sswitch_data_0
    .sparse-switch
        0x1f8 -> :sswitch_3
        0x1389 -> :sswitch_0
        0x138a -> :sswitch_1
        0x1392 -> :sswitch_2
        0x1393 -> :sswitch_4
    .end sparse-switch
.end method
