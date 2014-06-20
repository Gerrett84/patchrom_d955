.class public Lcom/carrieriq/iqagent/client/metrics/rp/RP11;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "RP11.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/carrieriq/iqagent/client/metrics/rp/RP11;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:I


# instance fields
.field private dwByteCount:I

.field private dwDuration:I

.field private dwPktCount:I

.field private dwSsrc:I

.field private strIpDstAddr:Ljava/lang/String;

.field private ucIpVersion:B

.field private ucMediaType:B

.field private wDstPort:S

.field private wMeanJitter:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "RP11"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->ID:I

    .line 173
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11$1;

    invoke-direct {v0}, Lcom/carrieriq/iqagent/client/metrics/rp/RP11$1;-><init>()V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 57
    invoke-virtual {p0}, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->reset()V

    .line 58
    return-void
.end method

.method public constructor <init>(IIIISSBBLjava/lang/String;)V
    .locals 1
    .parameter "dwSsrc"
    .parameter "dwDuration"
    .parameter "dwPktCount"
    .parameter "dwByteCount"
    .parameter "wDstPort"
    .parameter "wMeanJitter"
    .parameter "ucMediaType"
    .parameter "ucIpVersion"
    .parameter "strIpDstAddr"

    .prologue
    .line 63
    sget v0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 64
    invoke-virtual/range {p0 .. p9}, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->setTransmitStatistics(IIIISSBBLjava/lang/String;)V

    .line 66
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 188
    sget v0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->dwSsrc:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->dwDuration:I

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->dwPktCount:I

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->dwByteCount:I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->wDstPort:S

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->wMeanJitter:S

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->ucMediaType:B

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->ucIpVersion:B

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->strIpDstAddr:Ljava/lang/String;

    .line 198
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/carrieriq/iqagent/client/metrics/rp/RP11$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->dwSsrc:I

    .line 142
    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->dwDuration:I

    .line 143
    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->dwPktCount:I

    .line 144
    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->dwByteCount:I

    .line 145
    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->wDstPort:S

    .line 146
    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->wMeanJitter:S

    .line 147
    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->ucMediaType:B

    .line 148
    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->ucIpVersion:B

    .line 149
    const-string v0, ""

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->strIpDstAddr:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 219
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->dwSsrc:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 220
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->dwDuration:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 221
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->dwPktCount:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 222
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->dwByteCount:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 223
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->wDstPort:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 224
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->wMeanJitter:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 225
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->ucMediaType:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 226
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->ucIpVersion:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 227
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->strIpDstAddr:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public setTransmitStatistics(IIIISSBBLjava/lang/String;)V
    .locals 0
    .parameter "dwSsrc"
    .parameter "dwDuration"
    .parameter "dwPktCount"
    .parameter "dwByteCount"
    .parameter "wDstPort"
    .parameter "wMeanJitter"
    .parameter "ucMediaType"
    .parameter "ucIpVersion"
    .parameter "strIpDstAddr"

    .prologue
    .line 126
    iput p1, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->dwSsrc:I

    .line 127
    iput p2, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->dwDuration:I

    .line 128
    iput p3, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->dwPktCount:I

    .line 129
    iput p4, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->dwByteCount:I

    .line 130
    iput-short p5, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->wDstPort:S

    .line 131
    iput-short p6, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->wMeanJitter:S

    .line 132
    iput-byte p7, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->ucMediaType:B

    .line 133
    iput-byte p8, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->ucIpVersion:B

    .line 134
    iput-object p9, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->strIpDstAddr:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 204
    .local v0, strbuilder:Ljava/lang/StringBuilder;
    const-string v1, "ID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->ID:I

    invoke-static {v1}, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->idToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v1, "\ndwSsrc : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->dwSsrc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    const-string v1, "\ndwDuration : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->dwDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    const-string v1, "\ndwPktCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->dwPktCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    const-string v1, "\ndwByteCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->dwByteCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    const-string v1, "\nwDstPort : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->wDstPort:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    const-string v1, "\nwMeanJitter : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->wMeanJitter:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, "\nucMediaType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->ucMediaType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    const-string v1, "\nucIpVersion : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->ucIpVersion:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    const-string v1, "\nstrIpDstAddr : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->strIpDstAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 161
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->dwSsrc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->dwDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->dwPktCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->dwByteCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->wDstPort:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->wMeanJitter:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->ucMediaType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 168
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->ucIpVersion:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 169
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP11;->strIpDstAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    return-void
.end method
