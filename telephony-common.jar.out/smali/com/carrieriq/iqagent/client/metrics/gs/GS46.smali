.class public Lcom/carrieriq/iqagent/client/metrics/gs/GS46;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "GS46.java"


# static fields
.field public static final ID:I


# instance fields
.field public ucAccessTech:B

.field public ucFieldValidity:B

.field public ucFreqBand:B

.field public ucRAC:B

.field public wCellId:S

.field public wLAC:S

.field public wMCC:S

.field public wMNC:S

.field public wRNCId:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "GS46"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 67
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    .line 68
    return-void
.end method

.method public constructor <init>(BB)V
    .locals 1
    .parameter "tech"
    .parameter "band"

    .prologue
    .line 71
    sget v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 72
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    .line 73
    iput-byte p1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucAccessTech:B

    .line 74
    iput-byte p2, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFreqBand:B

    .line 75
    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 148
    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    .line 149
    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucRAC:B

    .line 150
    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucAccessTech:B

    .line 151
    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFreqBand:B

    .line 152
    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wMCC:S

    .line 153
    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wMNC:S

    .line 154
    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wCellId:S

    .line 155
    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wLAC:S

    .line 156
    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wRNCId:S

    .line 157
    return-void
.end method

.method public compareTo(Lcom/carrieriq/iqagent/client/metrics/gs/GS46;)Z
    .locals 3
    .parameter "otherGs46"

    .prologue
    const/4 v0, 0x0

    .line 90
    if-nez p1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    iget-byte v1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    iget-byte v2, p1, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    if-ne v1, v2, :cond_0

    .line 92
    iget-byte v1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucAccessTech:B

    iget-byte v2, p1, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucAccessTech:B

    if-ne v1, v2, :cond_0

    .line 93
    iget-byte v1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFreqBand:B

    iget-byte v2, p1, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFreqBand:B

    if-ne v1, v2, :cond_0

    .line 94
    iget-byte v1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    iget-byte v1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucRAC:B

    iget-byte v2, p1, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucRAC:B

    if-ne v1, v2, :cond_0

    .line 96
    :cond_2
    iget-byte v1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_3

    iget-short v1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wRNCId:S

    iget-short v2, p1, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wRNCId:S

    if-ne v1, v2, :cond_0

    .line 98
    :cond_3
    iget-byte v1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    iget-short v1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wMCC:S

    iget-short v2, p1, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wMCC:S

    if-ne v1, v2, :cond_0

    .line 100
    :cond_4
    iget-byte v1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    iget-short v1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wMNC:S

    iget-short v2, p1, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wMNC:S

    if-ne v1, v2, :cond_0

    .line 102
    :cond_5
    iget-byte v1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    iget-short v1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wLAC:S

    iget-short v2, p1, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wLAC:S

    if-ne v1, v2, :cond_0

    .line 104
    :cond_6
    iget-byte v1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    iget-short v1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wCellId:S

    iget-short v2, p1, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wCellId:S

    if-ne v1, v2, :cond_0

    .line 106
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dupe(Lcom/carrieriq/iqagent/client/metrics/gs/GS46;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 78
    iget-byte v0, p1, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    .line 79
    iget-byte v0, p1, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucRAC:B

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucRAC:B

    .line 80
    iget-byte v0, p1, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucAccessTech:B

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucAccessTech:B

    .line 81
    iget-byte v0, p1, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFreqBand:B

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFreqBand:B

    .line 82
    iget-short v0, p1, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wMCC:S

    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wMCC:S

    .line 83
    iget-short v0, p1, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wMNC:S

    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wMNC:S

    .line 84
    iget-short v0, p1, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wLAC:S

    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wLAC:S

    .line 85
    iget-short v0, p1, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wCellId:S

    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wCellId:S

    .line 86
    iget-short v0, p1, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wRNCId:S

    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wRNCId:S

    .line 87
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
    .line 160
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 161
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucRAC:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 162
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucAccessTech:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 163
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFreqBand:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 164
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wMCC:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 165
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wMNC:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 166
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wLAC:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 167
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wCellId:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 168
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wRNCId:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 169
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public setCellId(S)V
    .locals 1
    .parameter "cellId"

    .prologue
    .line 135
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    .line 136
    iput-short p1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wCellId:S

    .line 137
    return-void
.end method

.method public setLAC(S)V
    .locals 1
    .parameter "lac"

    .prologue
    .line 130
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    .line 131
    iput-short p1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wLAC:S

    .line 132
    return-void
.end method

.method public setMCC(S)V
    .locals 1
    .parameter "mcc"

    .prologue
    .line 120
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    .line 121
    iput-short p1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wMCC:S

    .line 122
    return-void
.end method

.method public setMNC(S)V
    .locals 1
    .parameter "mnc"

    .prologue
    .line 125
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    .line 126
    iput-short p1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wMNC:S

    .line 127
    return-void
.end method

.method public setRAC(B)V
    .locals 1
    .parameter "rac"

    .prologue
    .line 110
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    .line 111
    iput-byte p1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucRAC:B

    .line 112
    return-void
.end method

.method public setRNCId(B)V
    .locals 1
    .parameter "rncId"

    .prologue
    .line 115
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    .line 116
    int-to-short v0, p1

    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wRNCId:S

    .line 117
    return-void
.end method

.method public setRoaming(B)V
    .locals 1
    .parameter "roaming"

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 141
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    and-int/lit16 v0, v0, -0x81

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    goto :goto_0
.end method
