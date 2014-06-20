.class Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory$3;
.super Ljava/lang/Object;
.source "StorageVolumePreferenceCategory.java"

# interfaces
.implements Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 0
    .parameter

    .prologue
    .line 776
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory$3;->this$0:Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateApproximate(Lcom/android/lgesettings/deviceinfo/StorageMeasurement;JJJ)V
    .locals 4
    .parameter "meas"
    .parameter "totalSize"
    .parameter "availSize"
    .parameter "reservedSize"

    .prologue
    const/4 v3, 0x1

    .line 779
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory$3;->this$0:Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;

    #getter for: Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->access$100(Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p2, v1, v2

    aput-wide p4, v1, v3

    const/4 v2, 0x2

    aput-wide p6, v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 781
    return-void
.end method

.method public updateDetails(Lcom/android/lgesettings/deviceinfo/StorageMeasurement;Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 2
    .parameter "meas"
    .parameter "details"

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory$3;->this$0:Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;

    #getter for: Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->access$100(Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 786
    return-void
.end method
