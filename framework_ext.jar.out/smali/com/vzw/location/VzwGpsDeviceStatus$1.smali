.class Lcom/vzw/location/VzwGpsDeviceStatus$1;
.super Ljava/lang/Object;
.source "VzwGpsDeviceStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsDeviceStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/vzw/location/VzwGpsDeviceStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 224
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwGpsDeviceStatus;
    .locals 3
    .parameter "parcel"

    .prologue
    .line 226
    new-instance v0, Lcom/vzw/location/VzwGpsDeviceStatus;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsDeviceStatus;-><init>()V

    .line 227
    .local v0, vz:Lcom/vzw/location/VzwGpsDeviceStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I
    invoke-static {v0, v1}, Lcom/vzw/location/VzwGpsDeviceStatus;->access$0(Lcom/vzw/location/VzwGpsDeviceStatus;I)V

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/vzw/location/VzwGpsDeviceStatus;->mHwState:I
    invoke-static {v0, v1}, Lcom/vzw/location/VzwGpsDeviceStatus;->access$1(Lcom/vzw/location/VzwGpsDeviceStatus;I)V

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I
    invoke-static {v0, v1}, Lcom/vzw/location/VzwGpsDeviceStatus;->access$2(Lcom/vzw/location/VzwGpsDeviceStatus;I)V

    .line 230
    #getter for: Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;
    invoke-static {v0}, Lcom/vzw/location/VzwGpsDeviceStatus;->access$3(Lcom/vzw/location/VzwGpsDeviceStatus;)[Lcom/vzw/location/VzwGpsSatelliteStatus;

    move-result-object v1

    sget-object v2, Lcom/vzw/location/VzwGpsSatelliteStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 231
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsDeviceStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwGpsDeviceStatus;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vzw/location/VzwGpsDeviceStatus;
    .locals 1
    .parameter "size"

    .prologue
    .line 235
    new-array v0, p1, [Lcom/vzw/location/VzwGpsDeviceStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsDeviceStatus$1;->newArray(I)[Lcom/vzw/location/VzwGpsDeviceStatus;

    move-result-object v0

    return-object v0
.end method
