.class Lcom/android/lgesettings/lge/MotionSensorCalibration$3;
.super Ljava/lang/Object;
.source "MotionSensorCalibration.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lge/MotionSensorCalibration;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/MotionSensorCalibration;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$3;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$3;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    #getter for: Lcom/android/lgesettings/lge/MotionSensorCalibration;->mStart:Z
    invoke-static {v0}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->access$200(Lcom/android/lgesettings/lge/MotionSensorCalibration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$3;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    #setter for: Lcom/android/lgesettings/lge/MotionSensorCalibration;->mTestTime:J
    invoke-static {v0, v1, v2}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->access$302(Lcom/android/lgesettings/lge/MotionSensorCalibration;J)J

    .line 144
    iget-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$3;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    const/4 v1, 0x0

    #setter for: Lcom/android/lgesettings/lge/MotionSensorCalibration;->mStart:Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->access$202(Lcom/android/lgesettings/lge/MotionSensorCalibration;Z)Z

    .line 145
    iget-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$3;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    #getter for: Lcom/android/lgesettings/lge/MotionSensorCalibration;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->access$000(Lcom/android/lgesettings/lge/MotionSensorCalibration;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 146
    iget-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$3;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    const/4 v1, 0x1

    #setter for: Lcom/android/lgesettings/lge/MotionSensorCalibration;->mTesting:Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->access$102(Lcom/android/lgesettings/lge/MotionSensorCalibration;Z)Z

    .line 148
    :cond_0
    return-void
.end method
