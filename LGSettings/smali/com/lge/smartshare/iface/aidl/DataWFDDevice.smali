.class public Lcom/lge/smartshare/iface/aidl/DataWFDDevice;
.super Ljava/lang/Object;
.source "DataWFDDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/smartshare/iface/aidl/DataWFDDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private networkType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/lge/smartshare/iface/aidl/DataWFDDevice$1;

    invoke-direct {v0}, Lcom/lge/smartshare/iface/aidl/DataWFDDevice$1;-><init>()V

    sput-object v0, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->id:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->name:Ljava/lang/String;

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->networkType:I

    .line 37
    invoke-direct {p0, p1}, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->readFromParcel(Landroid/os/Parcel;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "id"
    .parameter "name"
    .parameter "networkType"

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->id:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->name:Ljava/lang/String;

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->networkType:I

    .line 27
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    .line 31
    :cond_1
    iput-object p1, p0, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->id:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->name:Ljava/lang/String;

    .line 33
    iput p3, p0, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->networkType:I

    .line 34
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->id:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->name:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->networkType:I

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->name:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget v0, p0, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->networkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    return-void
.end method
