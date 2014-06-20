.class Litectokyo/wiflus/SsbEnabler$11;
.super Ljava/lang/Object;
.source "SsbEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Litectokyo/wiflus/SsbEnabler;->showDialogs(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Litectokyo/wiflus/SsbEnabler;

.field private final synthetic val$titleR:I


# direct methods
.method constructor <init>(Litectokyo/wiflus/SsbEnabler;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Litectokyo/wiflus/SsbEnabler$11;->this$0:Litectokyo/wiflus/SsbEnabler;

    iput p2, p0, Litectokyo/wiflus/SsbEnabler$11;->val$titleR:I

    .line 948
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 953
    iget v1, p0, Litectokyo/wiflus/SsbEnabler$11;->val$titleR:I

    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$11;->this$0:Litectokyo/wiflus/SsbEnabler;

    const-string v3, "wifi"

    #calls: Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I
    invoke-static {v2, v3}, Litectokyo/wiflus/SsbEnabler;->access$38(Litectokyo/wiflus/SsbEnabler;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 954
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$11;->this$0:Litectokyo/wiflus/SsbEnabler;

    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$11;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Litectokyo/wiflus/SsbEnabler;->access$37(Litectokyo/wiflus/SsbEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    #setter for: Litectokyo/wiflus/SsbEnabler;->mWiFiConfigs:Ljava/util/List;
    invoke-static {v1, v2}, Litectokyo/wiflus/SsbEnabler;->access$39(Litectokyo/wiflus/SsbEnabler;Ljava/util/List;)V

    .line 955
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$11;->this$0:Litectokyo/wiflus/SsbEnabler;

    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$11;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Litectokyo/wiflus/SsbEnabler;->access$37(Litectokyo/wiflus/SsbEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    #setter for: Litectokyo/wiflus/SsbEnabler;->mCurWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1, v2}, Litectokyo/wiflus/SsbEnabler;->access$40(Litectokyo/wiflus/SsbEnabler;Landroid/net/wifi/WifiInfo;)V

    .line 956
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$11;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Litectokyo/wiflus/SsbEnabler;->access$37(Litectokyo/wiflus/SsbEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    move-result v0

    .line 957
    .local v0, flag:Z
    const-string v1, "SsbEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "disconnect "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    .end local v0           #flag:Z
    :goto_0
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$11;->this$0:Litectokyo/wiflus/SsbEnabler;

    #calls: Litectokyo/wiflus/SsbEnabler;->saveNetworkState()V
    invoke-static {v1}, Litectokyo/wiflus/SsbEnabler;->access$41(Litectokyo/wiflus/SsbEnabler;)V

    .line 964
    return-void

    .line 959
    :cond_0
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$11;->this$0:Litectokyo/wiflus/SsbEnabler;

    const-string v2, "wifi_direct"

    #calls: Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I
    invoke-static {v1, v2}, Litectokyo/wiflus/SsbEnabler;->access$38(Litectokyo/wiflus/SsbEnabler;Ljava/lang/String;)I

    goto :goto_0
.end method
