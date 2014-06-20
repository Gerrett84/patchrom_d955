.class public Lcom/carrieriq/iqagent/client/metrics/mg/MG01;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "MG01.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwSmsId:I

.field public szRecipient:Ljava/lang/String;

.field public szSMSC:Ljava/lang/String;

.field public wNumFrags:S

.field public wSize:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "MG01"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/mg/MG01;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG01;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG01;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 65
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
    .line 68
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/mg/MG01;->dwSmsId:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 69
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/mg/MG01;->wSize:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 70
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/mg/MG01;->wNumFrags:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 71
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mg/MG01;->szRecipient:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/carrieriq/iqagent/client/metrics/mg/MG01;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mg/MG01;->szSMSC:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/carrieriq/iqagent/client/metrics/mg/MG01;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
