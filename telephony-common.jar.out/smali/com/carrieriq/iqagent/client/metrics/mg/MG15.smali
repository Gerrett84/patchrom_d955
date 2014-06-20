.class public Lcom/carrieriq/iqagent/client/metrics/mg/MG15;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "MG15.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwContentType:I

.field public dwErrorCode:I

.field public szLocationUrl:Ljava/lang/String;

.field public szMmsMsgId:Ljava/lang/String;

.field public szMmsTransId:Ljava/lang/String;

.field public wMmsVersion:S

.field public wResultCode:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "MG15"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

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
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->dwContentType:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 71
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->dwErrorCode:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 72
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->wResultCode:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 73
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->wMmsVersion:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 74
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->szMmsTransId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->szMmsMsgId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->szLocationUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
