.class Lcom/lge/smartshare/iface/client/SmartShareManagerClient$3;
.super Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;
.source "SmartShareManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/smartshare/iface/client/SmartShareManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;


# direct methods
.method constructor <init>(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$3;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    .line 2321
    invoke-direct {p0}, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onHomecloudConnecting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2331
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onHomecloudConnecting"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2332
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$3;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/16 v1, 0x25b

    new-array v2, v3, [Ljava/lang/Object;

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    .line 2333
    return-void
.end method

.method public onHomecloudCreateAccount()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2356
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onHomecloudCreateAccount"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2357
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$3;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/16 v1, 0x261

    new-array v2, v3, [Ljava/lang/Object;

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    .line 2358
    return-void
.end method

.method public onHomecloudDeleteAccount()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2360
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onHomecloudDeleteAccount"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2361
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$3;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/16 v1, 0x262

    new-array v2, v3, [Ljava/lang/Object;

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    .line 2362
    return-void
.end method

.method public onHomecloudDisconnected(I)V
    .locals 5
    .parameter "reason"

    .prologue
    const/4 v4, 0x0

    .line 2344
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onHomecloudDisconnected"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2345
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$3;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/16 v1, 0x25e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    .line 2346
    return-void
.end method

.method public onHomecloudDisconnecting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2340
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onHomecloudDisconnecting"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2341
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$3;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/16 v1, 0x25d

    new-array v2, v3, [Ljava/lang/Object;

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    .line 2342
    return-void
.end method

.method public onHomecloudRAServerAdded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "id"
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 2323
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onHomecloudRAServerAdded id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2324
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$3;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/16 v1, 0x259

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    .line 2325
    return-void
.end method

.method public onHomecloudRAServerConnected(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/4 v3, 0x0

    .line 2336
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onHomecloudConnected"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2337
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$3;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/16 v1, 0x25c

    new-array v2, v3, [Ljava/lang/Object;

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    .line 2338
    return-void
.end method

.method public onHomecloudRAServerRemoved(Ljava/lang/String;)V
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 2327
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onHomecloudRAServerRemoved id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2328
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$3;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/16 v1, 0x25a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    .line 2329
    return-void
.end method

.method public onHomecloudShowInfoChanged([Ljava/lang/String;)V
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 2348
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onHomecloudShowInfoChanged"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2349
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$3;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/16 v1, 0x25f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    .line 2350
    return-void
.end method

.method public onHomecloudUseMobileNetworkChanged(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v4, 0x0

    .line 2352
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onHomecloudUseMobileNetworkChanged"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2353
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$3;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/16 v1, 0x260

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    .line 2354
    return-void
.end method
