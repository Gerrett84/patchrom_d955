.class Lcom/android/server/power/DoubleTapService$5;
.super Landroid/os/UEventObserver;
.source "DoubleTapService.java"


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
    .line 321
    iput-object p1, p0, Lcom/android/server/power/DoubleTapService$5;->this$0:Lcom/android/server/power/DoubleTapService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 324
    const-string v0, "DoubleTapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTouchGestureWakeupObserver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v0, "WAKEUP"

    const-string v1, "TOUCH_GESTURE_WAKEUP"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    invoke-static {}, Lcom/android/server/power/DoubleTapService;->access$2000()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/power/DoubleTapService;->access$2100()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/server/power/DoubleTapService;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$5;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mCurrentQuickCover:Z
    invoke-static {v0}, Lcom/android/server/power/DoubleTapService;->access$1500(Lcom/android/server/power/DoubleTapService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 354
    :cond_1
    :goto_0
    return-void

    .line 330
    :cond_2
    const-string v0, "DoubleTapService"

    const-string v1, "mTouch wake up PowerManger"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$5;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mInit:Z
    invoke-static {v0}, Lcom/android/server/power/DoubleTapService;->access$200(Lcom/android/server/power/DoubleTapService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 332
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$5;->this$0:Lcom/android/server/power/DoubleTapService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/power/DoubleTapService$5;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mTimeToSleep:J
    invoke-static {v3}, Lcom/android/server/power/DoubleTapService;->access$400(Lcom/android/server/power/DoubleTapService;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    #setter for: Lcom/android/server/power/DoubleTapService;->mTimeAfterSleep:J
    invoke-static {v0, v1, v2}, Lcom/android/server/power/DoubleTapService;->access$302(Lcom/android/server/power/DoubleTapService;J)J

    .line 334
    const-string v0, "DoubleTapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTouch Double-tap : isScreenOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DoubleTapService$5;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v2}, Lcom/android/server/power/DoubleTapService;->access$500(Lcom/android/server/power/DoubleTapService;)Landroid/os/PowerManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / TimeAfterSleep = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DoubleTapService$5;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mTimeAfterSleep:J
    invoke-static {v2}, Lcom/android/server/power/DoubleTapService;->access$300(Lcom/android/server/power/DoubleTapService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$5;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/server/power/DoubleTapService;->access$500(Lcom/android/server/power/DoubleTapService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$5;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mTimeAfterSleep:J
    invoke-static {v0}, Lcom/android/server/power/DoubleTapService;->access$300(Lcom/android/server/power/DoubleTapService;)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 337
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$5;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/power/DoubleTapService;->access$800(Lcom/android/server/power/DoubleTapService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DoubleTapService$5;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mRunnableResetLed:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/power/DoubleTapService;->access$700(Lcom/android/server/power/DoubleTapService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 338
    invoke-static {}, Lcom/android/server/power/DoubleTapService;->access$900()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 339
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$5;->this$0:Lcom/android/server/power/DoubleTapService;

    invoke-static {}, Lcom/android/server/power/DoubleTapService;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    #calls: Lcom/android/server/power/DoubleTapService;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/power/DoubleTapService;->access$1100(Lcom/android/server/power/DoubleTapService;Ljava/lang/String;Ljava/lang/String;)Z

    .line 340
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$5;->this$0:Lcom/android/server/power/DoubleTapService;

    invoke-static {}, Lcom/android/server/power/DoubleTapService;->access$1200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "255"

    #calls: Lcom/android/server/power/DoubleTapService;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/power/DoubleTapService;->access$1100(Lcom/android/server/power/DoubleTapService;Ljava/lang/String;Ljava/lang/String;)Z

    .line 341
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$5;->this$0:Lcom/android/server/power/DoubleTapService;

    invoke-static {}, Lcom/android/server/power/DoubleTapService;->access$1300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "255"

    #calls: Lcom/android/server/power/DoubleTapService;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/power/DoubleTapService;->access$1100(Lcom/android/server/power/DoubleTapService;Ljava/lang/String;Ljava/lang/String;)Z

    .line 345
    :goto_1
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$5;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/power/DoubleTapService;->access$800(Lcom/android/server/power/DoubleTapService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DoubleTapService$5;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mRunnableResetLed:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/power/DoubleTapService;->access$700(Lcom/android/server/power/DoubleTapService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 346
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$5;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/server/power/DoubleTapService;->access$500(Lcom/android/server/power/DoubleTapService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 347
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$5;->this$0:Lcom/android/server/power/DoubleTapService;

    const/4 v1, 0x0

    #calls: Lcom/android/server/power/DoubleTapService;->setProximitySensorEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/server/power/DoubleTapService;->access$1600(Lcom/android/server/power/DoubleTapService;Z)V

    .line 350
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$5;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mInit:Z
    invoke-static {v0}, Lcom/android/server/power/DoubleTapService;->access$200(Lcom/android/server/power/DoubleTapService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$5;->this$0:Lcom/android/server/power/DoubleTapService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/power/DoubleTapService;->mInit:Z
    invoke-static {v0, v1}, Lcom/android/server/power/DoubleTapService;->access$202(Lcom/android/server/power/DoubleTapService;Z)Z

    goto/16 :goto_0

    .line 343
    :cond_4
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$5;->this$0:Lcom/android/server/power/DoubleTapService;

    const-string v1, "/sys/class/g2_rgb_led/use_patterns/onoff_patterns"

    const-string v2, "0xffffff"

    #calls: Lcom/android/server/power/DoubleTapService;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/power/DoubleTapService;->access$1100(Lcom/android/server/power/DoubleTapService;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method
