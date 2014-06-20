.class Litectokyo/wiflus/service/SmartShareSwitchClient$3;
.super Litectokyo/wiflus/service/IRemoteCallback$Stub;
.source "SmartShareSwitchClient.java"


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
    iput-object p1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    .line 770
    invoke-direct {p0}, Litectokyo/wiflus/service/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAdded(Litectokyo/wiflus/service/bean/DeviceInfoBean;)V
    .locals 4
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 844
    const-string v1, "SSBEnabler"

    const-string v2, "SmartShareSwitchClient.onDeviceAdded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    new-instance v0, Litectokyo/wiflus/service/ClientEvent;

    const/16 v1, 0x83

    invoke-direct {v0, v1}, Litectokyo/wiflus/service/ClientEvent;-><init>(I)V

    .line 846
    .local v0, event:Litectokyo/wiflus/service/ClientEvent;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Litectokyo/wiflus/service/ClientEvent;->put(ILjava/lang/Object;)Z

    .line 847
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 848
    return-void
.end method

.method public onDeviceChanged(Litectokyo/wiflus/service/bean/DeviceInfoBean;)V
    .locals 4
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 860
    const-string v1, "SSBEnabler"

    const-string v2, "SmartShareSwitchClient.onDeviceChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    new-instance v0, Litectokyo/wiflus/service/ClientEvent;

    const/16 v1, 0x85

    invoke-direct {v0, v1}, Litectokyo/wiflus/service/ClientEvent;-><init>(I)V

    .line 862
    .local v0, event:Litectokyo/wiflus/service/ClientEvent;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Litectokyo/wiflus/service/ClientEvent;->put(ILjava/lang/Object;)Z

    .line 863
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 864
    return-void
.end method

.method public onDeviceError(Litectokyo/wiflus/service/bean/DeviceInfoBean;I)V
    .locals 4
    .parameter "device"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 868
    const-string v1, "SSBEnabler"

    const-string v2, "SmartShareSwitchClient.onDeviceError"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    new-instance v0, Litectokyo/wiflus/service/ClientEvent;

    const/16 v1, 0x86

    invoke-direct {v0, v1}, Litectokyo/wiflus/service/ClientEvent;-><init>(I)V

    .line 870
    .local v0, event:Litectokyo/wiflus/service/ClientEvent;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Litectokyo/wiflus/service/ClientEvent;->put(ILjava/lang/Object;)Z

    .line 871
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Litectokyo/wiflus/service/ClientEvent;->put(II)Z

    .line 872
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 873
    return-void
.end method

.method public onDeviceRemoved(Litectokyo/wiflus/service/bean/DeviceInfoBean;)V
    .locals 4
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 852
    const-string v1, "SSBEnabler"

    const-string v2, "SmartShareSwitchClient.onDeviceRemoved"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    new-instance v0, Litectokyo/wiflus/service/ClientEvent;

    const/16 v1, 0x84

    invoke-direct {v0, v1}, Litectokyo/wiflus/service/ClientEvent;-><init>(I)V

    .line 854
    .local v0, event:Litectokyo/wiflus/service/ClientEvent;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Litectokyo/wiflus/service/ClientEvent;->put(ILjava/lang/Object;)Z

    .line 855
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 856
    return-void
.end method

.method public onEngineStateChanged(I)V
    .locals 5
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 812
    const-string v1, "SSBEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SmartShareSwitchClient.onEngineStateChanged state="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    new-instance v0, Litectokyo/wiflus/service/ClientEvent;

    const/16 v1, 0x6e

    invoke-direct {v0, v1}, Litectokyo/wiflus/service/ClientEvent;-><init>(I)V

    .line 814
    .local v0, event:Litectokyo/wiflus/service/ClientEvent;
    invoke-virtual {v0, v4, p1}, Litectokyo/wiflus/service/ClientEvent;->put(II)Z

    .line 815
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 816
    return-void
.end method

