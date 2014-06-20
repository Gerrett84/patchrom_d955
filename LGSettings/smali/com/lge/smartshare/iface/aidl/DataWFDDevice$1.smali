.class Lcom/lge/smartshare/iface/aidl/DataWFDDevice$1;
.super Ljava/lang/Object;
.source "DataWFDDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/smartshare/iface/aidl/DataWFDDevice;
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
        "Lcom/lge/smartshare/iface/aidl/DataWFDDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/smartshare/iface/aidl/DataWFDDevice;
    .locals 1
    .parameter "in"

    .prologue
    .line 58
    new-instance v0, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    invoke-direct {v0, p1}, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/smartshare/iface/aidl/DataWFDDevice$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;
    .locals 1
    .parameter "size"

    .prologue
    .line 62
    new-array v0, p1, [Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/smartshare/iface/aidl/DataWFDDevice$1;->newArray(I)[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    move-result-object v0

    return-object v0
.end method
