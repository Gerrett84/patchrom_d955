.class public Lcom/carrieriq/iqagent/client/metrics/ui/UI37;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "UI37.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwRunAppID:I

.field public dwTotalRxBytes:I

.field public dwTotalTxBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "UI37"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/ui/UI37;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI37;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI37;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 62
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
    .line 65
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI37;->dwRunAppID:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 66
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI37;->dwTotalTxBytes:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 67
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI37;->dwTotalRxBytes:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 68
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
