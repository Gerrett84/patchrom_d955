.class Lcom/vzw/location/VzwCriteria$1;
.super Ljava/lang/Object;
.source "VzwCriteria.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwCriteria;
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
        "Lcom/vzw/location/VzwCriteria;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwCriteria;
    .locals 2
    .parameter "parcel"

    .prologue
    .line 117
    new-instance v0, Lcom/vzw/location/VzwCriteria;

    sget-object v1, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Criteria;

    invoke-direct {v0, v1}, Lcom/vzw/location/VzwCriteria;-><init>(Landroid/location/Criteria;)V

    .line 118
    .local v0, vz:Lcom/vzw/location/VzwCriteria;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/vzw/location/VzwCriteria;->mFixMode:I
    invoke-static {v0, v1}, Lcom/vzw/location/VzwCriteria;->access$0(Lcom/vzw/location/VzwCriteria;I)V

    .line 119
    sget-object v1, Lcom/vzw/location/VzwGpsPerformance;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwGpsPerformance;

    #setter for: Lcom/vzw/location/VzwCriteria;->mPerformance:Lcom/vzw/location/VzwGpsPerformance;
    invoke-static {v0, v1}, Lcom/vzw/location/VzwCriteria;->access$1(Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/VzwGpsPerformance;)V

    .line 120
    sget-object v1, Lcom/vzw/location/VzwGpsFixRate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwGpsFixRate;

    #setter for: Lcom/vzw/location/VzwCriteria;->mFixRate:Lcom/vzw/location/VzwGpsFixRate;
    invoke-static {v0, v1}, Lcom/vzw/location/VzwCriteria;->access$2(Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/VzwGpsFixRate;)V

    .line 121
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwCriteria$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwCriteria;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vzw/location/VzwCriteria;
    .locals 1
    .parameter "size"

    .prologue
    .line 125
    new-array v0, p1, [Lcom/vzw/location/VzwCriteria;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwCriteria$1;->newArray(I)[Lcom/vzw/location/VzwCriteria;

    move-result-object v0

    return-object v0
.end method
