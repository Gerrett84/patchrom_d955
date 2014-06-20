.class Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory$1;
.super Landroid/os/Handler;
.source "StorageVolumePreferenceCategory.java"


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
    .line 113
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [J

    move-object v8, v0

    check-cast v8, [J

    .line 119
    .local v8, size:[J
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v1, 0x0

    aget-wide v1, v8, v1

    const/4 v3, 0x1

    aget-wide v3, v8, v3

    const/4 v5, 0x2

    aget-wide v5, v8, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->updateApproximate(JJJ)V

    goto :goto_0

    .line 123
    .end local v8           #size:[J
    :pswitch_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .line 124
    .local v7, details:Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;
    sget-boolean v0, Lcom/android/lgesettings/deviceinfo/Memory;->isVZWOperator:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v0, v7}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->updateDetails_vzw(Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v0, v7}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->updateDetails(Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
