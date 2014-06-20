.class public Lcom/carrieriq/iqagent/client/metrics/gs/GS18;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "GS18.java"


# static fields
.field public static final ID:I

.field public static IQ_ANDROID_REASON_APN_CHANGED:S

.field public static IQ_ANDROID_REASON_APN_FAILED:S

.field public static IQ_ANDROID_REASON_APN_SWITCHED:S

.field public static IQ_ANDROID_REASON_APN_TYPE_DISABLED:S

.field public static IQ_ANDROID_REASON_APN_TYPE_ENABLED:S

.field public static IQ_ANDROID_REASON_CDMA_DATA_ATTACHED:S

.field public static IQ_ANDROID_REASON_CDMA_DATA_DETACHED:S

.field public static IQ_ANDROID_REASON_CDMA_OTA_PROVISIONING:S

.field public static IQ_ANDROID_REASON_CDMA_SUBSCRIPTION_SOURCE_CHANGED:S

.field public static IQ_ANDROID_REASON_DATA_CONNECTION_PROPERTY_CHANGED:S

.field public static IQ_ANDROID_REASON_DATA_DISABLED:S

.field public static IQ_ANDROID_REASON_DATA_ENABLED:S

.field public static IQ_ANDROID_REASON_DATA_NETWORK_ATTACHED:S

.field public static IQ_ANDROID_REASON_DATA_NETWORK_DETACHED:S

.field public static IQ_ANDROID_REASON_DATA_PROFILE_DB_CHANGED:S

.field public static IQ_ANDROID_REASON_DEFAULT_DATA_DISABLED:S

.field public static IQ_ANDROID_REASON_DEFAULT_DATA_ENABLED:S

.field public static IQ_ANDROID_REASON_GPRS_ATTACHED:S

.field public static IQ_ANDROID_REASON_GPRS_DETACHED:S

.field public static IQ_ANDROID_REASON_ICC_RECORDS_LOADED:S

.field public static IQ_ANDROID_REASON_MASTER_DATA_DISABLED:S

.field public static IQ_ANDROID_REASON_MASTER_DATA_ENABLED:S

.field public static IQ_ANDROID_REASON_NETWORK_OR_MODEM_DISCONNECT:S

.field public static IQ_ANDROID_REASON_PDP_RESET:S

.field public static IQ_ANDROID_REASON_PS_RESTRICT_DISABLED:S

.field public static IQ_ANDROID_REASON_PS_RESTRICT_ENABLED:S

.field public static IQ_ANDROID_REASON_RADIO_OFF:S

.field public static IQ_ANDROID_REASON_RADIO_ON:S

.field public static IQ_ANDROID_REASON_RADIO_TECH_CHANGED:S

.field public static IQ_ANDROID_REASON_RADIO_TURNED_OFF:S

.field public static IQ_ANDROID_REASON_RESTORE_DEFAULT_APN:S

.field public static IQ_ANDROID_REASON_ROAMING_OFF:S

.field public static IQ_ANDROID_REASON_ROAMING_ON:S

.field public static IQ_ANDROID_REASON_SIM_LOADED:S

.field public static IQ_ANDROID_REASON_TETHERED_MODE_CHANGED:S

.field public static IQ_ANDROID_REASON_UNKNOWN:S

.field public static IQ_ANDROID_REASON_UNKNOWN_DATA_ERROR:S

.field public static IQ_ANDROID_REASON_UNKNOWN_PDP_DISCONNECT:S

.field public static IQ_ANDROID_REASON_VOICE_CALL_ENDED:S

.field public static IQ_ANDROID_REASON_VOICE_CALL_STARTED:S


# instance fields
.field public dwContextId:I

.field public dwErrCode:I

.field public ucInitiator:B

