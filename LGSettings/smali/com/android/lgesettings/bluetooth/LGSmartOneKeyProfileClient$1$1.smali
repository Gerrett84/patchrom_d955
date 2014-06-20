.class Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$1$1;
.super Landroid/os/Handler;
.source "LGSmartOneKeyProfileClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$1;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$1;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$1$1;->this$1:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 145
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 147
    :pswitch_0
    sget-object v2, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v3, "MESSAGE_DEVICE_CONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.bluetooth.device.action.LG_SMART_ONEKEY_DEVICECONNECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v1, intent:Landroid/content/Intent;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 150
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 151
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$1$1;->this$1:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$1;

    iget-object v2, v2, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$1;->this$0:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v2, v2, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mainContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
