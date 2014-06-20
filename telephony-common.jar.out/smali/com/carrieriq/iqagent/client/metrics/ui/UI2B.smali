.class public Lcom/carrieriq/iqagent/client/metrics/ui/UI2B;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "UI2B.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final ID:I = 0x0

.field public static final INSTALL_DOWNLOAD_FAILURE:S = 0x2s

.field public static final INSTALL_INSTALL_FAILURE:S = 0x3s

.field public static final INSTALL_OTHER_FAILURE:S = 0x4s

.field public static final INSTALL_SUCCESS:S = 0x1s

.field public static final INSTALL_UNKNOWN:S


# instance fields
.field public dwAttemptId:I

.field public dwInstAppId:I

.field public szResultMsg:Ljava/lang/String;

.field public wResult:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "UI2B"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/ui/UI2B;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2B;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2B;->ID:I

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
    .line 74
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2B;->dwAttemptId:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 75
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2B;->dwInstAppId:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 76
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2B;->wResult:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 77
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2B;->szResultMsg:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/carrieriq/iqagent/client/metrics/ui/UI2B;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
