.class Lcom/android/server/power/DoubleTapService$2;
.super Ljava/lang/Object;
.source "DoubleTapService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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
    .line 228
    iput-object p1, p0, Lcom/android/server/power/DoubleTapService$2;->this$0:Lcom/android/server/power/DoubleTapService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 230
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 233
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_4

    .line 234
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$2;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mInit:Z
    invoke-static {v0}, Lcom/android/server/power/DoubleTapService;->access$200(Lcom/android/server/power/DoubleTapService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$2;->this$0:Lcom/android/server/power/DoubleTapService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/power/DoubleTapService$2;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mTimeToSleep:J
    invoke-static {v3}, Lcom/android/server/power/DoubleTapService;->access$400(Lcom/android/server/power/DoubleTapService;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    #setter for: Lcom/android/server/power/DoubleTapService;->mTimeAfterSleep:J
    invoke-static {v0, v1, v2}, Lcom/android/server/power/DoubleTapService;->access$302(Lcom/android/server/power/DoubleTapService;J)J

    .line 237
    const-string v0, "DoubleTapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Double-tap : isScreenOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DoubleTapService$2;->this$0:Lcom/android/server/power/DoubleTapService;

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

    iget-object v2, p0, Lcom/android/server/power/DoubleTapService$2;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mTimeAfterSleep:J
    invoke-static {v2}, Lcom/android/server/power/DoubleTapService;->access$300(Lcom/android/server/power/DoubleTapService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$2;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/server/power/DoubleTapService;->access$500(Lcom/android/server/power/DoubleTapService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$2;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mTimeAfterSleep:J
    invoke-static {v0}, Lcom/android/server/power/DoubleTapService;->access$300(Lcom/android/server/power/DoubleTapService;)J

    move-result-wide v0

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$2;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mEmotionalEnabled:Z
    invoke-static {v0}, Lcom/android/server/power/DoubleTapService;->access$600(Lcom/android/server/power/DoubleTapService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$2;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/power/DoubleTapService;->access$800(Lcom/android/server/power/DoubleTapService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DoubleTapService$2;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mRunnableResetLed:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/power/DoubleTapService;->access$700(Lcom/android/server/power/DoubleTapService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 241
    invoke-static {}, Lcom/android/server/power/DoubleTapService;->access$900()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 242
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$2;->this$0:Lcom/android/server/power/DoubleTapService;

    invoke-static {}, Lcom/android/server/power/DoubleTapService;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "255"

    #calls: Lcom/android/server/power/DoubleTapService;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/power/DoubleTapService;->access$1100(Lcom/android/server/power/DoubleTapService;Ljava/lang/String;Ljava/lang/String;)Z

    .line 243
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$2;->this$0:Lcom/android/server/power/DoubleTapService;

    invoke-static {}, Lcom/android/server/power/DoubleTapService;->access$1200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "255"

    #calls: Lcom/android/server/power/DoubleTapService;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/power/DoubleTapService;->access$1100(Lcom/android/server/power/DoubleTapService;Ljava/lang/String;Ljava/lang/String;)Z

    .line 244
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$2;->this$0:Lcom/android/server/power/DoubleTapService;

    invoke-static {}, Lcom/android/server/power/DoubleTapService;->access$1300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "255"

    #calls: Lcom/android/server/power/DoubleTapService;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/power/DoubleTapService;->access$1100(Lcom/android/server/power/DoubleTapService;Ljava/lang/String;Ljava/lang/String;)Z

    .line 253
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$2;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/power/DoubleTapService;->access$800(Lcom/android/server/power/DoubleTapService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DoubleTapService$2;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mRunnableResetLed:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/power/DoubleTapService;->access$700(Lcom/android/server/power/DoubleTapService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 257
    :cond_1
    invoke-static {}, Lcom/android/server/power/DoubleTapService;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    const-string v0, "DoubleTapService"

    const-string v1, "send IntentEx.ACTION_TILT_GESTURE_EVENT !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$2;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/DoubleTapService;->access$100(Lcom/android/server/power/DoubleTapService;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.android.intent.TILT_GESTURE_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$2;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/server/power/DoubleTapService;->access$500(Lcom/android/server/power/DoubleTapService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 263
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$2;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mCurrentQuickCover:Z
    invoke-static {v0}, Lcom/android/server/power/DoubleTapService;->access$1500(Lcom/android/server/power/DoubleTapService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 264
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$2;->this$0:Lcom/android/server/power/DoubleTapService;

    const/4 v1, 0x0

    #calls: Lcom/android/server/power/DoubleTapService;->setProximitySensorEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/server/power/DoubleTapService;->access$1600(Lcom/android/server/power/DoubleTapService;Z)V

    .line 265
    invoke-static {}, Lcom/android/server/power/DoubleTapService;->access$1400()Z

    move-result v0

    if-nez v0, :cond_3

    .line 266
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$2;->this$0:Lcom/android/server/power/DoubleTapService;

    #calls: Lcom/android/server/power/DoubleTapService;->setProximitySensorEnabled(Z)V
    invoke-static {v0, v5}, Lcom/android/server/power/DoubleTapService;->access$1600(Lcom/android/server/power/DoubleTapService;Z)V

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$2;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mInit:Z
    invoke-static {v0}, Lcom/android/server/power/DoubleTapService;->access$200(Lcom/android/server/power/DoubleTapService;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 271
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$2;->this$0:Lcom/android/server/power/DoubleTapService;

    #setter for: Lcom/android/server/power/DoubleTapService;->mInit:Z
    invoke-static {v0, v5}, Lcom/android/server/power/DoubleTapService;->access$202(Lcom/android/server/power/DoubleTapService;Z)Z

    .line 274
    :cond_4
    return-void

    .line 246
    :cond_5
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$2;->this$0:Lcom/android/server/power/DoubleTapService;

    const-string v1, "/sys/class/g2_rgb_led/use_patterns/onoff_patterns"

    const-string v2, "0xffffff"

    #calls: Lcom/android/server/power/DoubleTapService;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/power/DoubleTapService;->access$1100(Lcom/android/server/power/DoubleTapService;Ljava/lang/String;Ljava/lang/String;)Z

    .line 249
    invoke-static {}, Lcom/android/server/power/DoubleTapService;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$2;->this$0:Lcom/android/server/power/DoubleTapService;

    const-string v1, "/sys/class/g2_rgb_led/use_patterns/onoff_patterns"

    const-string v2, "0x0a0aff"

    #calls: Lcom/android/server/power/DoubleTapService;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/power/DoubleTapService;->access$1100(Lcom/android/server/power/DoubleTapService;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
