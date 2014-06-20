.class public Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;
.super Ljava/lang/Object;
.source "FreePanoramaSensorEventListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;
    }
.end annotation


# static fields
.field private static final MATRIX_SIZE:I = 0x10

.field private static final NS2MS:F = 1.0E-6f


# instance fields
.field private accelerometerTimeStamp:J

.field private accelerometerValues:[F

.field private inRM:[F

.field isSetOffset:Z

.field private mAccelerometer:Landroid/hardware/Sensor;

.field private mCameraOrientation:I

.field private mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

.field private mGyroscope:Landroid/hardware/Sensor;

.field private mGyroscopeCorrectValue:[F

.field private mGyroscopeValue:[F

.field private mGyroscopeValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[F>;"
        }
    .end annotation
.end field

.field private mMagneticField:Landroid/hardware/Sensor;

.field private mPartOfAccelerometerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;",
            ">;"
        }
    .end annotation
.end field

.field private mPartOfGyroscopeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;",
            ">;"
        }
    .end annotation
.end field

.field private mPartOfMagneticFieldList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;",
            ">;"
        }
    .end annotation
.end field

.field private mPartOfOrientationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;",
            ">;"
        }
    .end annotation
.end field

.field private mPartOfRotationVectorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;",
            ">;"
        }
    .end annotation
.end field

.field private mRotationVector:Landroid/hardware/Sensor;

.field private mSensorLockObj:Ljava/lang/Object;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mWaitTime:I

.field private magneticTimeStamp:J

