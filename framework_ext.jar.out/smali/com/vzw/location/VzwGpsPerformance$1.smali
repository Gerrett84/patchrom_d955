.class Lcom/vzw/location/VzwGpsPerformance$1;
.super Ljava/lang/Object;
.source "VzwGpsPerformance.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsPerformance;
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
        "Lcom/vzw/location/VzwGpsPerformance;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwGpsPerformance;
    .locals 3
    .parameter "parcel"

    .prologue
    .line 85
    new-instance v0, Lcom/vzw/location/VzwGpsPerformance;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsPerformance;-><init>()V

    .line 86
    .local v0, vz:Lcom/vzw/location/VzwGpsPerformance;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    #setter for: Lcom/vzw/location/VzwGpsPerformance;->mHorizontalAccuracy:J
    invoke-static {v0, v1, v2}, Lcom/vzw/location/VzwGpsPerformance;->access$0(Lcom/vzw/location/VzwGpsPerformance;J)V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    #setter for: Lcom/vzw/location/VzwGpsPerformance;->mVerticalAccuracy:J
    invoke-static {v0, v1, v2}, Lcom/vzw/location/VzwGpsPerformance;->access$1(Lcom/vzw/location/VzwGpsPerformance;J)V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    #setter for: Lcom/vzw/location/VzwGpsPerformance;->mPreferredResponseTime:J
    invoke-static {v0, v1, v2}, Lcom/vzw/location/VzwGpsPerformance;->access$2(Lcom/vzw/location/VzwGpsPerformance;J)V

    .line 89
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsPerformance$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vzw/location/VzwGpsPerformance;
    .locals 1
    .parameter "size"

    .prologue
    .line 93
    new-array v0, p1, [Lcom/vzw/location/VzwGpsPerformance;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsPerformance$1;->newArray(I)[Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v0

    return-object v0
.end method
