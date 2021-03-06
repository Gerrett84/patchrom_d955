.class public Lcom/android/internal/telephony/LGDataRecovery$ThreadPingToDnsServer;
.super Ljava/lang/Thread;
.source "LGDataRecovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGDataRecovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThreadPingToDnsServer"
.end annotation


# static fields
.field private static final DNS_DEFAULT_SERVER1:Ljava/lang/String; = "8.8.8.8"

.field private static final DNS_DEFAULT_SERVER2:Ljava/lang/String; = "8.8.4.4"


# instance fields
.field private mIface:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/LGDataRecovery;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LGDataRecovery;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "iface"

    .prologue
    .line 2034
    iput-object p1, p0, Lcom/android/internal/telephony/LGDataRecovery$ThreadPingToDnsServer;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2031
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/LGDataRecovery$ThreadPingToDnsServer;->mIface:Ljava/lang/String;

    .line 2035
    iput-object p2, p0, Lcom/android/internal/telephony/LGDataRecovery$ThreadPingToDnsServer;->mIface:Ljava/lang/String;

    .line 2036
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2041
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ThreadPingToDnsServer for iface : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LGDataRecovery$ThreadPingToDnsServer;->mIface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 2042
    iget-object v3, p0, Lcom/android/internal/telephony/LGDataRecovery$ThreadPingToDnsServer;->mIface:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 2061
    :cond_0
    :goto_0
    return-void

    .line 2045
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/LGDataRecovery$ThreadPingToDnsServer;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    iget-object v4, p0, Lcom/android/internal/telephony/LGDataRecovery$ThreadPingToDnsServer;->mIface:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/LGDataRecovery;->isActive(Ljava/lang/String;)Z
    invoke-static {v3, v4}, Lcom/android/internal/telephony/LGDataRecovery;->access$800(Lcom/android/internal/telephony/LGDataRecovery;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2047
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ping -c 1 -I "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LGDataRecovery$ThreadPingToDnsServer;->mIface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2051
    .local v2, pingCmd:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/LGDataRecovery$ThreadPingToDnsServer;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "8.8.8.8"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/LGDataRecovery;->getShellCmdResult(Ljava/lang/String;)Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/LGDataRecovery;->access$600(Lcom/android/internal/telephony/LGDataRecovery;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2052
    .local v1, line:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2059
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #line:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 2055
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/LGDataRecovery$ThreadPingToDnsServer;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "8.8.4.4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/LGDataRecovery;->getShellCmdResult(Ljava/lang/String;)Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/LGDataRecovery;->access$600(Lcom/android/internal/telephony/LGDataRecovery;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2056
    .restart local v1       #line:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method
