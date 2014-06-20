.class Lcom/android/lgesettings/powersave/PowerSaveServiceManager$1;
.super Landroid/os/Handler;
.source "PowerSaveServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/powersave/PowerSaveServiceManager;
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
    .line 19
    iput-object p1, p0, Lcom/android/lgesettings/powersave/PowerSaveServiceManager$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveServiceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 23
    const-string v0, "PowerSaveServiceManager"

    const-string v1, "handleMessage run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveServiceManager$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveServiceManager;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveServiceManager;->initPowerSaveStarted()V
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveServiceManager;->access$000(Lcom/android/lgesettings/powersave/PowerSaveServiceManager;)V

    .line 27
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveServiceManager$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveServiceManager;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveServiceManager;->doPowerSaveService()V
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveServiceManager;->access$100(Lcom/android/lgesettings/powersave/PowerSaveServiceManager;)V

    .line 28
    return-void
.end method
