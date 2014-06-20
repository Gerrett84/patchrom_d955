.class Lcom/android/server/power/DoubleTapService$3;
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
    .line 277
    iput-object p1, p0, Lcom/android/server/power/DoubleTapService$3;->this$0:Lcom/android/server/power/DoubleTapService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 279
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 282
    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 284
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v4, v3

    .line 285
    .local v0, distance:F
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    move v1, v2

    .line 287
    .local v1, positive:Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/power/DoubleTapService$3;->this$0:Lcom/android/server/power/DoubleTapService;

    if-eqz v1, :cond_2

    :goto_1
    #setter for: Lcom/android/server/power/DoubleTapService;->mProximity:I
    invoke-static {v4, v2}, Lcom/android/server/power/DoubleTapService;->access$1702(Lcom/android/server/power/DoubleTapService;I)I

    .line 289
    const-string v2, "DoubleTapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Double-tap onSensorChanged : proximity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/DoubleTapService$3;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mProximity:I
    invoke-static {v5}, Lcom/android/server/power/DoubleTapService;->access$1700(Lcom/android/server/power/DoubleTapService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-static {}, Lcom/android/server/power/DoubleTapService;->access$1800()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 292
    iget-object v2, p0, Lcom/android/server/power/DoubleTapService$3;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v2}, Lcom/android/server/power/DoubleTapService;->access$500(Lcom/android/server/power/DoubleTapService;)Landroid/os/PowerManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/power/DoubleTapService$3;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mCurrentQuickCover:Z
    invoke-static {v2}, Lcom/android/server/power/DoubleTapService;->access$1500(Lcom/android/server/power/DoubleTapService;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 293
    iget-object v3, p0, Lcom/android/server/power/DoubleTapService$3;->this$0:Lcom/android/server/power/DoubleTapService;

    const-string v4, "/sys/devices/virtual/input/lge_touch/touch_gesture"

    if-eqz v1, :cond_3

    const-string v2, "1"

    :goto_2
    #calls: Lcom/android/server/power/DoubleTapService;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v3, v4, v2}, Lcom/android/server/power/DoubleTapService;->access$1100(Lcom/android/server/power/DoubleTapService;Ljava/lang/String;Ljava/lang/String;)Z

    .line 294
    const-string v2, "DoubleTapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Double-tap onSensorChanged writeValue positive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .end local v0           #distance:F
    .end local v1           #positive:Z
    :cond_0
    :goto_3
    return-void

    .restart local v0       #distance:F
    :cond_1
    move v1, v3

    .line 285
    goto :goto_0

    .restart local v1       #positive:Z
    :cond_2
    move v2, v3

    .line 287
    goto :goto_1

    .line 293
    :cond_3
    const-string v2, "0"

    goto :goto_2

    .line 296
    :cond_4
    iget-object v2, p0, Lcom/android/server/power/DoubleTapService$3;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mCurrentQuickCover:Z
    invoke-static {v2}, Lcom/android/server/power/DoubleTapService;->access$1500(Lcom/android/server/power/DoubleTapService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/android/server/power/DoubleTapService$3;->this$0:Lcom/android/server/power/DoubleTapService;

    #calls: Lcom/android/server/power/DoubleTapService;->setProximitySensorEnabled(Z)V
    invoke-static {v2, v3}, Lcom/android/server/power/DoubleTapService;->access$1600(Lcom/android/server/power/DoubleTapService;Z)V

    .line 298
    const-string v2, "DoubleTapService"

    const-string v3, "Double-tap onSensorChanged setProximitySensorEnabled false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 301
    :cond_5
    iget-object v2, p0, Lcom/android/server/power/DoubleTapService$3;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/power/DoubleTapService;->access$800(Lcom/android/server/power/DoubleTapService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/DoubleTapService$3;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/power/DoubleTapService;->access$1900(Lcom/android/server/power/DoubleTapService;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x2bc

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3
.end method
