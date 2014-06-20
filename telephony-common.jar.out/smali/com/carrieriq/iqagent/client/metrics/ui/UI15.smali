.class public Lcom/carrieriq/iqagent/client/metrics/ui/UI15;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "UI15.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwAppID:I

.field public shStatus:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "UI15"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/ui/UI15;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI15;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI15;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 61
    return-void
.end method

.method public constructor <init>(IS)V
    .locals 1
    .parameter "appInstanceId"
    .parameter "status"

    .prologue
    .line 64
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI15;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 65
    iput p1, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI15;->dwAppID:I

    .line 66
    iput-short p2, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI15;->shStatus:S

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
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI15;->dwAppID:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 71
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI15;->shStatus:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 72
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
