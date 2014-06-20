.class public Lcom/android/internal/telephony/LGDataRecovery$ThreadIPtable;
.super Ljava/lang/Thread;
.source "LGDataRecovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGDataRecovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThreadIPtable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LGDataRecovery;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LGDataRecovery;)V
    .locals 0
    .parameter

    .prologue
    .line 1994
    iput-object p1, p0, Lcom/android/internal/telephony/LGDataRecovery$ThreadIPtable;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1999
    const-string v2, "juhwan. thread 2"

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 2001
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery$ThreadIPtable;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    #getter for: Lcom/android/internal/telephony/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->access$200(Lcom/android/internal/telephony/LGDataRecovery;)Landroid/os/INetworkManagementService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2002
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2004
    .local v0, b:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery$ThreadIPtable;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    #setter for: Lcom/android/internal/telephony/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/LGDataRecovery;->access$202(Lcom/android/internal/telephony/LGDataRecovery;Landroid/os/INetworkManagementService;)Landroid/os/INetworkManagementService;

    .line 2008
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    :try_start_0
    const-string v2, "********** DUMP IPTABLE INFO **********"

    const-string v3, "iptablesinfo.log"

    #calls: Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/LGDataRecovery;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    const-string v2, "<----- iptables -L ----->"

    const-string v3, "iptablesinfo.log"

    #calls: Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/LGDataRecovery;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery$ThreadIPtable;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    #getter for: Lcom/android/internal/telephony/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->access$200(Lcom/android/internal/telephony/LGDataRecovery;)Landroid/os/INetworkManagementService;

    move-result-object v2

    const-string v3, "iptables -L -n"

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->runShellCommand(Ljava/lang/String;)V

    .line 2011
    const-string v2, "<----- iptables -t nat -L ----->"

    const-string v3, "iptablesinfo.log"

    #calls: Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/LGDataRecovery;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery$ThreadIPtable;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    #getter for: Lcom/android/internal/telephony/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->access$200(Lcom/android/internal/telephony/LGDataRecovery;)Landroid/os/INetworkManagementService;

    move-result-object v2

    const-string v3, "iptables -t nat -L -n"

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->runShellCommand(Ljava/lang/String;)V

    .line 2013
    const-string v2, "<----- iptables -t mangle -L ----->"

    const-string v3, "iptablesinfo.log"

    #calls: Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/LGDataRecovery;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery$ThreadIPtable;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    #getter for: Lcom/android/internal/telephony/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->access$200(Lcom/android/internal/telephony/LGDataRecovery;)Landroid/os/INetworkManagementService;

    move-result-object v2

    const-string v3, "iptables -t mangle -L -n"

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->runShellCommand(Ljava/lang/String;)V

    .line 2015
    const-string v2, "<----- iptables -t raw -L ----->"

    const-string v3, "iptablesinfo.log"

    #calls: Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/LGDataRecovery;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery$ThreadIPtable;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    #getter for: Lcom/android/internal/telephony/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->access$200(Lcom/android/internal/telephony/LGDataRecovery;)Landroid/os/INetworkManagementService;

    move-result-object v2

    const-string v3, "iptables -t raw -L -n"

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->runShellCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2022
    :goto_0
    return-void

    .line 2018
    :catch_0
    move-exception v1

    .line 2019
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "failed for logging iptables"

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
