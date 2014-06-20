.class public Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;
.super Ljava/lang/Object;
.source "DataVolumeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private current:I

.field private max:I

.field private min:I

.field private step:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/lge/smartshare/iface/aidl/DataVolumeInfo$1;

    invoke-direct {v0}, Lcom/lge/smartshare/iface/aidl/DataVolumeInfo$1;-><init>()V

    sput-object v0, Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;->min:I

    .line 12
    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;->max:I

    .line 13
    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;->step:I

    .line 14
    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;->current:I

    .line 32
    invoke-direct {p0, p1}, Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 33
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;->min:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;->max:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;->step:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;->current:I

    .line 51
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 40
    iget v0, p0, Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;->min:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v0, p0, Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;->max:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v0, p0, Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;->step:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v0, p0, Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;->current:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    return-void
.end method
