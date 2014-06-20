.class public Lcom/carrieriq/iqagent/client/metrics/ui/UI05;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "UI05.java"


# static fields
.field public static final ID:I


# instance fields
.field public sStatus:S

.field public strAppURI:Ljava/lang/String;

.field public ucIsNormal:B

.field public ucIsReferring:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "UI05"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/ui/UI05;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI05;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI05;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;SBB)V
    .locals 1
    .parameter "_strAppURI"
    .parameter "_sStatus"
    .parameter "_ucIsNormal"
    .parameter "_ucIsReferring"

    .prologue
    .line 66
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI05;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 67
    iput-object p1, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI05;->strAppURI:Ljava/lang/String;

    .line 68
    iput-short p2, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI05;->sStatus:S

    .line 69
    iput-byte p3, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI05;->ucIsNormal:B

    .line 70
    iput-byte p4, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI05;->ucIsReferring:B

    .line 71
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
    .line 74
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI05;->ucIsNormal:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 75
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI05;->ucIsReferring:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 76
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI05;->sStatus:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 77
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI05;->strAppURI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 79
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
