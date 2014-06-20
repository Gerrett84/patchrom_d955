.class Lcom/android/lgesettings/lge/MotionSensorCalibration$1;
.super Ljava/lang/Object;
.source "MotionSensorCalibration.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lge/MotionSensorCalibration;->onCreate(Landroid/os/Bundle;)V
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
    .line 83
    iput-object p1, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$1;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 86
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$1;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    #getter for: Lcom/android/lgesettings/lge/MotionSensorCalibration;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->access$000(Lcom/android/lgesettings/lge/MotionSensorCalibration;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$1;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    #getter for: Lcom/android/lgesettings/lge/MotionSensorCalibration;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->access$000(Lcom/android/lgesettings/lge/MotionSensorCalibration;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$1;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    #setter for: Lcom/android/lgesettings/lge/MotionSensorCalibration;->mTesting:Z
    invoke-static {v1, v0}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->access$102(Lcom/android/lgesettings/lge/MotionSensorCalibration;Z)Z

    .line 91
    iget-object v1, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$1;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    const v2, 0x7f0809d1

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 94
    iget-object v0, p0, Lcom/android/lgesettings/lge/MotionSensorCalibration$1;->this$0:Lcom/android/lgesettings/lge/MotionSensorCalibration;

    invoke-virtual {v0}, Lcom/android/lgesettings/lge/MotionSensorCalibration;->finish()V

    .line 95
    const/4 v0, 0x1

    .line 97
    :cond_1
    return v0
.end method
