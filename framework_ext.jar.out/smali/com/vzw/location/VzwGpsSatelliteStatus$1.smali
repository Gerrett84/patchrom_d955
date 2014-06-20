.class Lcom/vzw/location/VzwGpsSatelliteStatus$1;
.super Ljava/lang/Object;
.source "VzwGpsSatelliteStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsSatelliteStatus;
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
        "Lcom/vzw/location/VzwGpsSatelliteStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwGpsSatelliteStatus;
    .locals 4
    .parameter "parcel"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 80
    new-instance v0, Lcom/vzw/location/VzwGpsSatelliteStatus;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsSatelliteStatus;-><init>()V

    .line 81
    .local v0, vz:Lcom/vzw/location/VzwGpsSatelliteStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mPrn:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    iput-boolean v2, v0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    .line 85
    return-object v0

    :cond_0
    move v1, v3

    .line 83
    goto :goto_0

    :cond_1
    move v2, v3

    .line 84
    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsSatelliteStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwGpsSatelliteStatus;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vzw/location/VzwGpsSatelliteStatus;
    .locals 1
    .parameter "size"

    .prologue
    .line 89
    new-array v0, p1, [Lcom/vzw/location/VzwGpsSatelliteStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsSatelliteStatus$1;->newArray(I)[Lcom/vzw/location/VzwGpsSatelliteStatus;

    move-result-object v0

    return-object v0
.end method