.method public onEvent(Ljava/util/Map;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 925
    const-string v0, "SSBEnabler"

    const-string v1, "SmartShareSwitchClient.onEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 927
    const-string v1, "SSBEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SmartShareSwitchClient.onEvent id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    packed-switch v0, :pswitch_data_0

    .line 960
    :goto_0
    return-void

    .line 931
    :pswitch_0
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Litectokyo/wiflus/service/bean/ClientInfoBean;

    .line 932
    new-instance v1, Litectokyo/wiflus/service/ClientEvent;

    const/16 v2, 0x8c

    invoke-direct {v1, v2}, Litectokyo/wiflus/service/ClientEvent;-><init>(I)V

    .line 933
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Litectokyo/wiflus/service/ClientEvent;->put(ILjava/lang/Object;)Z

    .line 934
    iget-object v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 939
    :pswitch_1
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 940
    new-instance v1, Litectokyo/wiflus/service/ClientEvent;

    const/16 v2, 0x8f

    invoke-direct {v1, v2}, Litectokyo/wiflus/service/ClientEvent;-><init>(I)V

    .line 941
    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Litectokyo/wiflus/service/ClientEvent;->put(II)Z

    .line 942
    iget-object v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 947
    :pswitch_2
    new-instance v0, Litectokyo/wiflus/service/ClientEvent;

    const/16 v1, 0x90

    invoke-direct {v0, v1}, Litectokyo/wiflus/service/ClientEvent;-><init>(I)V

    .line 948
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 953
    :pswitch_3
    new-instance v0, Litectokyo/wiflus/service/ClientEvent;

    const/16 v1, 0x91

    invoke-direct {v0, v1}, Litectokyo/wiflus/service/ClientEvent;-><init>(I)V

    .line 954
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 928
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onFileBegin(Ljava/util/List;)V
    .locals 4
    .parameter "list"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 893
    const-string v1, "SSBEnabler"

    const-string v2, "SmartShareSwitchClient.onFileBegin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    new-instance v0, Litectokyo/wiflus/service/ClientEvent;

    const/16 v1, 0x97

    invoke-direct {v0, v1}, Litectokyo/wiflus/service/ClientEvent;-><init>(I)V

    .line 895
    .local v0, event:Litectokyo/wiflus/service/ClientEvent;
    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Litectokyo/wiflus/service/ClientEvent;->put(ILjava/lang/Object;)Z

    .line 896
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 897
    return-void
.end method

.method public onFileError(Ljava/util/List;)V
    .locals 4
    .parameter "list"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 917
    const-string v1, "SSBEnabler"

    const-string v2, "SmartShareSwitchClient.onFileError"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    new-instance v0, Litectokyo/wiflus/service/ClientEvent;

    const/16 v1, 0x9a

    invoke-direct {v0, v1}, Litectokyo/wiflus/service/ClientEvent;-><init>(I)V

    .line 919
    .local v0, event:Litectokyo/wiflus/service/ClientEvent;
    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Litectokyo/wiflus/service/ClientEvent;->put(ILjava/lang/Object;)Z

    .line 920
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 921
    return-void
.end method

.method public onFileFinish(Ljava/util/List;)V
    .locals 4
    .parameter "list"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 909
    const-string v1, "SSBEnabler"

    const-string v2, "SmartShareSwitchClient.onFileFinish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    new-instance v0, Litectokyo/wiflus/service/ClientEvent;

    const/16 v1, 0x99

    invoke-direct {v0, v1}, Litectokyo/wiflus/service/ClientEvent;-><init>(I)V

    .line 911
    .local v0, event:Litectokyo/wiflus/service/ClientEvent;
    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Litectokyo/wiflus/service/ClientEvent;->put(ILjava/lang/Object;)Z

    .line 912
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 913
    return-void
.end method

.method public onHostAdded(Litectokyo/wiflus/service/bean/HostInfoBean;)V
    .locals 4
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 820
    const-string v1, "SSBEnabler"

    const-string v2, "SmartShareSwitchClient.onHostAdded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    new-instance v0, Litectokyo/wiflus/service/ClientEvent;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Litectokyo/wiflus/service/ClientEvent;-><init>(I)V

    .line 822
    .local v0, event:Litectokyo/wiflus/service/ClientEvent;
    const/4 v1, 0x3

    invoke-static {p1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->convertToHostBean(Litectokyo/wiflus/service/bean/HostInfoBean;)Litectokyo/wiflus/service/bean/HostBean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Litectokyo/wiflus/service/ClientEvent;->put(ILjava/lang/Object;)Z

    .line 823
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 824
    return-void
.end method

.method public onHostChanged(Litectokyo/wiflus/service/bean/HostInfoBean;I)V
    .locals 4
    .parameter "param"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 836
    const-string v1, "SSBEnabler"

    const-string v2, "SmartShareSwitchClient.onHostChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    new-instance v0, Litectokyo/wiflus/service/ClientEvent;

    const/16 v1, 0x7a

    invoke-direct {v0, v1}, Litectokyo/wiflus/service/ClientEvent;-><init>(I)V

    .line 838
    .local v0, event:Litectokyo/wiflus/service/ClientEvent;
    const/4 v1, 0x3

    invoke-static {p1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->convertToHostBean(Litectokyo/wiflus/service/bean/HostInfoBean;)Litectokyo/wiflus/service/bean/HostBean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Litectokyo/wiflus/service/ClientEvent;->put(ILjava/lang/Object;)Z

    .line 839
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 840
    return-void
.end method

.method public onHostRemoved(Litectokyo/wiflus/service/bean/HostInfoBean;)V
    .locals 4
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 828
    const-string v1, "SSBEnabler"

    const-string v2, "SmartShareSwitchClient.onHostRemoved"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    new-instance v0, Litectokyo/wiflus/service/ClientEvent;

    const/16 v1, 0x79

    invoke-direct {v0, v1}, Litectokyo/wiflus/service/ClientEvent;-><init>(I)V

    .line 830
    .local v0, event:Litectokyo/wiflus/service/ClientEvent;
    const/4 v1, 0x3

    invoke-static {p1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->convertToHostBean(Litectokyo/wiflus/service/bean/HostInfoBean;)Litectokyo/wiflus/service/bean/HostBean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Litectokyo/wiflus/service/ClientEvent;->put(ILjava/lang/Object;)Z

    .line 831
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 832
    return-void
.end method

.method public onMessageError(Litectokyo/wiflus/service/bean/MessageBean;I)V
    .locals 4
    .parameter "param"
    .parameter "errCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 885
    const-string v1, "SSBEnabler"

    const-string v2, "SmartShareSwitchClient.onMessageError"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    new-instance v0, Litectokyo/wiflus/service/ClientEvent;

    const/16 v1, 0x8e

    invoke-direct {v0, v1}, Litectokyo/wiflus/service/ClientEvent;-><init>(I)V

    .line 887
    .local v0, event:Litectokyo/wiflus/service/ClientEvent;
    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Litectokyo/wiflus/service/ClientEvent;->put(ILjava/lang/Object;)Z

    .line 888
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 889
    return-void
.end method

.method public onMessageReceived(Litectokyo/wiflus/service/bean/MessageBean;)V
    .locals 5
    .parameter "messageBean"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 877
    const-string v1, "SSBEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SmartShareSwitchClient.onMessageReceived msg uid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Litectokyo/wiflus/service/bean/MessageBean;->getDestUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Litectokyo/wiflus/service/bean/MessageBean;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", command="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Litectokyo/wiflus/service/bean/MessageBean;->getCommand()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Litectokyo/wiflus/service/bean/MessageBean;->getData()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    new-instance v0, Litectokyo/wiflus/service/ClientEvent;

    const/16 v1, 0x8d

    invoke-direct {v0, v1}, Litectokyo/wiflus/service/ClientEvent;-><init>(I)V

    .line 879
    .local v0, event:Litectokyo/wiflus/service/ClientEvent;
    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Litectokyo/wiflus/service/ClientEvent;->put(ILjava/lang/Object;)Z

    .line 880
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 881
    return-void
.end method

.method public onNextFile(Litectokyo/wiflus/service/bean/TransferInfoBean;)V
    .locals 4
    .parameter "tib"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 901
    const-string v1, "SSBEnabler"

    const-string v2, "SmartShareSwitchClient.onNextFile"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    new-instance v0, Litectokyo/wiflus/service/ClientEvent;

    const/16 v1, 0x98

    invoke-direct {v0, v1}, Litectokyo/wiflus/service/ClientEvent;-><init>(I)V

    .line 903
    .local v0, event:Litectokyo/wiflus/service/ClientEvent;
    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Litectokyo/wiflus/service/ClientEvent;->put(ILjava/lang/Object;)Z

    .line 904
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 905
    return-void
.end method

.method public onRegistrationCompleted(I)V
    .locals 3
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 802
    const-string v0, "SSBEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SmartShareSwitchClient.onRegistrationCompleted result="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    if-nez p1, :cond_0

    .line 804
    iget-object v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    const/4 v1, 0x0

    #calls: Litectokyo/wiflus/service/SmartShareSwitchClient;->notifyInitialized(I)V
    invoke-static {v0, v1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$5(Litectokyo/wiflus/service/SmartShareSwitchClient;I)V

    .line 808
    :goto_0
    return-void

    .line 806
    :cond_0
    iget-object v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    const/4 v1, 0x1

    #calls: Litectokyo/wiflus/service/SmartShareSwitchClient;->notifyInitialized(I)V
    invoke-static {v0, v1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$5(Litectokyo/wiflus/service/SmartShareSwitchClient;I)V

    goto :goto_0
.end method

.method public onSessionCreated()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 773
    const-string v3, "SSBEnabler"

    const-string v4, "SmartShareSwitchClient.onSessionCreated"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 776
    .local v1, extraBuffer:Ljava/lang/StringBuffer;
    iget-object v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    iget-object v3, v3, Litectokyo/wiflus/service/SmartShareSwitchClient;->mExtra:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 777
    iget-object v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    iget-object v3, v3, Litectokyo/wiflus/service/SmartShareSwitchClient;->mExtra:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 778
    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 780
    :cond_0
    const-string v3, "agent:switch"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 781
    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 782
    const-string v3, "pid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 783
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 784
    iget-object v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mRemoteWiFlusService:Litectokyo/wiflus/service/IRemoteWiFlusService;
    invoke-static {v3}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$4(Litectokyo/wiflus/service/SmartShareSwitchClient;)Litectokyo/wiflus/service/IRemoteWiFlusService;

    move-result-object v3

    iget-object v4, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    iget-wide v4, v4, Litectokyo/wiflus/service/SmartShareSwitchClient;->mSessionId:J

    iget-object v6, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    iget-object v6, v6, Litectokyo/wiflus/service/SmartShareSwitchClient;->mInitClientInfo:Litectokyo/wiflus/service/bean/ClientInfoBean;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v4, v5, v6, v7}, Litectokyo/wiflus/service/IRemoteWiFlusService;->registerClient(JLitectokyo/wiflus/service/bean/ClientInfoBean;Ljava/lang/String;)Z

    move-result v2

    .line 785
    .local v2, result:Z
    if-nez v2, :cond_1

    .line 787
    :try_start_0
    iget-object v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    iget-object v3, v3, Litectokyo/wiflus/service/SmartShareSwitchClient;->mContext:Landroid/content/Context;

    iget-object v4, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    iget-object v4, v4, Litectokyo/wiflus/service/SmartShareSwitchClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    :goto_0
    iget-object v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$3;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    const/4 v4, 0x1

    #calls: Litectokyo/wiflus/service/SmartShareSwitchClient;->notifyInitialized(I)V
    invoke-static {v3, v4}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$5(Litectokyo/wiflus/service/SmartShareSwitchClient;I)V

    .line 793
    :cond_1
    return-void

    .line 788
    :catch_0
    move-exception v0

    .line 789
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onSessionDestroyed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 797
    const-string v0, "SSBEnabler"

    const-string v1, "SmartShareSwitchClient.onSessionDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    return-void
.end method
