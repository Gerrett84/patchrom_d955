.class Lcom/vzw/location/VzwLocation$1;
.super Ljava/lang/Object;
.source "VzwLocation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwLocation;
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
        "Lcom/vzw/location/VzwLocation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 465
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwLocation;
    .locals 3
    .parameter "parcel"

    .prologue
    .line 467
    new-instance v0, Lcom/vzw/location/VzwLocation;

    sget-object v1, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vzw/location/VzwLocation;-><init>(Landroid/location/Location;Lcom/vzw/location/VzwLocation;)V

    .line 468
    .local v0, vz:Lcom/vzw/location/VzwLocation;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/vzw/location/VzwLocation;->mValidFields:I
    invoke-static {v0, v1}, Lcom/vzw/location/VzwLocation;->access$1(Lcom/vzw/location/VzwLocation;I)V

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    #setter for: Lcom/vzw/location/VzwLocation;->mHDOP:F
    invoke-static {v0, v1}, Lcom/vzw/location/VzwLocation;->access$2(Lcom/vzw/location/VzwLocation;F)V

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    #setter for: Lcom/vzw/location/VzwLocation;->mPDOP:F
    invoke-static {v0, v1}, Lcom/vzw/location/VzwLocation;->access$3(Lcom/vzw/location/VzwLocation;F)V

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    #setter for: Lcom/vzw/location/VzwLocation;->mVDOP:F
    invoke-static {v0, v1}, Lcom/vzw/location/VzwLocation;->access$4(Lcom/vzw/location/VzwLocation;F)V

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    #setter for: Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F
    invoke-static {v0, v1}, Lcom/vzw/location/VzwLocation;->access$5(Lcom/vzw/location/VzwLocation;F)V

    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    #setter for: Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F
    invoke-static {v0, v1}, Lcom/vzw/location/VzwLocation;->access$6(Lcom/vzw/location/VzwLocation;F)V

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    #setter for: Lcom/vzw/location/VzwLocation;->mHorConf:F
    invoke-static {v0, v1}, Lcom/vzw/location/VzwLocation;->access$7(Lcom/vzw/location/VzwLocation;F)V

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    #setter for: Lcom/vzw/location/VzwLocation;->mMajorAxis:F
    invoke-static {v0, v1}, Lcom/vzw/location/VzwLocation;->access$8(Lcom/vzw/location/VzwLocation;F)V

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    #setter for: Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F
    invoke-static {v0, v1}, Lcom/vzw/location/VzwLocation;->access$9(Lcom/vzw/location/VzwLocation;F)V

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    #setter for: Lcom/vzw/location/VzwLocation;->mMinorAxis:F
    invoke-static {v0, v1}, Lcom/vzw/location/VzwLocation;->access$10(Lcom/vzw/location/VzwLocation;F)V

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    #setter for: Lcom/vzw/location/VzwLocation;->mVerticalError:F
    invoke-static {v0, v1}, Lcom/vzw/location/VzwLocation;->access$11(Lcom/vzw/location/VzwLocation;F)V

    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/vzw/location/VzwLocation;->mFixMode:I
    invoke-static {v0, v1}, Lcom/vzw/location/VzwLocation;->access$12(Lcom/vzw/location/VzwLocation;I)V

    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    #setter for: Lcom/vzw/location/VzwLocation;->mMagVar:F
    invoke-static {v0, v1}, Lcom/vzw/location/VzwLocation;->access$13(Lcom/vzw/location/VzwLocation;F)V

    .line 481
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwLocation$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vzw/location/VzwLocation;
    .locals 1
    .parameter "size"

    .prologue
    .line 485
    new-array v0, p1, [Lcom/vzw/location/VzwLocation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwLocation$1;->newArray(I)[Lcom/vzw/location/VzwLocation;

    move-result-object v0

    return-object v0
.end method
