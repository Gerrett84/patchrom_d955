.class public Lcom/carrieriq/iqagent/client/metrics/gs/GS47;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "GS47.java"


# static fields
.field public static final ID:I


# instance fields
.field public ucNetworkSvcState:B

.field public ucRadioSvcState:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "GS47"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/gs/GS47;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS47;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS47;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 61
    return-void
.end method

.method public constructor <init>(BB)V
    .locals 1
    .parameter "radioState"
    .parameter "networkState"

    .prologue
    .line 64
    sget v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS47;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 65
    iput-byte p1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS47;->ucRadioSvcState:B

    .line 66
    iput-byte p2, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS47;->ucNetworkSvcState:B

    .line 67
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
    .line 70
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS47;->ucRadioSvcState:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 71
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS47;->ucNetworkSvcState:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 72
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
