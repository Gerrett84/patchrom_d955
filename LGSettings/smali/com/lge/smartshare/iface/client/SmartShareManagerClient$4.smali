.class Lcom/lge/smartshare/iface/client/SmartShareManagerClient$4;
.super Ljava/lang/Thread;
.source "SmartShareManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/smartshare/iface/client/SmartShareManagerClient;-><init>()V
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
    iput-object p1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$4;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    .line 350
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 352
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 354
    iget-object v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$4;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    new-instance v2, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$ListenerHandler;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$ListenerHandler;-><init>(Lcom/lge/smartshare/iface/client/SmartShareManagerClient$ListenerHandler;)V

    #setter for: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->handler:Lcom/lge/smartshare/iface/client/SmartShareManagerClient$ListenerHandler;
    invoke-static {v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$13(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;Lcom/lge/smartshare/iface/client/SmartShareManagerClient$ListenerHandler;)V

    .line 356
    iget-object v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$4;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    #getter for: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->messageLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$14(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 357
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$4;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    #getter for: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->tempMessageQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$15(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$4;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    #getter for: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->tempMessageQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$15(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 356
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 365
    return-void

    .line 358
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$4;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    #getter for: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->tempMessageQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$15(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 359
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$4;->this$0:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    #getter for: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->handler:Lcom/lge/smartshare/iface/client/SmartShareManagerClient$ListenerHandler;
    invoke-static {v1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$16(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;)Lcom/lge/smartshare/iface/client/SmartShareManagerClient$ListenerHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$ListenerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 356
    .end local v0           #message:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