.field public wTermCode:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "GS18"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->ID:I

    .line 61
    const/16 v0, 0x12d

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_UNKNOWN:S

    .line 62
    const/16 v0, 0x12e

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_RADIO_TURNED_OFF:S

    .line 63
    const/16 v0, 0x12f

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_UNKNOWN_PDP_DISCONNECT:S

    .line 64
    const/16 v0, 0x130

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_UNKNOWN_DATA_ERROR:S

    .line 65
    const/16 v0, 0x131

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_ROAMING_ON:S

    .line 66
    const/16 v0, 0x132

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_ROAMING_OFF:S

    .line 67
    const/16 v0, 0x133

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_DATA_DISABLED:S

    .line 68
    const/16 v0, 0x134

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_DATA_ENABLED:S

    .line 69
    const/16 v0, 0x135

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_GPRS_ATTACHED:S

    .line 70
    const/16 v0, 0x136

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_GPRS_DETACHED:S

    .line 71
    const/16 v0, 0x137

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_CDMA_DATA_ATTACHED:S

    .line 72
    const/16 v0, 0x138

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_CDMA_DATA_DETACHED:S

    .line 73
    const/16 v0, 0x139

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_APN_CHANGED:S

    .line 74
    const/16 v0, 0x13a

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_APN_SWITCHED:S

    .line 75
    const/16 v0, 0x13b

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_APN_FAILED:S

    .line 76
    const/16 v0, 0x13c

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_RESTORE_DEFAULT_APN:S

    .line 77
    const/16 v0, 0x13d

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_PDP_RESET:S

    .line 78
    const/16 v0, 0x13e

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_VOICE_CALL_ENDED:S

    .line 79
    const/16 v0, 0x13f

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_VOICE_CALL_STARTED:S

    .line 80
    const/16 v0, 0x140

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_PS_RESTRICT_ENABLED:S

    .line 81
    const/16 v0, 0x141

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_PS_RESTRICT_DISABLED:S

    .line 82
    const/16 v0, 0x142

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_SIM_LOADED:S

    .line 83
    const/16 v0, 0x143

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_APN_TYPE_DISABLED:S

    .line 84
    const/16 v0, 0x144

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_APN_TYPE_ENABLED:S

    .line 85
    const/16 v0, 0x145

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_MASTER_DATA_DISABLED:S

    .line 86
    const/16 v0, 0x146

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_MASTER_DATA_ENABLED:S

    .line 87
    const/16 v0, 0x147

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_ICC_RECORDS_LOADED:S

    .line 88
    const/16 v0, 0x148

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_CDMA_OTA_PROVISIONING:S

    .line 89
    const/16 v0, 0x149

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_DEFAULT_DATA_DISABLED:S

    .line 90
    const/16 v0, 0x14a

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_DEFAULT_DATA_ENABLED:S

    .line 91
    const/16 v0, 0x14b

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_RADIO_ON:S

    .line 92
    const/16 v0, 0x14c

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_RADIO_OFF:S

    .line 93
    const/16 v0, 0x14d

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_RADIO_TECH_CHANGED:S

    .line 94
    const/16 v0, 0x14e

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_NETWORK_OR_MODEM_DISCONNECT:S

    .line 95
    const/16 v0, 0x14f

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_DATA_NETWORK_ATTACHED:S

    .line 96
    const/16 v0, 0x150

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_DATA_NETWORK_DETACHED:S

    .line 97
    const/16 v0, 0x151

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_DATA_PROFILE_DB_CHANGED:S

    .line 98
    const/16 v0, 0x152

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_CDMA_SUBSCRIPTION_SOURCE_CHANGED:S

    .line 99
    const/16 v0, 0x153

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_TETHERED_MODE_CHANGED:S

    .line 100
    const/16 v0, 0x157

    sput-short v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->IQ_ANDROID_REASON_DATA_CONNECTION_PROPERTY_CHANGED:S

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    sget v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 105
    return-void
.end method

.method public constructor <init>(IISB)V
    .locals 1
    .parameter "context"
    .parameter "errCode"
    .parameter "termCode"
    .parameter "initiator"

    .prologue
    .line 108
    sget v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 109
    iput p1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->dwContextId:I

    .line 110
    iput p2, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->dwErrCode:I

    .line 111
    iput-short p3, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->wTermCode:S

    .line 112
    iput-byte p4, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->ucInitiator:B

    .line 113
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
    .line 117
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->dwContextId:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 119
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->wTermCode:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 120
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->ucInitiator:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 121
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
