.class Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$CheckConnectionStateHandler;
.super Landroid/os/Handler;
.source "BluetoothDevicePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckConnectionStateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$CheckConnectionStateHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 108
    :pswitch_0
    const-string v0, "BluetoothDevicePreference"

    const-string v1, "[BTUI] MSG_CHECK_CONNECTION_STATE_AFTER_CREATED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$CheckConnectionStateHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$000(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "BluetoothDevicePreference"

    const-string v1, "[BTUI] Update onDeviceAttributesChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$CheckConnectionStateHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->onDeviceAttributesChanged()V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
