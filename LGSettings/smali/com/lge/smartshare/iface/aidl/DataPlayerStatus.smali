.class public Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;
.super Ljava/lang/Object;
.source "DataPlayerStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private maxPosition:I

.field private position:I

.field private state:I

.field private volumeInfo:Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/lge/smartshare/iface/aidl/DataPlayerStatus$1;

    invoke-direct {v0}, Lcom/lge/smartshare/iface/aidl/DataPlayerStatus$1;-><init>()V

    sput-object v0, Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;->state:I

    .line 21
    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;->position:I

    .line 22
    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;->maxPosition:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;->volumeInfo:Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;

    .line 44
    invoke-direct {p0, p1}, Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;->readFromParcel(Landroid/os/Parcel;)V

    .line 45
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;->state:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;->position:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;->maxPosition:I

    .line 62
    const-class v0, Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;->volumeInfo:Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;

    .line 63
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;->position:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;->state:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 52
    iget v0, p0, Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v0, p0, Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;->maxPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;->volumeInfo:Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 56
    return-void
.end method
