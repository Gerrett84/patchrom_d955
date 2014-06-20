.class public Lcom/carrieriq/iqagent/client/metrics/ui/UI13;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "UI13.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwAppID:I

.field public szAppName:Ljava/lang/String;

.field public ucAppType:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "UI13"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/ui/UI13;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI13;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI13;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 62
    return-void
.end method

.method public constructor <init>(IBLjava/lang/String;)V
    .locals 1
    .parameter "appInstanceId"
    .parameter "appType"
    .parameter "appName"

    .prologue
    .line 65
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI13;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 66
    iput p1, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI13;->dwAppID:I

    .line 67
    iput-byte p2, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI13;->ucAppType:B

    .line 68
    iput-object p3, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI13;->szAppName:Ljava/lang/String;

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
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI13;->dwAppID:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 73
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI13;->ucAppType:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 74
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI13;->szAppName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 76
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
