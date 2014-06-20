.class Lcom/android/lgesettings/deviceinfo/Status$7;
.super Ljava/lang/Thread;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/deviceinfo/Status;->getWdcNvItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/deviceinfo/Status;)V
    .locals 0
    .parameter

    .prologue
    .line 1501
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/Status$7;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1503
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status$7;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    #getter for: Lcom/android/lgesettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/Status;->access$1800(Lcom/android/lgesettings/deviceinfo/Status;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1504
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status$7;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    const/16 v2, 0x3f2

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/Status$7;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    invoke-virtual {v3}, Lcom/android/lgesettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/lgesettings/lge/Svc_cmd;->LgSvcCmd_getCmdValue(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/lgesettings/deviceinfo/Status;->mWdc:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/lgesettings/deviceinfo/Status;->access$202(Lcom/android/lgesettings/deviceinfo/Status;Ljava/lang/String;)Ljava/lang/String;

    .line 1505
    const-string v1, "aboutphone # Status"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LG_CALL_NV] CMD_CALL_WDC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/Status$7;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    #getter for: Lcom/android/lgesettings/deviceinfo/Status;->mWdc:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/lgesettings/deviceinfo/Status;->access$200(Lcom/android/lgesettings/deviceinfo/Status;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status$7;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    #getter for: Lcom/android/lgesettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/Status;->access$1800(Lcom/android/lgesettings/deviceinfo/Status;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1507
    return-void
.end method
