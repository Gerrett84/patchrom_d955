.class public Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "SPRX.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:I


# instance fields
.field private dwCSeq:I

.field private dwTransId:I

.field private strMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "SPRX"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->ID:I

    .line 83
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX$1;

    invoke-direct {v0}, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX$1;-><init>()V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 35
    invoke-virtual {p0}, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->reset()V

    .line 36
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .parameter "dwTransId"
    .parameter "dwCSeq"
    .parameter "strMessage"

    .prologue
    .line 40
    sget v0, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->setReceivedInfo(IILjava/lang/String;)V

    .line 42
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 98
    sget v0, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->dwTransId:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->dwCSeq:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->strMessage:Ljava/lang/String;

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/carrieriq/iqagent/client/metrics/sp/SPRX$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->dwTransId:I

    .line 64
    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->dwCSeq:I

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->strMessage:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 115
    iget v1, p0, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->dwTransId:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 116
    iget v1, p0, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->dwCSeq:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 117
    iget-object v1, p0, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->strMessage:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 118
    .local v0, length:I
    :goto_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 119
    if-lez v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->strMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 122
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    return v1

    .line 117
    .end local v0           #length:I
    :cond_1
    iget-object v1, p0, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->strMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public setReceivedInfo(IILjava/lang/String;)V
    .locals 0
    .parameter "dwTransId"
    .parameter "dwCSeq"
    .parameter "strMessage"

    .prologue
    .line 54
    iput p1, p0, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->dwTransId:I

    .line 55
    iput p2, p0, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->dwCSeq:I

    .line 56
    iput-object p3, p0, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->strMessage:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->ID:I

    invoke-static {v1}, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->idToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ndwTransId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->dwTransId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ndwCSeq : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->dwCSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nstrMessage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->strMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 77
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->dwTransId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->dwCSeq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/sp/SPRX;->strMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return-void
.end method
