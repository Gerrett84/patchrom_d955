.class final Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$HandsfreeFilter;
.super Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;
.source "BluetoothDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HandsfreeFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$HandsfreeFilter;-><init>()V

    return-void
.end method


# virtual methods
.method matches([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z
    .locals 2
    .parameter "uuids"
    .parameter "btClass"

    .prologue
    .line 211
    if-eqz p2, :cond_0

    .line 212
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    .line 213
    .local v0, scanFilterType:I
    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    .line 214
    const/4 v1, 0x1

    .line 217
    .end local v0           #scanFilterType:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
