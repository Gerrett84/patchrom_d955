.class Lcom/android/server/power/DoubleTapService$6;
.super Ljava/lang/Object;
.source "DoubleTapService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DoubleTapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DoubleTapService;


# direct methods
.method constructor <init>(Lcom/android/server/power/DoubleTapService;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/server/power/DoubleTapService$6;->this$0:Lcom/android/server/power/DoubleTapService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 360
    invoke-static {}, Lcom/android/server/power/DoubleTapService;->access$900()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 361
    iget-object v2, p0, Lcom/android/server/power/DoubleTapService$6;->this$0:Lcom/android/server/power/DoubleTapService;

    invoke-static {}, Lcom/android/server/power/DoubleTapService;->access$1000()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/server/power/DoubleTapService;->readValue(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/power/DoubleTapService;->access$2200(Lcom/android/server/power/DoubleTapService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/DoubleTapService$6;->this$0:Lcom/android/server/power/DoubleTapService;

    invoke-static {}, Lcom/android/server/power/DoubleTapService;->access$1200()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/server/power/DoubleTapService;->readValue(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/power/DoubleTapService;->access$2200(Lcom/android/server/power/DoubleTapService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "255"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/DoubleTapService$6;->this$0:Lcom/android/server/power/DoubleTapService;

    invoke-static {}, Lcom/android/server/power/DoubleTapService;->access$1300()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/server/power/DoubleTapService;->readValue(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/power/DoubleTapService;->access$2200(Lcom/android/server/power/DoubleTapService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "255"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    iget-object v2, p0, Lcom/android/server/power/DoubleTapService$6;->this$0:Lcom/android/server/power/DoubleTapService;

    invoke-static {}, Lcom/android/server/power/DoubleTapService;->access$1000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    #calls: Lcom/android/server/power/DoubleTapService;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/android/server/power/DoubleTapService;->access$1100(Lcom/android/server/power/DoubleTapService;Ljava/lang/String;Ljava/lang/String;)Z

    .line 365
    iget-object v2, p0, Lcom/android/server/power/DoubleTapService$6;->this$0:Lcom/android/server/power/DoubleTapService;

    invoke-static {}, Lcom/android/server/power/DoubleTapService;->access$1200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    #calls: Lcom/android/server/power/DoubleTapService;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/android/server/power/DoubleTapService;->access$1100(Lcom/android/server/power/DoubleTapService;Ljava/lang/String;Ljava/lang/String;)Z

    .line 366
    iget-object v2, p0, Lcom/android/server/power/DoubleTapService$6;->this$0:Lcom/android/server/power/DoubleTapService;

    invoke-static {}, Lcom/android/server/power/DoubleTapService;->access$1300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    #calls: Lcom/android/server/power/DoubleTapService;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/android/server/power/DoubleTapService;->access$1100(Lcom/android/server/power/DoubleTapService;Ljava/lang/String;Ljava/lang/String;)Z

    .line 374
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.intent.action.ACTION_DOUBLE_TAP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    .local v0, doubleTapIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/power/DoubleTapService$6;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/power/DoubleTapService;->access$100(Lcom/android/server/power/DoubleTapService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 377
    iget-object v2, p0, Lcom/android/server/power/DoubleTapService$6;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/power/DoubleTapService;->access$800(Lcom/android/server/power/DoubleTapService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/DoubleTapService$6;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mRunnableResetLed:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/power/DoubleTapService;->access$700(Lcom/android/server/power/DoubleTapService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 378
    const-string v2, "DoubleTapService"

    const-string v3, "Double-tap Reset LED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return-void

    .line 369
    .end local v0           #doubleTapIntent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/DoubleTapService$6;->this$0:Lcom/android/server/power/DoubleTapService;

    const-string v3, "/sys/class/g2_rgb_led/use_patterns/onoff_patterns"

    #calls: Lcom/android/server/power/DoubleTapService;->readValue(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/power/DoubleTapService;->access$2200(Lcom/android/server/power/DoubleTapService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, pattern:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "0xffffff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    iget-object v2, p0, Lcom/android/server/power/DoubleTapService$6;->this$0:Lcom/android/server/power/DoubleTapService;

    const-string v3, "/sys/class/g2_rgb_led/use_patterns/onoff_patterns"

    const-string v4, "0x000000"

    #calls: Lcom/android/server/power/DoubleTapService;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/android/server/power/DoubleTapService;->access$1100(Lcom/android/server/power/DoubleTapService;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
