.class Lcom/lge/smartshare/iface/client/SmartShareManagerClient$1;
.super Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub;
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
    iput-object p1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$1;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    .line 786
    invoke-direct {p0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBadConnection()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 905
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBadConnection"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 907
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$1;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/16 v1, 0x6b

    new-array v2, v3, [Ljava/lang/Object;

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    .line 908
    return-void
.end method

.method public onCheckSupprotContent(Z)V
    .locals 4
    .parameter "isSupported"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 788
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCheckSupprotContent isSupported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 790
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$1;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v3, v1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    .line 791
    return-void
.end method

.method public onCompletion()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 899
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCompletion"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 901
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$1;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/16 v1, 0x6a

    new-array v2, v3, [Ljava/lang/Object;

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    .line 902
    return-void
.end method

.method public onGetBuaKeyEnd()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 917
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onGetBuaKeyEnd"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 919
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$1;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/16 v1, 0x6d

    new-array v2, v3, [Ljava/lang/Object;

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    .line 920
    return-void
.end method

.method public onGetBuaKeyStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 911
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onGetBuaKeyStart"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 913
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$1;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/16 v1, 0x6c

    new-array v2, v3, [Ljava/lang/Object;

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    .line 914
    return-void
.end method

.method public onGetVolume(ILcom/lge/smartshare/iface/aidl/DataVolumeInfo;)V
    .locals 5
    .parameter "rstCode"
    .parameter "volumeInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 833
    if-nez p2, :cond_0

    .line 834
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onGetVolume null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 841
    :goto_0
    return-void

    .line 838
    :cond_0
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGetVolume: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 840
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$1;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/4 v1, 0x6

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onLostSelectedRenderer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 881
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLostSelectedRenderer"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 883
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$1;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/16 v1, 0x68

    new-array v2, v3, [Ljava/lang/Object;

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    .line 884
    return-void
.end method

.method public onPause(I)V
    .locals 5
    .parameter "rstCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 821
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPause: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 823
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$1;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/4 v1, 0x4

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    .line 824
    return-void
.end method

.method public onPlay(I)V
    .locals 5
    .parameter "rstCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 809
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPlay: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 811
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$1;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/4 v1, 0x2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    .line 812
    return-void
.end method

.method public onPlayerStatusUpdate(Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;)V
    .locals 4
    .parameter "playerStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 887
    if-nez p1, :cond_0

    .line 888
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPlayerStatusUpdate null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 896
    :goto_0
    return-void

    .line 892
    :cond_0
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPlayerStatusUpdate state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$1;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/16 v1, 0x69

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onReady(II)V
    .locals 5
    .parameter "readyCode"
    .parameter "rstCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 850
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReady readyCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rstCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 852
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$1;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    #setter for: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->readyCode:I
    invoke-static {v0, p1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$2(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I)V

    .line 853
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$1;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    #setter for: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->resultCode:I
    invoke-static {v0, p2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$3(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I)V

    .line 855
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$1;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/16 v1, 0x65

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    .line 856
    return-void
.end method

.method public onReceiveRendererIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "rendererId"
    .parameter "icon"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 794
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 795
    :cond_0
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceiveRendererIcon null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 796
    if-eqz p2, :cond_1

    .line 797
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 798
    const/4 p2, 0x0

    .line 806
    :cond_1
    :goto_0
    return-void

    .line 803
    :cond_2
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceiveRendererIcon id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 805
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$1;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v4, v1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onRendererAdded(Lcom/lge/smartshare/iface/aidl/DataRenderer;)V
    .locals 4
    .parameter "renderer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 859
    if-nez p1, :cond_0

    .line 860
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRendererAdded null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 867
    :goto_0
    return-void

    .line 864
    :cond_0
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRendererAdded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lge/smartshare/iface/aidl/DataRenderer;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 866
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$1;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/16 v1, 0x66

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onRendererRemoved(Ljava/lang/String;)V
    .locals 4
    .parameter "rendererId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 870
    if-nez p1, :cond_0

    .line 871
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRendererRemoved null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 878
    :goto_0
    return-void

    .line 875
    :cond_0
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRendererRemoved: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 877
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$1;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/16 v1, 0x67

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onRendererUsageChanged(Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;)V
    .locals 4
    .parameter "rendererUsageInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 951
    if-nez p1, :cond_0

    .line 958
    :goto_0
    return-void

    .line 955
    :cond_0
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRendererUsageChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;->rendererName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 957
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$1;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/16 v1, 0x1f5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onSeek(I)V
    .locals 5
    .parameter "rstCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 827
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSeek: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 829
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$1;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/4 v1, 0x5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    .line 830
    return-void
.end method

.method public onSetVolume(I)V
    .locals 5
    .parameter "rstCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 844
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetVolume: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 846
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$1;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/4 v1, 0x7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    .line 847
    return-void
.end method

.method public onStop(I)V
    .locals 5
    .parameter "rstCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 815
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStop: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 817
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$1;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/4 v1, 0x3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    .line 818
    return-void
.end method

.method public onWFDAdded(Lcom/lge/smartshare/iface/aidl/DataWFDDevice;)V
    .locals 4
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 923
    if-nez p1, :cond_0

    .line 924
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onWFDAdded null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 931
    :goto_0
    return-void

    .line 928
    :cond_0
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWFDAdded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 930
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$1;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/16 v1, 0x191

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onWFDInitCompleted(I)V
    .locals 5
    .parameter "rstCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 945
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWFDInitCompleted: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 947
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$1;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/16 v1, 0x193

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    .line 948
    return-void
.end method

.method public onWFDRemoved(Ljava/lang/String;)V
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 934
    if-nez p1, :cond_0

    .line 935
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onWFDAdded null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 942
    :goto_0
    return-void

    .line 939
    :cond_0
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWFDAdded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 941
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$1;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    const/16 v1, 0x192

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V

    goto :goto_0
.end method
