.class public Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;
.super Ljava/lang/Object;
.source "DataRendererUsageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public packageName:Ljava/lang/String;

.field public playerId:I

.field public rendererId:Ljava/lang/String;

.field public rendererName:Ljava/lang/String;

.field public rendererState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo$1;

    invoke-direct {v0}, Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo$1;-><init>()V

    sput-object v0, Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;->packageName:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;->rendererId:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;->rendererName:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;->rendererState:I

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;->playerId:I

    .line 39
    invoke-direct {p0, p1}, Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 40
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;->packageName:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;->rendererId:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;->rendererName:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;->rendererState:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;->playerId:I

    .line 60
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;->rendererId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;->rendererName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget v0, p0, Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;->rendererState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v0, p0, Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;->playerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    return-void
.end method
