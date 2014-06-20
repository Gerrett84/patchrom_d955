.class public Lcom/android/internal/telephony/LGDataRecovery$ThreadNetinfo;
.super Ljava/lang/Thread;
.source "LGDataRecovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGDataRecovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThreadNetinfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LGDataRecovery;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LGDataRecovery;)V
    .locals 0
    .parameter

    .prologue
    .line 1950
    iput-object p1, p0, Lcom/android/internal/telephony/LGDataRecovery$ThreadNetinfo;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1955
    const-string v3, "********** DUMP NETWORK INFO **********"

    const-string v4, "netinfo.log"

    #calls: Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/LGDataRecovery;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    const-string v3, "<----- proc/net/route(ipv6_route), converted address ----->"

    const-string v4, "netinfo.log"

    #calls: Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/LGDataRecovery;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    iget-object v3, p0, Lcom/android/internal/telephony/LGDataRecovery$ThreadNetinfo;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    #calls: Lcom/android/internal/telephony/LGDataRecovery;->loggingRouteInfos()V
    invoke-static {v3}, Lcom/android/internal/telephony/LGDataRecovery;->access$500(Lcom/android/internal/telephony/LGDataRecovery;)V

    .line 1972
    const-string v3, "<----- netcfg ----->"

    const-string v4, "netinfo.log"

    #calls: Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/LGDataRecovery;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    iget-object v3, p0, Lcom/android/internal/telephony/LGDataRecovery$ThreadNetinfo;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    const-string v4, "netcfg"

    #calls: Lcom/android/internal/telephony/LGDataRecovery;->getShellCmdResult(Ljava/lang/String;)Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/LGDataRecovery;->access$600(Lcom/android/internal/telephony/LGDataRecovery;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1974
    .local v2, line:Ljava/lang/String;
    const-string v3, "netinfo.log"

    #calls: Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v3, v6}, Lcom/android/internal/telephony/LGDataRecovery;->access$700(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1977
    .end local v2           #line:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/LGDataRecovery$ThreadNetinfo;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    invoke-virtual {v3}, Lcom/android/internal/telephony/LGDataRecovery;->findDefaultConnInfo()Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;

    move-result-object v0

    .line 1978
    .local v0, conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    if-eqz v0, :cond_1

    .line 1979
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<----- proc/net/xt_quota/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ----->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "netinfo.log"

    #calls: Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/LGDataRecovery;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    iget-object v3, p0, Lcom/android/internal/telephony/LGDataRecovery$ThreadNetinfo;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "proc/net/xt_quota/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/LGDataRecovery;->getFileSystemInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1982
    .restart local v2       #line:Ljava/lang/String;
    const-string v3, "netinfo.log"

    #calls: Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v3, v6}, Lcom/android/internal/telephony/LGDataRecovery;->access$700(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 1986
    .end local v2           #line:Ljava/lang/String;
    :cond_1
    const-string v3, "<----- proc/net/dev ----->"

    const-string v4, "netinfo.log"

    #calls: Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/LGDataRecovery;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    iget-object v3, p0, Lcom/android/internal/telephony/LGDataRecovery$ThreadNetinfo;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    const-string v4, "proc/net/dev"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/LGDataRecovery;->getFileSystemInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1988
    .restart local v2       #line:Ljava/lang/String;
    const-string v3, "netinfo.log"

    #calls: Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v3, v6}, Lcom/android/internal/telephony/LGDataRecovery;->access$700(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 1990
    .end local v2           #line:Ljava/lang/String;
    :cond_2
    const-string v3, "\n"

    const-string v4, "netinfo.log"

    #calls: Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v3, v4, v6}, Lcom/android/internal/telephony/LGDataRecovery;->access$700(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1991
    return-void
.end method
