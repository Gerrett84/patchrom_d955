.class Lcom/lge/smartshare/iface/client/SmartShareManagerClient$2;
.super Ljava/lang/Object;
.source "SmartShareManagerClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    iput-object p1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$2;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    .line 961
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9
    .parameter "className"
    .parameter "service"

    .prologue
    const/16 v8, 0x12d

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 963
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onServiceConnected"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 965
    iget-object v3, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$2;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    invoke-static {p2}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/smartshare/iface/aidl/ISmartShareManager;

    move-result-object v4

    #setter for: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->smartShareManager:Lcom/lge/smartshare/iface/aidl/ISmartShareManager;
    invoke-static {v3, v4}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$4(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;Lcom/lge/smartshare/iface/aidl/ISmartShareManager;)V

    .line 968
    :try_start_0
    iget-object v3, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$2;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    #getter for: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->smartShareManager:Lcom/lge/smartshare/iface/aidl/ISmartShareManager;
    invoke-static {v3}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$5(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;)Lcom/lge/smartshare/iface/aidl/ISmartShareManager;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$2;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    #getter for: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->packageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$6(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$2;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    #getter for: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->smartShareManagerCallback:Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback;
    invoke-static {v5}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$7(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;)Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager;->register(Ljava/lang/String;Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    :goto_0
    iget-object v3, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$2;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->getPlayerId()I
    invoke-static {v3}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$8(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;)I

    move-result v1

    .line 974
    .local v1, playerId:I
    if-gez v1, :cond_0

    .line 975
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "invalid state: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$2;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    #getter for: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->packageName:Ljava/lang/String;
    invoke-static {v5}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$6(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/lge/smartshare/iface/client/SmartShareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 976
    iget-object v3, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$2;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v3, v8, v4}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    .line 977
    iget-object v3, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$2;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    iget-object v4, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$2;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    #getter for: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$9(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;)Landroid/content/Context;

    move-result-object v4

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->terminate(Landroid/content/Context;)Z
    invoke-static {v3, v4}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$10(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;Landroid/content/Context;)Z

    .line 1004
    :goto_1
    return-void

    .line 969
    .end local v1           #playerId:I
    :catch_0
    move-exception v0

    .line 970
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 981
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #playerId:I
    :cond_0
    const/4 v2, -0x1

    .line 983
    .local v2, versionCode:I
    :try_start_1
    iget-object v3, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$2;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    #getter for: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->smartShareManager:Lcom/lge/smartshare/iface/aidl/ISmartShareManager;
    invoke-static {v3}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$5(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;)Lcom/lge/smartshare/iface/aidl/ISmartShareManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager;->getManagerVersionCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 988
    :goto_2
    const v3, 0x1a5f2

    if-eq v3, v2, :cond_1

    .line 989
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onServiceConnected unmatched version client: 108018 ,manager: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 990
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    .line 989
    invoke-static {v3, v4, v5}, Lcom/lge/smartshare/iface/client/SmartShareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 992
    const v3, 0x1a5e0

    if-ge v2, v3, :cond_2

    .line 994
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "version matching fail (using not supported api)"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/lge/smartshare/iface/client/SmartShareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 995
    iget-object v3, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$2;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v3, v8, v4}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 984
    :catch_1
    move-exception v0

    .line 985
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 999
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onServiceConnected matched version client: 108018 ,manager: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    .line 999
    invoke-static {v3, v4, v5}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1003
    :cond_2
    iget-object v3, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$2;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v3, v8, v4}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6
    .parameter "className"

    .prologue
    const/16 v5, 0x12e

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1007
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1009
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$2;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/4 v1, 0x0

    #setter for: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->smartShareManager:Lcom/lge/smartshare/iface/aidl/ISmartShareManager;
    invoke-static {v0, v1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$4(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;Lcom/lge/smartshare/iface/aidl/ISmartShareManager;)V

    .line 1011
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$2;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    #getter for: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->isBind:Z
    invoke-static {v0}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$11(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected exceptional case"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1013
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$2;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v5, v1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    .line 1017
    :goto_0
    return-void

    .line 1015
    :cond_0
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$2;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v5, v1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    goto :goto_0
.end method
