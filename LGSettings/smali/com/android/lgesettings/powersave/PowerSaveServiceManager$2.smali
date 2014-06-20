.class Lcom/android/lgesettings/powersave/PowerSaveServiceManager$2;
.super Ljava/lang/Thread;
.source "PowerSaveServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/powersave/PowerSaveServiceManager;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/powersave/PowerSaveServiceManager;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/powersave/PowerSaveServiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/lgesettings/powersave/PowerSaveServiceManager$2;->this$0:Lcom/android/lgesettings/powersave/PowerSaveServiceManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 42
    const-string v0, "PowerSaveServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doThread run handler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveServiceManager$2;->this$0:Lcom/android/lgesettings/powersave/PowerSaveServiceManager;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveServiceManager;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/lgesettings/powersave/PowerSaveServiceManager;->access$200(Lcom/android/lgesettings/powersave/PowerSaveServiceManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveServiceManager$2;->this$0:Lcom/android/lgesettings/powersave/PowerSaveServiceManager;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveServiceManager;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveServiceManager;->access$200(Lcom/android/lgesettings/powersave/PowerSaveServiceManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveServiceManager$2;->this$0:Lcom/android/lgesettings/powersave/PowerSaveServiceManager;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveServiceManager;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveServiceManager;->access$200(Lcom/android/lgesettings/powersave/PowerSaveServiceManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 46
    :cond_0
    return-void
.end method
