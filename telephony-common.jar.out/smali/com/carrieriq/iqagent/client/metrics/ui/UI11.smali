.class public Lcom/carrieriq/iqagent/client/metrics/ui/UI11;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "UI11.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwErrorCode:I

.field public dwUserInputEventId:I

.field public dwVendorDataLength:I

.field public ucErrorLevel:B

.field public ucPenEvent:B

.field public ucVendorData:[B

.field public wMaxScreenLocX:S

.field public wMaxScreenLocY:S

.field public wScreenLocX:S

.field public wScreenLocY:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "UI11"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 69
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
    .line 72
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->wMaxScreenLocX:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 73
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->wMaxScreenLocY:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 74
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->wScreenLocX:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 75
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->wScreenLocY:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 76
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->dwUserInputEventId:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 77
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->dwErrorCode:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 78
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->dwVendorDataLength:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 79
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->ucErrorLevel:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 80
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->ucPenEvent:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 81
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->dwVendorDataLength:I

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->ucVendorData:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 84
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
