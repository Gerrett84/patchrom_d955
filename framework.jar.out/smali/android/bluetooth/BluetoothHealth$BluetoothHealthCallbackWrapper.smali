.class Landroid/bluetooth/BluetoothHealth$BluetoothHealthCallbackWrapper;
.super Landroid/bluetooth/IBluetoothHealthCallback$Stub;
.source "BluetoothHealth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothHealthCallbackWrapper"
.end annotation


# instance fields
.field private mCallback:Landroid/bluetooth/BluetoothHealthCallback;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothHealthCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 459
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHealthCallback$Stub;-><init>()V

    .line 460
    iput-object p1, p0, Landroid/bluetooth/BluetoothHealth$BluetoothHealthCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHealthCallback;

    .line 461
    return-void
.end method


# virtual methods
.method public onHealthAppConfigurationStatusChange(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    .locals 1
    .parameter "config"
    .parameter "status"

    .prologue
    .line 466
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth$BluetoothHealthCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHealthCallback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothHealthCallback;->onHealthAppConfigurationStatusChange(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    .line 467
    return-void
.end method

.method public onHealthChannelStateChange(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V
    .locals 7
    .parameter "config"
    .parameter "device"
    .parameter "prevState"
    .parameter "newState"
    .parameter "fd"
    .parameter "channelId"

    .prologue
    .line 473
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth$BluetoothHealthCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHealthCallback;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/BluetoothHealthCallback;->onHealthChannelStateChange(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    .line 475
    return-void
.end method

.method public onHealthDeviceSinkDataTypeResult(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;[I)V
    .locals 1
    .parameter "config"
    .parameter "device"
    .parameter "dataTypes"

    .prologue
    .line 487
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth$BluetoothHealthCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHealthCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothHealthCallback;->onHealthDeviceSinkDataTypeResult(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;[I)V

    .line 488
    return-void
.end method

.method public onHealthDeviceSourceDataTypeResult(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;[I)V
    .locals 1
    .parameter "config"
    .parameter "device"
    .parameter "dataTypes"

    .prologue
    .line 481
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth$BluetoothHealthCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHealthCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothHealthCallback;->onHealthDeviceSourceDataTypeResult(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;[I)V

    .line 482
    return-void
.end method
