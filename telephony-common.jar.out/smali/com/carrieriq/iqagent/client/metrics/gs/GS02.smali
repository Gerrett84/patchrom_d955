.class public Lcom/carrieriq/iqagent/client/metrics/gs/GS02;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "GS02.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwCallId:I

.field public ucCallState:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "GS02"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 61
    return-void
.end method

.method public constructor <init>(IB)V
    .locals 1
    .parameter "callId"
    .parameter "callState"

    .prologue
    .line 65
    sget v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 66
    iput p1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->dwCallId:I

    .line 67
    iput-byte p2, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->ucCallState:B

    .line 68
    return-void
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
    .line 72
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->dwCallId:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 73
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->ucCallState:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 74
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
