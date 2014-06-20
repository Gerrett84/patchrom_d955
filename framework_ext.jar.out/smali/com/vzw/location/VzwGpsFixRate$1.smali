.class Lcom/vzw/location/VzwGpsFixRate$1;
.super Ljava/lang/Object;
.source "VzwGpsFixRate.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsFixRate;
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
        "Lcom/vzw/location/VzwGpsFixRate;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwGpsFixRate;
    .locals 3
    .parameter "parcel"

    .prologue
    .line 67
    new-instance v0, Lcom/vzw/location/VzwGpsFixRate;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsFixRate;-><init>()V

    .line 68
    .local v0, vz:Lcom/vzw/location/VzwGpsFixRate;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    #setter for: Lcom/vzw/location/VzwGpsFixRate;->mNumFixes:J
    invoke-static {v0, v1, v2}, Lcom/vzw/location/VzwGpsFixRate;->access$0(Lcom/vzw/location/VzwGpsFixRate;J)V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    #setter for: Lcom/vzw/location/VzwGpsFixRate;->mTimeBetweenFixes:J
    invoke-static {v0, v1, v2}, Lcom/vzw/location/VzwGpsFixRate;->access$1(Lcom/vzw/location/VzwGpsFixRate;J)V

    .line 70
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsFixRate$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vzw/location/VzwGpsFixRate;
    .locals 1
    .parameter "size"

    .prologue
    .line 74
    new-array v0, p1, [Lcom/vzw/location/VzwGpsFixRate;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsFixRate$1;->newArray(I)[Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v0

    return-object v0
.end method
