.class public Lcom/carrieriq/iqagent/client/Metric;
.super Ljava/lang/Object;
.source "Metric.java"


# static fields
.field public static final CURRENT_TIME:J = -0x1L


# instance fields
.field public metricID:I

.field public timestamp:J


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "_metricID"

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lcom/carrieriq/iqagent/client/Metric;->metricID:I

    .line 82
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/carrieriq/iqagent/client/Metric;->timestamp:J

    .line 83
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0
    .parameter "_metricID"
    .parameter "_ts"

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/carrieriq/iqagent/client/Metric;->metricID:I

    .line 87
    iput-wide p2, p0, Lcom/carrieriq/iqagent/client/Metric;->timestamp:J

    .line 88
    return-void
.end method

.method public static idFromString(Ljava/lang/String;)I
    .locals 3
    .parameter "_id"

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 64
    :goto_0
    return v0

    .line 60
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v1, 0x18

    .line 61
    .local v0, id:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 62
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 63
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 64
    goto :goto_0
.end method

.method public static idToBytes(I[BI)V
    .locals 2
    .parameter "_id"
    .parameter "array"
    .parameter "offset"

    .prologue
    .line 68
    add-int/lit8 v0, p2, 0x0

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 69
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 70
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 71
    add-int/lit8 v0, p2, 0x3

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 72
    return-void
.end method

.method public static idToString(I)Ljava/lang/String;
    .locals 4
    .parameter "_id"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 75
    new-array v0, v3, [B

    .line 76
    .local v0, bytes:[B
    invoke-static {p0, v0, v2}, Lcom/carrieriq/iqagent/client/Metric;->idToBytes(I[BI)V

    .line 77
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v1
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public setTimestamp(J)V
    .locals 0
    .parameter "_ts"

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/carrieriq/iqagent/client/Metric;->timestamp:J

    .line 92
    return-void
.end method

.method public szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 3
    .parameter "out"
    .parameter "iString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 95
    if-eqz p2, :cond_0

    .line 97
    const/16 v1, 0x5f

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, aString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 100
    .end local v0           #aString:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 101
    return-void
.end method

.method public szStringOutPadToWord(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 3
    .parameter "out"
    .parameter "aString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 105
    .local v1, startPos:I
    invoke-virtual {p0, p1, p2}, Lcom/carrieriq/iqagent/client/Metric;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v2, v1

    rem-int/lit8 v0, v2, 0x4

    .line 107
    .local v0, padding:I
    if-eqz v0, :cond_0

    .line 108
    rsub-int/lit8 v0, v0, 0x4

    .line 110
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 111
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 112
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 114
    :cond_1
    return-void
.end method
