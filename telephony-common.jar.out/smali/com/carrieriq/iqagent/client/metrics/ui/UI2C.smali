.class public Lcom/carrieriq/iqagent/client/metrics/ui/UI2C;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "UI2C.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final ID:I = 0x0

.field public static final UNINSTALL_FAILURE:S = 0x2s

.field public static final UNINSTALL_SUCCESS:S = 0x1s

.field public static final UNINSTALL_UNKNOWN:S


# instance fields
.field public dwInstAppId:I

.field public szAppName:Ljava/lang/String;

.field public szResultMsg:Ljava/lang/String;

.field public ucAppType:B

.field public wResult:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "UI2C"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/ui/UI2C;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2C;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2C;->ID:I

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
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2C;->dwInstAppId:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 71
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2C;->wResult:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 72
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2C;->ucAppType:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 73
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2C;->szAppName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/carrieriq/iqagent/client/metrics/ui/UI2C;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2C;->szResultMsg:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/carrieriq/iqagent/client/metrics/ui/UI2C;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
