.class Lcom/lge/ciq/VoiceCallCIQ$CSCallHolder;
.super Ljava/lang/Object;
.source "VoiceCallCIQ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/ciq/VoiceCallCIQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CSCallHolder"
.end annotation


# static fields
.field private static final gs01:Lcom/carrieriq/iqagent/client/metrics/gs/GS01;

.field private static final gs02:Lcom/carrieriq/iqagent/client/metrics/gs/GS02;

.field private static final gs03:Lcom/carrieriq/iqagent/client/metrics/gs/GS03;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;

    invoke-direct {v0}, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;-><init>()V

    sput-object v0, Lcom/lge/ciq/VoiceCallCIQ$CSCallHolder;->gs01:Lcom/carrieriq/iqagent/client/metrics/gs/GS01;

    .line 67
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;

    invoke-direct {v0}, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;-><init>()V

    sput-object v0, Lcom/lge/ciq/VoiceCallCIQ$CSCallHolder;->gs02:Lcom/carrieriq/iqagent/client/metrics/gs/GS02;

    .line 68
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS03;

    invoke-direct {v0}, Lcom/carrieriq/iqagent/client/metrics/gs/GS03;-><init>()V

    sput-object v0, Lcom/lge/ciq/VoiceCallCIQ$CSCallHolder;->gs03:Lcom/carrieriq/iqagent/client/metrics/gs/GS03;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/carrieriq/iqagent/client/metrics/gs/GS01;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/lge/ciq/VoiceCallCIQ$CSCallHolder;->gs01:Lcom/carrieriq/iqagent/client/metrics/gs/GS01;

    return-object v0
.end method

.method static synthetic access$100()Lcom/carrieriq/iqagent/client/metrics/gs/GS02;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/lge/ciq/VoiceCallCIQ$CSCallHolder;->gs02:Lcom/carrieriq/iqagent/client/metrics/gs/GS02;

    return-object v0
.end method

.method static synthetic access$200()Lcom/carrieriq/iqagent/client/metrics/gs/GS03;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/lge/ciq/VoiceCallCIQ$CSCallHolder;->gs03:Lcom/carrieriq/iqagent/client/metrics/gs/GS03;

    return-object v0
.end method
