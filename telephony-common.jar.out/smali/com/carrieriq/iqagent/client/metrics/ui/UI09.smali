.class public Lcom/carrieriq/iqagent/client/metrics/ui/UI09;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "UI09.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final ID:I = 0x0

.field public static final IQ_BATTERY_UNKNOWN:B = -0x1t


# instance fields
.field public ucBatteryPercentage:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "UI09"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/ui/UI09;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI09;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI09;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 62
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI09;->ucBatteryPercentage:B

    .line 63
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1
    .parameter "_ucBatteryPercentage"

    .prologue
    .line 66
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI09;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 67
    iput-byte p1, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI09;->ucBatteryPercentage:B

    .line 68
    return-void
.end method

.method public constructor <init>(BB)V
    .locals 1
    .parameter "_ucBatteryDisplay"
    .parameter "_ucBatteryPercentage"

    .prologue
    .line 71
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI09;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 72
    iput-byte p2, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI09;->ucBatteryPercentage:B

    .line 73
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
    .line 76
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 77
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI09;->ucBatteryPercentage:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 78
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
