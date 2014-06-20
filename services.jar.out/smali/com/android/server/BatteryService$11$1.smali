.class Lcom/android/server/BatteryService$11$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$11;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$11;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$11;)V
    .locals 0
    .parameter

    .prologue
    .line 879
    iput-object p1, p0, Lcom/android/server/BatteryService$11$1;->this$1:Lcom/android/server/BatteryService$11;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/server/BatteryService$11$1;->this$1:Lcom/android/server/BatteryService$11;

    iget-object v0, v0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 883
    const/4 v0, 0x1

    :try_start_0
    sput v0, Lcom/android/server/BatteryService;->bootComplete:I

    .line 884
    iget-object v0, p0, Lcom/android/server/BatteryService$11$1;->this$1:Lcom/android/server/BatteryService$11;

    iget-object v0, v0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    #calls: Lcom/android/server/BatteryService;->updateLocked()V
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)V

    .line 885
    monitor-exit v1

    .line 886
    return-void

    .line 885
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
