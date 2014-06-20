.class public Lcom/android/lgesettings/lge/MotionSensorCalibration;
.super Landroid/app/Activity;
.source "MotionSensorCalibration.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/lge/MotionSensorCalibration$CalThreadRunnable;
    }
.end annotation


# instance fields
.field public handler:Landroid/os/Handler;

.field private mBeforeProgress:Landroid/app/ProgressDialog;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStart:Z

.field private mTestTime:J

.field private mTesting:Z

.field private mThread:Ljava/lang/Thread;

.field private resetsensorbutton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mStart:Z

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mTesting:Z

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mTestTime:J

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mThread:Ljava/lang/Thread;

    .line 238
    new-instance v0, Lcom/android/lgesettings/lge/MotionSensorCalibration$4;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lge/MotionSensorCalibration$4;-><init>(Lcom/android/lgesettings/lge/MotionSensorCalibration;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/lge/MotionSensorCalibration;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/lge/MotionSensorCalibration;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mTesting:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/lgesettings/lge/MotionSensorCalibration;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mTesting:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/lgesettings/lge/MotionSensorCalibration;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mStart:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/lgesettings/lge/MotionSensorCalibration;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mStart:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/lgesettings/lge/MotionSensorCalibration;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mTestTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/lgesettings/lge/MotionSensorCalibration;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mTestTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/lgesettings/lge/MotionSensorCalibration;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/lgesettings/lge/MotionSensorCalibration;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$700(Landroid/hardware/Sensor;)Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-static {p0}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->getDataType(Landroid/hardware/Sensor;)Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;

    move-result-object v0

    return-object v0
.end method

.method private static getDataType(Landroid/hardware/Sensor;)Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;
    .locals 1
    .parameter "sensor"

    .prologue
    .line 186
    invoke-virtual {p0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 192
    :pswitch_0
    sget-object v0, Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;->PRIMARY:Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;

    :goto_0
    return-object v0

    .line 188
    :pswitch_1
    sget-object v0, Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;->PRIMARY:Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;

    goto :goto_0

    .line 190
    :pswitch_2
    sget-object v0, Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;->SECONDARY:Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 181
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    const-string v0, "TAG"

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 131
    const-string v0, "TAG"

    const-string v1, "set portait mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const v0, 0x7f0400cd

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->setContentView(I)V

    .line 138
    :cond_0
    :goto_0
    const v0, 0x7f0a01be

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->resetsensorbutton:Landroid/widget/Button;

    .line 140
    iget-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->resetsensorbutton:Landroid/widget/Button;

    new-instance v1, Lcom/android/lgesettings/lge/MotionSensorCalibration$3;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/lge/MotionSensorCalibration$3;-><init>(Lcom/android/lgesettings/lge/MotionSensorCalibration;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    return-void

    .line 133
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 134
    const-string v0, "TAG"

    const-string v1, "set landscape mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const v0, 0x7f0400ce

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->setContentView(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const-string v1, "MotionSensorCalibration"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_2

    .line 68
    const v1, 0x7f0400cd

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->setContentView(I)V

    .line 74
    :goto_0
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    .line 75
    iget-object v1, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mSensor:Landroid/hardware/Sensor;

    .line 77
    const v1, 0x7f0a01be

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->resetsensorbutton:Landroid/widget/Button;

    .line 78
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->resetsensorbutton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mProgress:Landroid/app/ProgressDialog;

    .line 79
    iget-object v1, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 81
    iget-object v1, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mProgress:Landroid/app/ProgressDialog;

    const v2, 0x7f0809d2

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v1, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 83
    iget-object v1, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mProgress:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/android/lgesettings/lge/MotionSensorCalibration$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/lge/MotionSensorCalibration$1;-><init>(Lcom/android/lgesettings/lge/MotionSensorCalibration;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 101
    iget-object v1, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->resetsensorbutton:Landroid/widget/Button;

    new-instance v2, Lcom/android/lgesettings/lge/MotionSensorCalibration$2;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/lge/MotionSensorCalibration$2;-><init>(Lcom/android/lgesettings/lge/MotionSensorCalibration;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/lgesettings/lge/MotionSensorCalibration$CalThreadRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/lgesettings/lge/MotionSensorCalibration$CalThreadRunnable;-><init>(Lcom/android/lgesettings/lge/MotionSensorCalibration;Lcom/android/lgesettings/lge/MotionSensorCalibration$1;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mThread:Ljava/lang/Thread;

    .line 116
    iget-object v1, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 119
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 120
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 123
    :cond_1
    return-void

    .line 71
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_2
    const v1, 0x7f0400ce

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->setContentView(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 174
    const-string v0, "MotionSensorCalibration"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mThread:Ljava/lang/Thread;

    .line 178
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 264
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 265
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->finish()V

    .line 267
    const/4 v1, 0x1

    .line 269
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 167
    const-string v0, "MotionSensorCalibration"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 169
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 155
    const-string v0, "MotionSensorCalibration"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 159
    iget-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mBeforeProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mBeforeProgress:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mProgress:Landroid/app/ProgressDialog;

    .line 162
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 183
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 274
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 275
    iget-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mProgress:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mBeforeProgress:Landroid/app/ProgressDialog;

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration;->mProgress:Landroid/app/ProgressDialog;

    .line 277
    return-void
.end method
