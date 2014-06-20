.class public Lcom/carrieriq/iqagent/client/metrics/ui/UI38;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "UI38.java"


# static fields
.field public static final ID:I


# instance fields
.field public ucScrnBrightLvl:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "UI38"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/ui/UI38;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI38;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI38;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 60
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
    .line 63
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI38;->ucScrnBrightLvl:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 64
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
