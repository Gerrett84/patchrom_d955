.class public Lcom/carrieriq/iqagent/client/metrics/mg/MG14;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "MG14.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwErrorCode:I

.field public szLocationUrl:Ljava/lang/String;

.field public szMmsTransId:Ljava/lang/String;

.field public ucRetryCount:B

.field public ucState:B

.field public wResultCode:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "MG14"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/mg/MG14;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG14;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG14;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 66
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
    .line 69
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mg/MG14;->ucState:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 70
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mg/MG14;->ucRetryCount:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 71
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/mg/MG14;->wResultCode:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 72
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/mg/MG14;->dwErrorCode:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 73
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mg/MG14;->szMmsTransId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/carrieriq/iqagent/client/metrics/mg/MG14;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mg/MG14;->szLocationUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/carrieriq/iqagent/client/metrics/mg/MG14;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
