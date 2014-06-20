.class public Lcom/carrieriq/iqagent/client/metrics/ui/UI32;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "UI32.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwErrorCode:I

.field public dwRunAppID:I

.field public szErrorDesc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "UI32"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/ui/UI32;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI32;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI32;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI32;->szErrorDesc:Ljava/lang/String;

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
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI32;->dwRunAppID:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 67
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI32;->dwErrorCode:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 68
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI32;->szErrorDesc:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/carrieriq/iqagent/client/metrics/ui/UI32;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