.field private magneticValues:[F

.field private orientationValues:[F

.field private prev_timestamp:J


# direct methods
.method public constructor <init>(Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;)V
    .locals 3
    .parameter "function"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscope:Landroid/hardware/Sensor;

    .line 53
    iput-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mAccelerometer:Landroid/hardware/Sensor;

    .line 59
    iput-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mMagneticField:Landroid/hardware/Sensor;

    .line 64
    iput-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mRotationVector:Landroid/hardware/Sensor;

    .line 79
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscopeValue:[F

    .line 83
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscopeCorrectValue:[F

    .line 93
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->orientationValues:[F

    .line 94
    iput-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->magneticValues:[F

    .line 95
    iput-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->accelerometerValues:[F

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->prev_timestamp:J

    .line 104
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->inRM:[F

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorLockObj:Ljava/lang/Object;

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->isSetOffset:Z

    .line 35
    iput-object p1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    .line 36
    return-void
.end method

.method private checkSensors()V
    .locals 6

    .prologue
    .line 167
    const-string v3, "CameraApp"

    const-string v4, "checkSensors Start"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v3, :cond_0

    .line 170
    const-string v3, "CameraApp"

    const-string v4, "print all sensors"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 172
    .local v2, sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 173
    .local v1, sensor:Landroid/hardware/Sensor;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sensor Type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #sensor:Landroid/hardware/Sensor;
    .end local v2           #sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_0
    const-string v3, "CameraApp"

    const-string v4, "mSensorManager is null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_1
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can I use mGyroscope ? ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscope:Landroid/hardware/Sensor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can I use mAccelerometer ? ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can I use mMagneticField ? ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mMagneticField:Landroid/hardware/Sensor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can I use mRotationVector ? ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mRotationVector:Landroid/hardware/Sensor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v3, "CameraApp"

    const-string v4, "checkSensors End"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method private clearArrayList(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 343
    .local p1, sd_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 344
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 346
    :cond_0
    return-void
.end method

.method private doGyroscopeChanged(Landroid/hardware/SensorEvent;Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;)V
    .locals 10
    .parameter "event"
    .parameter "sd"

    .prologue
    const/16 v9, 0xbb8

    const/16 v8, 0x3e8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 245
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;->getPanoramaState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mWaitTime:I

    if-ge v1, v9, :cond_1

    iget v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mWaitTime:I

    if-ltz v1, :cond_1

    .line 246
    iget v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mWaitTime:I

    .line 247
    .local v0, pre_time:I
    iget-wide v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->prev_timestamp:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 248
    iget v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mWaitTime:I

    int-to-float v1, v1

    iget-wide v2, p2, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;->mTimeStamp:J

    iget-wide v4, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->prev_timestamp:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const v3, 0x358637bd

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mWaitTime:I

    .line 250
    :cond_0
    iget v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mWaitTime:I

    if-lt v1, v9, :cond_2

    .line 251
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;->getMorphoSensorFusion()Lcom/lge/morpho/core/MorphoSensorFusion;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/lge/morpho/core/MorphoSensorFusion;->setAppState(I)I

    .line 253
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;->setVisibleSensorCorrectionGuide(Z)V

    .line 254
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;->setPanoramaEngineState(I)V

    .line 255
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    invoke-interface {v1, v7}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;->setVisibleTakingGuide(Z)V

    .line 266
    .end local v0           #pre_time:I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->prev_timestamp:J

    .line 268
    return-void

    .line 256
    .restart local v0       #pre_time:I
    :cond_2
    iget v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mWaitTime:I

    if-le v1, v8, :cond_1

    .line 257
    if-gt v0, v8, :cond_3

    .line 258
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;->getMorphoSensorFusion()Lcom/lge/morpho/core/MorphoSensorFusion;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/lge/morpho/core/MorphoSensorFusion;->setAppState(I)I

    .line 260
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    iget v2, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mWaitTime:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-interface {v1, v2}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;->setSensorCorrectionGuideCounter(I)V

    .line 261
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscope:Landroid/hardware/Sensor;

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscopeValueList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscopeValue:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getSensorDataArray(Ljava/util/ArrayList;)[Ljava/lang/Object;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, sd_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 350
    :cond_0
    const/4 v0, 0x0

    .line 367
    :cond_1
    return-object v0

    .line 352
    :cond_2
    const/4 v1, 0x0

    .line 353
    .local v1, i:I
    const/4 v2, 0x0

    .line 354
    .local v2, input_num:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 355
    .local v3, size:I
    const/16 v4, 0x200

    if-lt v3, v4, :cond_3

    .line 356
    const/16 v2, 0x200

    .line 360
    :goto_0
    new-array v0, v2, [Ljava/lang/Object;

    .line 361
    .local v0, dst:[Ljava/lang/Object;
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    .line 362
    new-instance v5, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;

    iget-wide v6, v4, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;->mTimeStamp:J

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;

    iget-object v4, v4, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;->mValues:[D

    invoke-direct {v5, v6, v7, v4}, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;-><init>(J[D)V

    aput-object v5, v0, v1

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 358
    .end local v0           #dst:[Ljava/lang/Object;
    :cond_3
    move v2, v3

    goto :goto_0

    .line 364
    .restart local v0       #dst:[Ljava/lang/Object;
    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_1

    .line 365
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private setInputSensorData([Ljava/lang/Object;I)V
    .locals 1
    .parameter "sd_array"
    .parameter "sensor_type"

    .prologue
    .line 371
    if-nez p1, :cond_0

    .line 375
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;->getMorphoSensorFusion()Lcom/lge/morpho/core/MorphoSensorFusion;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/morpho/core/MorphoSensorFusion;->setSensorData([Ljava/lang/Object;I)I

    goto :goto_0
.end method

.method private updateOrientation()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 271
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->magneticValues:[F

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->accelerometerValues:[F

    if-eqz v3, :cond_0

    .line 272
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->inRM:[F

    iget-object v4, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->accelerometerValues:[F

    iget-object v5, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->magneticValues:[F

    invoke-static {v3, v7, v4, v5}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 273
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->inRM:[F

    iget-object v4, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->orientationValues:[F

    invoke-static {v3, v4}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 275
    iget-wide v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->accelerometerTimeStamp:J

    iget-wide v5, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->magneticTimeStamp:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    iget-wide v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->accelerometerTimeStamp:J

    .line 276
    .local v1, ts:J
    :goto_0
    new-instance v0, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;

    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->orientationValues:[F

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;-><init>(J[F)V

    .line 277
    .local v0, osd:Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfOrientationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    iput-object v7, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->magneticValues:[F

    .line 280
    iput-object v7, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->accelerometerValues:[F

    .line 282
    .end local v0           #osd:Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;
    .end local v1           #ts:J
    :cond_0
    return-void

    .line 275
    :cond_1
    iget-wide v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->magneticTimeStamp:J

    goto :goto_0
.end method


# virtual methods
.method public getAccelerometer()Landroid/hardware/Sensor;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mAccelerometer:Landroid/hardware/Sensor;

    return-object v0
.end method

.method public getCameraOrientation()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mCameraOrientation:I

    return v0
.end method

.method public getGyroscope()Landroid/hardware/Sensor;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscope:Landroid/hardware/Sensor;

    return-object v0
.end method

.method public getGyroscopeValue()[F
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscopeValue:[F

    return-object v0
.end method

.method public getGyroscopeValueList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[F>;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscopeValueList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMagneticField()Landroid/hardware/Sensor;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mMagneticField:Landroid/hardware/Sensor;

    return-object v0
.end method

.method public getRotationVector()Landroid/hardware/Sensor;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mRotationVector:Landroid/hardware/Sensor;

    return-object v0
.end method

.method public getSensorLockObj()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorLockObj:Ljava/lang/Object;

    return-object v0
.end method

.method public getSensorMatrix([D[D)V
    .locals 9
    .parameter "gyro_mat"
    .parameter "rv_mat"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 298
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 299
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->getSensorDataArray(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v0

    .line 300
    .local v0, data:[Ljava/lang/Object;
    invoke-direct {p0, v0, v6}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->setInputSensorData([Ljava/lang/Object;I)V

    .line 302
    .end local v0           #data:[Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 303
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->getSensorDataArray(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v0

    .line 304
    .restart local v0       #data:[Ljava/lang/Object;
    invoke-direct {p0, v0, v7}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->setInputSensorData([Ljava/lang/Object;I)V

    .line 306
    .end local v0           #data:[Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 307
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->getSensorDataArray(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v0

    .line 308
    .restart local v0       #data:[Ljava/lang/Object;
    const/4 v3, 0x2

    invoke-direct {p0, v0, v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->setInputSensorData([Ljava/lang/Object;I)V

    .line 310
    .end local v0           #data:[Ljava/lang/Object;
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 311
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->getSensorDataArray(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v0

    .line 312
    .restart local v0       #data:[Ljava/lang/Object;
    invoke-direct {p0, v0, v8}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->setInputSensorData([Ljava/lang/Object;I)V

    .line 314
    .end local v0           #data:[Ljava/lang/Object;
    :cond_4
    iget-boolean v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->isSetOffset:Z

    if-nez v3, :cond_5

    .line 315
    iput-boolean v7, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->isSetOffset:Z

    .line 316
    new-instance v2, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;

    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscopeCorrectValue:[F

    invoke-direct {v2, v3, v4, v5}, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;-><init>(J[F)V

    .line 317
    .local v2, sd:Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;->getMorphoSensorFusion()Lcom/lge/morpho/core/MorphoSensorFusion;

    move-result-object v3

    invoke-virtual {v3, v2, v6}, Lcom/lge/morpho/core/MorphoSensorFusion;->setOffset(Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;I)I

    .line 319
    .end local v2           #sd:Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;
    :cond_5
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;->getMorphoSensorFusion()Lcom/lge/morpho/core/MorphoSensorFusion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/morpho/core/MorphoSensorFusion;->calc()I

    .line 320
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;->getMorphoSensorFusion()Lcom/lge/morpho/core/MorphoSensorFusion;

    move-result-object v3

    invoke-virtual {v3, v6, p1}, Lcom/lge/morpho/core/MorphoSensorFusion;->outputRotationMatrix3x3(I[D)I

    .line 321
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;->getMorphoSensorFusion()Lcom/lge/morpho/core/MorphoSensorFusion;

    move-result-object v3

    invoke-virtual {v3, v8, p2}, Lcom/lge/morpho/core/MorphoSensorFusion;->outputRotationMatrix3x3(I[D)I

    .line 323
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_7

    .line 324
    const/4 v1, 0x0

    .line 328
    .local v1, next:Z
    :goto_0
    if-nez v1, :cond_0

    .line 329
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->clearArrayList(Ljava/util/ArrayList;)V

    .line 330
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->clearArrayList(Ljava/util/ArrayList;)V

    .line 331
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->clearArrayList(Ljava/util/ArrayList;)V

    .line 332
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfOrientationList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->clearArrayList(Ljava/util/ArrayList;)V

    .line 333
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->clearArrayList(Ljava/util/ArrayList;)V

    .line 336
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;->getSensorFusionMode()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_6

    .line 338
    array-length v3, p1

    invoke-static {p2, v6, p1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    :cond_6
    return-void

    .line 326
    .end local v1           #next:Z
    :cond_7
    const/4 v1, 0x1

    .restart local v1       #next:Z
    goto :goto_0
.end method

.method public getWaitTime()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mWaitTime:I

    return v0
.end method

.method public initSensorManager(Landroid/app/Activity;)V
    .locals 9
    .parameter "activity"

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 112
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v3, :cond_0

    .line 141
    :goto_0
    return-void

    .line 115
    :cond_0
    const-string v3, "sensor"

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 116
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 117
    .local v2, sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 118
    .local v1, sensor:Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 119
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscope:Landroid/hardware/Sensor;

    .line 120
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscopeValueList:Ljava/util/ArrayList;

    .line 122
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 123
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mAccelerometer:Landroid/hardware/Sensor;

    .line 128
    :cond_3
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 129
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mMagneticField:Landroid/hardware/Sensor;

    .line 131
    :cond_4
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, v8, :cond_1

    .line 132
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mRotationVector:Landroid/hardware/Sensor;

    goto :goto_1

    .line 136
    .end local v1           #sensor:Landroid/hardware/Sensor;
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    .line 137
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    .line 138
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    .line 139
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfOrientationList:Ljava/util/ArrayList;

    .line 140
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public isUseSensor()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscope:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mMagneticField:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mRotationVector:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    .line 286
    :cond_1
    const/4 v0, 0x1

    .line 288
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mAccelerometer:Landroid/hardware/Sensor;

    if-ne p1, v0, :cond_0

    .line 197
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAccuracyChanged Accelerometer accuracy->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mMagneticField:Landroid/hardware/Sensor;

    if-ne p1, v0, :cond_1

    .line 200
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAccuracyChanged MagneticField accuracy->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_1
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 206
    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorLockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 207
    :try_start_0
    new-instance v0, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;

    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {v0, v3, v4, v1}, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;-><init>(J[F)V

    .line 216
    .local v0, sd:Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscope:Landroid/hardware/Sensor;

    if-ne v1, v3, :cond_0

    .line 217
    invoke-direct {p0, p1, v0}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->doGyroscopeChanged(Landroid/hardware/SensorEvent;Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;)V

    .line 219
    :cond_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mAccelerometer:Landroid/hardware/Sensor;

    if-ne v1, v3, :cond_1

    .line 220
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->accelerometerValues:[F

    .line 221
    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->accelerometerTimeStamp:J

    .line 222
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_1
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mMagneticField:Landroid/hardware/Sensor;

    if-ne v1, v3, :cond_2

    .line 230
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->magneticValues:[F

    .line 231
    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->magneticTimeStamp:J

    .line 232
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_2
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mRotationVector:Landroid/hardware/Sensor;

    if-ne v1, v3, :cond_3

    .line 235
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_3
    invoke-direct {p0}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->updateOrientation()V

    .line 240
    monitor-exit v2

    .line 241
    return-void

    .line 240
    .end local v0           #sd:Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registSensorManager()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 144
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscope:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscope:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mMagneticField:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mMagneticField:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mRotationVector:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3

    .line 160
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mRotationVector:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 163
    :cond_3
    invoke-direct {p0}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->checkSensors()V

    .line 164
    return-void
.end method

.method public setCameraOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 43
    iput p1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mCameraOrientation:I

    .line 44
    return-void
.end method

.method public setWaitTime(I)V
    .locals 0
    .parameter "time"

    .prologue
    .line 86
    iput p1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mWaitTime:I

    .line 87
    return-void
.end method

.method public unRegistSensorManager()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 192
    :cond_0
    return-void
.end method
