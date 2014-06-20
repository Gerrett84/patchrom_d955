.class public Lcom/lge/smartshare/iface/aidl/DataRenderer;
.super Ljava/lang/Object;
.source "DataRenderer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/smartshare/iface/aidl/DataRenderer;",
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
    .line 60
    new-instance v0, Lcom/lge/smartshare/iface/aidl/DataRenderer$1;

    invoke-direct {v0}, Lcom/lge/smartshare/iface/aidl/DataRenderer$1;-><init>()V

    sput-object v0, Lcom/lge/smartshare/iface/aidl/DataRenderer;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataRenderer;->id:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataRenderer;->name:Ljava/lang/String;

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataRenderer;->networkType:I

    .line 41
    invoke-direct {p0, p1}, Lcom/lge/smartshare/iface/aidl/DataRenderer;->readFromParcel(Landroid/os/Parcel;)V

    .line 42
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataRenderer;->id:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataRenderer;->name:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataRenderer;->networkType:I

    .line 58
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataRenderer;->id:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataRenderer;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataRenderer;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget v0, p0, Lcom/lge/smartshare/iface/aidl/DataRenderer;->networkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    return-void
.end method
