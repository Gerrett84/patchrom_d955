.class public Lcom/carrieriq/iqagent/client/metrics/rp/RP12;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "RP12.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/carrieriq/iqagent/client/metrics/rp/RP12;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:I


# instance fields
.field private dwByteCount:I

.field private dwDuration:I

.field private dwPktCount:I

.field private dwPktLoss:I

.field private dwSsrc:I

.field private strIpSrcAddr:Ljava/lang/String;

.field private ucIpVersion:B

.field private ucMediaType:B

.field private wCumAvgPktSize:S

.field private wDstPort:S

.field private wMaxDelta:S

.field private wMaxJitter:S

.field private wMeanJitter:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "RP12"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->ID:I

    .line 226
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12$1;

    invoke-direct {v0}, Lcom/carrieriq/iqagent/client/metrics/rp/RP12$1;-><init>()V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 65
    invoke-virtual {p0}, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->reset()V

    .line 66
    return-void
.end method

.method public constructor <init>(IIIIISSSSSBBLjava/lang/String;)V
    .locals 1
    .parameter "dwSsrc"
    .parameter "dwDuration"
    .parameter "dwPktCount"
    .parameter "dwPktLoss"
    .parameter "dwByteCount"
    .parameter "wDstPort"
    .parameter "wMeanJitter"
    .parameter "wMaxJitter"
    .parameter "wMaxDelta"
    .parameter "wCumAvgPktSize"
    .parameter "ucMediaType"
    .parameter "ucIpVersion"
    .parameter "strIpSrcAddr"

    .prologue
    .line 72
    sget v0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 73
    invoke-virtual/range {p0 .. p13}, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->setReceiveStatistics(IIIIISSSSSBBLjava/lang/String;)V

    .line 75
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 241
    sget v0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwSsrc:I

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwDuration:I

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwPktCount:I

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwPktLoss:I

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwByteCount:I

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wDstPort:S

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wMeanJitter:S

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wMaxJitter:S

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wMaxDelta:S

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wCumAvgPktSize:S

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->ucMediaType:B

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->ucIpVersion:B

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->strIpSrcAddr:Ljava/lang/String;

    .line 255
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/carrieriq/iqagent/client/metrics/rp/RP12$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 186
    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwSsrc:I

    .line 187
    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwDuration:I

    .line 188
    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwPktCount:I

    .line 189
    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwPktLoss:I

    .line 190
    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwByteCount:I

    .line 191
    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wDstPort:S

    .line 192
    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wMeanJitter:S

    .line 193
    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wMaxJitter:S

    .line 194
    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wMaxDelta:S

    .line 195
    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wCumAvgPktSize:S

    .line 196
    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->ucMediaType:B

    .line 197
    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->ucIpVersion:B

    .line 198
    const-string v0, ""

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->strIpSrcAddr:Ljava/lang/String;

    .line 199
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
    .line 280
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwSsrc:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 281
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwDuration:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 282
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwPktCount:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 283
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwPktLoss:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 284
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwByteCount:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 285
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wDstPort:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 286
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wMeanJitter:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 287
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wMaxJitter:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 288
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wMaxDelta:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 289
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wCumAvgPktSize:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 290
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->ucMediaType:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 291
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->ucIpVersion:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 292
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->strIpSrcAddr:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public setReceiveStatistics(IIIIISSSSSBBLjava/lang/String;)V
    .locals 0
    .parameter "dwSsrc"
    .parameter "dwDuration"
    .parameter "dwPktCount"
    .parameter "dwPktLoss"
    .parameter "dwByteCount"
    .parameter "wDstPort"
    .parameter "wMeanJitter"
    .parameter "wMaxJitter"
    .parameter "wMaxDelta"
    .parameter "wCumAvgPktSize"
    .parameter "ucMediaType"
    .parameter "ucIpVersion"
    .parameter "strIpSrcAddr"

    .prologue
    .line 167
    iput p1, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwSsrc:I

    .line 168
    iput p2, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwDuration:I

    .line 169
    iput p3, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwPktCount:I

    .line 170
    iput p4, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwPktLoss:I

    .line 171
    iput p5, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwByteCount:I

    .line 172
    iput-short p6, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wDstPort:S

    .line 173
    iput-short p7, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wMeanJitter:S

    .line 174
    iput-short p8, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wMaxJitter:S

    .line 175
    iput-short p9, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wMaxDelta:S

    .line 176
    iput-short p10, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wCumAvgPktSize:S

    .line 177
    iput-byte p11, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->ucMediaType:B

    .line 178
    iput-byte p12, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->ucIpVersion:B

    .line 179
    iput-object p13, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->strIpSrcAddr:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 261
    .local v0, strbuilder:Ljava/lang/StringBuilder;
    const-string v1, "ID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->ID:I

    invoke-static {v1}, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->idToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v1, "\ndwSsrc : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwSsrc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    const-string v1, "\ndwDuration : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    const-string v1, "\ndwPktCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwPktCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    const-string v1, "\ndwPktLoss : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwPktLoss:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, "\ndwByteCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwByteCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    const-string v1, "\nwDstPort : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wDstPort:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    const-string v1, "\nwMeanJitter : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wMeanJitter:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    const-string v1, "\nwMaxJitter : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wMaxJitter:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    const-string v1, "\nwMaxDelta : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wMaxDelta:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    const-string v1, "\nwCumAvgPktSize : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wCumAvgPktSize:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    const-string v1, "\nucMediaType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->ucMediaType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    const-string v1, "\nucIpVersion : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->ucIpVersion:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    const-string v1, "\nstrIpSrcAddr : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->strIpSrcAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 210
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwSsrc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwPktCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwPktLoss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->dwByteCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wDstPort:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wMeanJitter:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wMaxJitter:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wMaxDelta:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->wCumAvgPktSize:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->ucMediaType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 221
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->ucIpVersion:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 222
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/rp/RP12;->strIpSrcAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    return-void
.end method
