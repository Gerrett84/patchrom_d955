.class public Lcom/carrieriq/iqagent/client/metrics/ui/UI30;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "UI30.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwInstAppID:I

.field public dwRunAppID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "UI30"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/ui/UI30;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI30;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI30;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 61
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
    .line 64
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI30;->dwRunAppID:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 65
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI30;->dwInstAppID:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 66
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
