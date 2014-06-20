.class Lcom/android/internal/telephony/LGDataRecovery$NetdObserverEx;
.super Landroid/net/INetworkManagementEventObserverEx$Stub;
.source "LGDataRecovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGDataRecovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdObserverEx"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LGDataRecovery;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/LGDataRecovery;)V
    .locals 0
    .parameter

    .prologue
    .line 804
    iput-object p1, p0, Lcom/android/internal/telephony/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserverEx$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/LGDataRecovery;Lcom/android/internal/telephony/LGDataRecovery$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 804
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGDataRecovery$NetdObserverEx;-><init>(Lcom/android/internal/telephony/LGDataRecovery;)V

    return-void
.end method


# virtual methods
.method public DnsFailed(Ljava/lang/String;I)V
    .locals 4
    .parameter "host"
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 815
    iget-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    iget-object v1, v1, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    iget-object v1, v1, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v1, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 816
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    iget-object v1, v1, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    #getter for: Lcom/android/internal/telephony/LGDataRecovery;->mIsWifiConnected:Z
    invoke-static {v1}, Lcom/android/internal/telephony/LGDataRecovery;->access$000(Lcom/android/internal/telephony/LGDataRecovery;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 818
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/LGDataRecovery$DnsFailInfo;

    iget-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/internal/telephony/LGDataRecovery$DnsFailInfo;-><init>(Lcom/android/internal/telephony/LGDataRecovery;Ljava/lang/String;I)V

    .line 819
    .local v0, failResult:Lcom/android/internal/telephony/LGDataRecovery$DnsFailInfo;
    iget-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    const v3, 0x42069

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/LGDataRecovery;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/LGDataRecovery;->sendMessage(Landroid/os/Message;)Z

    .line 820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DNS result Hostname: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " desc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/LGDataRecovery;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 2
    .parameter "iface"
    .parameter "up"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 807
    const-string v0, "rmnet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RMNET interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state changed: UP??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/android/internal/telephony/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/LGDataRecovery;->updateConnectionInfosList(Ljava/lang/String;Z)V

    .line 811
    :cond_0
    return-void
.end method

.method public interfaceThrottleStateChanged(Ljava/lang/String;I)V
    .locals 0
    .parameter "iface"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 824
    return-void
.end method
