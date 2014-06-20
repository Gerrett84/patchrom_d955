.class Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;
.super Ljava/lang/Object;
.source "MM07.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/carrieriq/iqagent/client/metrics/mm/MM07;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RtpStats"
.end annotation


# instance fields
.field private dwDuration:I

.field private dwPacketsDrop:I

.field private dwPacketsLate:I

.field private dwPacketsRcvd:I

.field final synthetic this$0:Lcom/carrieriq/iqagent/client/metrics/mm/MM07;

.field private ucFormat:B

.field private ucMediaType:B


# direct methods
.method private constructor <init>(Lcom/carrieriq/iqagent/client/metrics/mm/MM07;BB)V
    .locals 0
    .parameter
    .parameter "mediaType"
    .parameter "format"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->this$0:Lcom/carrieriq/iqagent/client/metrics/mm/MM07;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-byte p2, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->ucMediaType:B

    .line 229
    iput-byte p3, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->ucFormat:B

    .line 230
    return-void
.end method

.method synthetic constructor <init>(Lcom/carrieriq/iqagent/client/metrics/mm/MM07;BBLcom/carrieriq/iqagent/client/metrics/mm/MM07$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 219
    invoke-direct {p0, p1, p2, p3}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;-><init>(Lcom/carrieriq/iqagent/client/metrics/mm/MM07;BB)V

    return-void
.end method

.method static synthetic access$100(Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 219
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->set(IIII)V

    return-void
.end method

.method static synthetic access$200(Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;)B
    .locals 1
    .parameter "x0"

    .prologue
    .line 219
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->ucMediaType:B

    return v0
.end method

.method static synthetic access$300(Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;)B
    .locals 1
    .parameter "x0"

    .prologue
    .line 219
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->ucFormat:B

    return v0
.end method

.method static synthetic access$400(Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 219
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->dwDuration:I

    return v0
.end method

.method static synthetic access$500(Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 219
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->dwPacketsRcvd:I

    return v0
.end method

.method static synthetic access$600(Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 219
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->dwPacketsDrop:I

    return v0
.end method

.method static synthetic access$700(Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 219
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->dwPacketsLate:I

    return v0
.end method

.method static synthetic access$900(Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->serialize(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private serialize(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 240
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->ucMediaType:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 241
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->ucFormat:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 242
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->dwDuration:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 243
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->dwPacketsRcvd:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 244
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->dwPacketsDrop:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 245
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->dwPacketsLate:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 246
    return-void
.end method

.method private set(IIII)V
    .locals 0
    .parameter "duration"
    .parameter "packetsRcvd"
    .parameter "packetsDropped"
    .parameter "packetsLate"

    .prologue
    .line 233
    iput p1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->dwDuration:I

    .line 234
    iput p2, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->dwPacketsRcvd:I

    .line 235
    iput p3, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->dwPacketsDrop:I

    .line 236
    iput p4, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->dwPacketsLate:I

    .line 237
    return-void
.end method
