.class Lcom/android/lgesettings/lge/MotionSensorCalibration$CalThreadRunnable;
.super Ljava/lang/Object;
.source "MotionSensorCalibration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/MotionSensorCalibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalThreadRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/lge/MotionSensorCalibration;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$CalThreadRunnable;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/lge/MotionSensorCalibration;Lcom/android/lgesettings/lge/MotionSensorCalibration$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/android/lgesettings/lge/MotionSensorCalibration$CalThreadRunnable;-><init>(Lcom/android/lgesettings/lge/MotionSensorCalibration;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 197
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$CalThreadRunnable;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    #getter for: Lcom/android/lgesettings/lge/MotionSensorCalibration;->mThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->access$500(Lcom/android/lgesettings/lge/MotionSensorCalibration;)Ljava/lang/Thread;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$CalThreadRunnable;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    #getter for: Lcom/android/lgesettings/lge/MotionSensorCalibration;->mTesting:Z
    invoke-static {v2}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->access$100(Lcom/android/lgesettings/lge/MotionSensorCalibration;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    const/4 v0, 0x1

    .line 201
    .local v0, result:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$CalThreadRunnable;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    #getter for: Lcom/android/lgesettings/lge/MotionSensorCalibration;->mTestTime:J
    invoke-static {v4}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->access$300(Lcom/android/lgesettings/lge/MotionSensorCalibration;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 202
    const-string v2, "MotionSensorCalibration"

    const-string v3, "Time out"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v0, 0x1

    .line 204
    iget-object v2, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$CalThreadRunnable;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    iget-object v2, v2, Lcom/android/lgesettings/lge/MotionSensorCalibration;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 234
    .end local v0           #result:I
    :cond_1
    :goto_1
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 235
    return-void

    .line 208
    .restart local v0       #result:I
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$CalThreadRunnable;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    #getter for: Lcom/android/lgesettings/lge/MotionSensorCalibration;->mSensor:Landroid/hardware/Sensor;
    invoke-static {v2}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->access$600(Lcom/android/lgesettings/lge/MotionSensorCalibration;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;->getSensorType(Landroid/hardware/Sensor;)Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

    move-result-object v1

    .line 209
    .local v1, type:Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;
    if-nez v1, :cond_3

    .line 210
    const-string v2, "MotionSensorCalibration"

    const-string v3, "error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, -0x2

    .line 212
    iget-object v2, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$CalThreadRunnable;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    iget-object v2, v2, Lcom/android/lgesettings/lge/MotionSensorCalibration;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 215
    :cond_3
    invoke-virtual {v1}, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;->typeValue()I

    move-result v2

    int-to-byte v2, v2

    iget-object v3, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$CalThreadRunnable;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    #getter for: Lcom/android/lgesettings/lge/MotionSensorCalibration;->mSensor:Landroid/hardware/Sensor;
    invoke-static {v3}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->access$600(Lcom/android/lgesettings/lge/MotionSensorCalibration;)Landroid/hardware/Sensor;

    move-result-object v3

    #calls: Lcom/android/lgesettings/lge/MotionSensorCalibration;->getDataType(Landroid/hardware/Sensor;)Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;
    invoke-static {v3}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->access$700(Landroid/hardware/Sensor;)Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;->ordinal()I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v2, v3}, Lcom/qualcomm/sensors/sensortest/SensorUserCal;->performUserCal(BB)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 224
    const-string v2, "MotionSensorCalibration"

    const-string v3, "fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v0, 0x1

    .line 227
    iget-object v2, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$CalThreadRunnable;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    iget-object v2, v2, Lcom/android/lgesettings/lge/MotionSensorCalibration;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 217
    :pswitch_0
    const-string v2, "MotionSensorCalibration"

    const-string v3, "pass"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v0, 0x0

    .line 220
    iget-object v2, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$CalThreadRunnable;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    iget-object v2, v2, Lcom/android/lgesettings/lge/MotionSensorCalibration;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
