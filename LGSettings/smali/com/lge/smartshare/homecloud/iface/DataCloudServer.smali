.class public Lcom/lge/smartshare/homecloud/iface/DataCloudServer;
.super Ljava/lang/Object;
.source "DataCloudServer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/smartshare/homecloud/iface/DataCloudServer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:Ljava/lang/String;

.field private isSameNet:I

.field private isSelected:I

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/lge/smartshare/homecloud/iface/DataCloudServer$1;

    invoke-direct {v0}, Lcom/lge/smartshare/homecloud/iface/DataCloudServer$1;-><init>()V

    sput-object v0, Lcom/lge/smartshare/homecloud/iface/DataCloudServer;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v1, p0, Lcom/lge/smartshare/homecloud/iface/DataCloudServer;->id:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/lge/smartshare/homecloud/iface/DataCloudServer;->name:Ljava/lang/String;

    .line 13
    iput v0, p0, Lcom/lge/smartshare/homecloud/iface/DataCloudServer;->isSameNet:I

    .line 14
    iput v0, p0, Lcom/lge/smartshare/homecloud/iface/DataCloudServer;->isSelected:I

    .line 34
    invoke-direct {p0, p1}, Lcom/lge/smartshare/homecloud/iface/DataCloudServer;->readFromParcel(Landroid/os/Parcel;)V

    .line 35
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/smartshare/homecloud/iface/DataCloudServer;->id:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/smartshare/homecloud/iface/DataCloudServer;->name:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/smartshare/homecloud/iface/DataCloudServer;->isSameNet:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/smartshare/homecloud/iface/DataCloudServer;->isSelected:I

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/smartshare/homecloud/iface/DataCloudServer;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/lge/smartshare/homecloud/iface/DataCloudServer;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget v0, p0, Lcom/lge/smartshare/homecloud/iface/DataCloudServer;->isSameNet:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v0, p0, Lcom/lge/smartshare/homecloud/iface/DataCloudServer;->isSelected:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    return-void
.end method
