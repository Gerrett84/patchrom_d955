.class Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi$5;
.super Landroid/content/BroadcastReceiver;
.source "DeviceInfoLgeHardwareWifi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi$5;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;

    #calls: Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->setWifiStatus()V
    invoke-static {v0}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->access$100(Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;)V

    .line 200
    return-void
.end method
