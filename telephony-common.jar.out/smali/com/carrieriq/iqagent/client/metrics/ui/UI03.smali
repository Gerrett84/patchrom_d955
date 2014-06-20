.class public Lcom/carrieriq/iqagent/client/metrics/ui/UI03;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "UI03.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwErrorCode:I

.field public szErrorMsg:Ljava/lang/String;

.field public ucAppType:B

.field public ucLevel:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "UI03"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/ui/UI03;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI03;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI03;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 63
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
    .line 66
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI03;->dwErrorCode:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 67
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI03;->ucAppType:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 68
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI03;->ucLevel:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 69
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI03;->szErrorMsg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 71
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
