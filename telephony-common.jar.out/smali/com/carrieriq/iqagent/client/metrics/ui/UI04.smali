.class public Lcom/carrieriq/iqagent/client/metrics/ui/UI04;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "UI04.java"


# static fields
.field public static final ID:I


# instance fields
.field public strAppURI:Ljava/lang/String;

.field public ucAppType:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "UI04"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/ui/UI04;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI04;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI04;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 61
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 1
    .parameter "_ucAppType"
    .parameter "_strAppURI"

    .prologue
    .line 64
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI04;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 65
    iput-byte p1, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI04;->ucAppType:B

    .line 66
    iput-object p2, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI04;->strAppURI:Ljava/lang/String;

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
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI04;->ucAppType:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 71
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI04;->strAppURI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 73
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
