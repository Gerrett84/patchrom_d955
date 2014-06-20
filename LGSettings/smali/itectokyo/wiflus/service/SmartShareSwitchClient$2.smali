.class Litectokyo/wiflus/service/SmartShareSwitchClient$2;
.super Ljava/lang/Object;
.source "SmartShareSwitchClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Litectokyo/wiflus/service/SmartShareSwitchClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;


# direct methods
.method constructor <init>(Litectokyo/wiflus/service/SmartShareSwitchClient;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$2;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    .line 701
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v8, 0x0

    .line 704
    const-string v3, "SSBEnabler"

    const-string v4, "SmartShareSwitchClient.onServiceConnected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :try_start_0
    iget-object v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$2;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    invoke-static {p2}, Litectokyo/wiflus/service/IRemoteWiFlusService$Stub;->asInterface(Landroid/os/IBinder;)Litectokyo/wiflus/service/IRemoteWiFlusService;

    move-result-object v4

    #setter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mRemoteWiFlusService:Litectokyo/wiflus/service/IRemoteWiFlusService;
    invoke-static {v3, v4}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$3(Litectokyo/wiflus/service/SmartShareSwitchClient;Litectokyo/wiflus/service/IRemoteWiFlusService;)V

    .line 709
    iget-object v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$2;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mRemoteWiFlusService:Litectokyo/wiflus/service/IRemoteWiFlusService;
    invoke-static {v3}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$4(Litectokyo/wiflus/service/SmartShareSwitchClient;)Litectokyo/wiflus/service/IRemoteWiFlusService;

    move-result-object v3

    invoke-interface {v3}, Litectokyo/wiflus/service/IRemoteWiFlusService;->version()I

    move-result v1

    .line 710
    .local v1, serviceVersion:I
    const-string v3, "SSBEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "serviceVersion = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const/4 v3, 0x1

    if-le v3, v1, :cond_0

    .line 714
    iget-object v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$2;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    const/16 v4, -0x3e8

    #calls: Litectokyo/wiflus/service/SmartShareSwitchClient;->notifyInitialized(I)V
    invoke-static {v3, v4}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$5(Litectokyo/wiflus/service/SmartShareSwitchClient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 716
    :try_start_1
    iget-object v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$2;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    iget-object v3, v3, Litectokyo/wiflus/service/SmartShareSwitchClient;->mContext:Landroid/content/Context;

    iget-object v4, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$2;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    iget-object v4, v4, Litectokyo/wiflus/service/SmartShareSwitchClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 758
    .end local v1           #serviceVersion:I
    :goto_0
    return-void

    .line 717
    .restart local v1       #serviceVersion:I
    :catch_0
    move-exception v0

    .line 718
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 753
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #serviceVersion:I
    :catch_1
    move-exception v0

    .line 754
    .local v0, e:Landroid/os/RemoteException;
    iget-object v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$2;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #setter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->bIsBinded:Z
    invoke-static {v3, v8}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$12(Litectokyo/wiflus/service/SmartShareSwitchClient;Z)V

    .line 755
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 723
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #serviceVersion:I
    :cond_0
    :try_start_3
    iget-object v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$2;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->bClosed:Z
    invoke-static {v3}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$6(Litectokyo/wiflus/service/SmartShareSwitchClient;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v3

    if-eqz v3, :cond_2

    .line 725
    :try_start_4
    iget-object v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$2;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    iget-object v3, v3, Litectokyo/wiflus/service/SmartShareSwitchClient;->mContext:Landroid/content/Context;

    iget-object v4, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$2;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    iget-object v4, v4, Litectokyo/wiflus/service/SmartShareSwitchClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 730
    :goto_1
    :try_start_5
    iget-object v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$2;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #calls: Litectokyo/wiflus/service/SmartShareSwitchClient;->getUserWifiEnable()Z
    invoke-static {v3}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$7(Litectokyo/wiflus/service/SmartShareSwitchClient;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 731
    iget-object v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$2;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    const/4 v4, 0x0

    #calls: Litectokyo/wiflus/service/SmartShareSwitchClient;->setUserWifiEnable(Z)Z
    invoke-static {v3, v4}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$8(Litectokyo/wiflus/service/SmartShareSwitchClient;Z)Z

    .line 732
    iget-object v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$2;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    iget-object v3, v3, Litectokyo/wiflus/service/SmartShareSwitchClient;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 733
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 735
    .end local v2           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_1
    iget-object v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$2;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    iget-object v3, v3, Litectokyo/wiflus/service/SmartShareSwitchClient;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "wiflus.intent.action.CONNECT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    .line 726
    :catch_2
    move-exception v0

    .line 727
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 740
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$2;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #calls: Litectokyo/wiflus/service/SmartShareSwitchClient;->checkWFDProcess()Z
    invoke-static {v3}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$9(Litectokyo/wiflus/service/SmartShareSwitchClient;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v3

    if-eqz v3, :cond_3

    .line 742
    :try_start_6
    iget-object v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$2;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    iget-object v3, v3, Litectokyo/wiflus/service/SmartShareSwitchClient;->mContext:Landroid/content/Context;

    iget-object v4, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$2;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    iget-object v4, v4, Litectokyo/wiflus/service/SmartShareSwitchClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 746
    :goto_2
    :try_start_7
    iget-object v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$2;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    iget-object v3, v3, Litectokyo/wiflus/service/SmartShareSwitchClient;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "wiflus.intent.action.CONNECT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 747
    iget-object v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$2;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #calls: Litectokyo/wiflus/service/SmartShareSwitchClient;->showDialog_WFD_RUNNING()V
    invoke-static {v3}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$10(Litectokyo/wiflus/service/SmartShareSwitchClient;)V

    goto :goto_0

    .line 743
    :catch_3
    move-exception v0

    .line 744
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 752
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$2;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    iget-object v4, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$2;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mRemoteWiFlusService:Litectokyo/wiflus/service/IRemoteWiFlusService;
    invoke-static {v4}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$4(Litectokyo/wiflus/service/SmartShareSwitchClient;)Litectokyo/wiflus/service/IRemoteWiFlusService;

    move-result-object v4

    iget-object v5, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$2;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    iget-wide v5, v5, Litectokyo/wiflus/service/SmartShareSwitchClient;->mSessionId:J

    iget-object v7, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$2;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mCallback:Litectokyo/wiflus/service/IRemoteCallback;
    invoke-static {v7}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$11(Litectokyo/wiflus/service/SmartShareSwitchClient;)Litectokyo/wiflus/service/IRemoteCallback;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Litectokyo/wiflus/service/IRemoteWiFlusService;->registerCallback(JLitectokyo/wiflus/service/IRemoteCallback;)Z

    move-result v4

    #setter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->bIsBinded:Z
    invoke-static {v3, v4}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$12(Litectokyo/wiflus/service/SmartShareSwitchClient;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 762
    iget-object v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$2;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    const/4 v1, 0x0

    #setter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mRemoteWiFlusService:Litectokyo/wiflus/service/IRemoteWiFlusService;
    invoke-static {v0, v1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$3(Litectokyo/wiflus/service/SmartShareSwitchClient;Litectokyo/wiflus/service/IRemoteWiFlusService;)V

    .line 763
    iget-object v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$2;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #setter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->bIsBinded:Z
    invoke-static {v0, v2}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$12(Litectokyo/wiflus/service/SmartShareSwitchClient;Z)V

    .line 764
    const-string v0, "SSBEnabler"

    const-string v1, "SmartShareSwitchClient.onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$2;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #calls: Litectokyo/wiflus/service/SmartShareSwitchClient;->notifyTerminated(I)V
    invoke-static {v0, v2}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$13(Litectokyo/wiflus/service/SmartShareSwitchClient;I)V

    .line 766
    return-void
.end method
