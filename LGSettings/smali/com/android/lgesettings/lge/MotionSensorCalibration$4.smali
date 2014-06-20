.class Lcom/android/lgesettings/lge/MotionSensorCalibration$4;
.super Landroid/os/Handler;
.source "MotionSensorCalibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/MotionSensorCalibration;
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
    .line 238
    iput-object p1, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$4;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 241
    iget-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$4;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    #getter for: Lcom/android/lgesettings/lge/MotionSensorCalibration;->mTesting:Z
    invoke-static {v0}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->access$100(Lcom/android/lgesettings/lge/MotionSensorCalibration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 248
    iget-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$4;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    const v1, 0x7f0809d1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 253
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$4;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    #setter for: Lcom/android/lgesettings/lge/MotionSensorCalibration;->mTesting:Z
    invoke-static {v0, v2}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->access$102(Lcom/android/lgesettings/lge/MotionSensorCalibration;Z)Z

    .line 254
    iget-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$4;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    #getter for: Lcom/android/lgesettings/lge/MotionSensorCalibration;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->access$000(Lcom/android/lgesettings/lge/MotionSensorCalibration;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$4;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    #getter for: Lcom/android/lgesettings/lge/MotionSensorCalibration;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->access$000(Lcom/android/lgesettings/lge/MotionSensorCalibration;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$4;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    invoke-virtual {v0}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->finish()V

    .line 258
    return-void

    .line 244
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$4;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    const v1, 0x7f08099c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
