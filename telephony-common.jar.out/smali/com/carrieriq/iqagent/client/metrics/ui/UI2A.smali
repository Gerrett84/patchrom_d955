.class public Lcom/carrieriq/iqagent/client/metrics/ui/UI2A;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "UI2A.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwAttemptId:I

.field public dwSize:I

.field public szAppName:Ljava/lang/String;

.field public szAppVersion:Ljava/lang/String;

.field public szInstallSource:Ljava/lang/String;

.field public ucAppType:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "UI2A"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/ui/UI2A;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2A;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2A;->ID:I

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
    .line 69
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2A;->dwAttemptId:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 70
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2A;->dwSize:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 71
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2A;->ucAppType:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 72
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2A;->szAppName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/carrieriq/iqagent/client/metrics/ui/UI2A;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2A;->szAppVersion:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/carrieriq/iqagent/client/metrics/ui/UI2A;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2A;->szInstallSource:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/carrieriq/iqagent/client/metrics/ui/UI2A;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
