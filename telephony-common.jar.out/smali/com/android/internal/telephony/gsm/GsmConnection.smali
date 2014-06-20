.class public Lcom/android/internal/telephony/gsm/GsmConnection;
.super Lcom/android/internal/telephony/Connection;
.source "GsmConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmConnection$1;,
        Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CIQ_EXTENSION:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DBG_CIQ:Z = false

.field static final EVENT_DTMF_DONE:I = 0x1

.field static final EVENT_NEXT_POST_DIAL:I = 0x3

.field static final EVENT_PAUSE_DONE:I = 0x2

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final PAUSE_DELAY_FIRST_MILLIS:I = 0x64

.field static final PAUSE_DELAY_MILLIS:I = 0xbb8

.field static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60

.field private static ciqIDCount:I

.field private static tmus_ciqCount:I


# instance fields
.field CIQ_State:Lcom/android/internal/telephony/Call$State;

.field TOA:I

.field address:Ljava/lang/String;

.field cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

.field cdnipNumber:Ljava/lang/String;

.field private ciqID:I

.field private ciqState:B

.field connectTime:J

.field createTime:J

.field dialString:Ljava/lang/String;

.field dialedAddress:Ljava/lang/String;

.field disconnectTime:J

.field disconnected:Z

.field duration:J

.field h:Landroid/os/Handler;

.field holdingStartTime:J

.field index:I

.field isIncoming:Z

.field private isPause:Z

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field nextPostDialChar:I

.field numberPresentation:I

.field owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

.field parent:Lcom/android/internal/telephony/gsm/GsmCall;

.field postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field postDialString:Ljava/lang/String;

.field redialNumber:Ljava/lang/String;

.field redirectNumber:Ljava/lang/String;

.field private systemCode:I

.field private termCode:S

.field private tmus_ciqId:I

.field uusInfo:Lcom/android/internal/telephony/UUSInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    const-string v0, "persist.lgiqc.ext"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/gsm/GsmConnection;->CIQ_EXTENSION:Z

    .line 67
    sput v2, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqCount:I

    .line 68
    const-string v0, "ro.debuggable"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/internal/telephony/gsm/GsmConnection;->DBG_CIQ:Z

    .line 142
    sput v2, Lcom/android/internal/telephony/gsm/GsmConnection;->ciqIDCount:I

    return-void

    :cond_0
    move v0, v2

    .line 64
    goto :goto_0

    :cond_1
    move v1, v2

    .line 68
    goto :goto_1
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V
    .locals 6
    .parameter "context"
    .parameter "dc"
    .parameter "ct"
    .parameter "index"

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x0

    .line 177
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 66
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqId:I

    .line 114
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 115
    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 116
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->numberPresentation:I

    .line 124
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->dialedAddress:Ljava/lang/String;

    .line 143
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->ciqID:I

    .line 144
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->systemCode:I

    .line 145
    const/16 v2, 0x10

    iput-short v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->termCode:S

    .line 150
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isPause:Z

    .line 178
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->createWakeLock(Landroid/content/Context;)V

    .line 179
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->acquireWakeLock()V

    .line 181
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 182
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;-><init>(Lcom/android/internal/telephony/gsm/GsmConnection;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    .line 184
    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    .line 186
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->setRedialNumber(Ljava/lang/String;)V

    .line 189
    iget-boolean v2, p2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming:Z

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->createTime:J

    .line 192
    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->cdnipNumber:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cdnipNumber:Ljava/lang/String;

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cdnipNumber 2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 195
    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/Connection;->cnapName:Ljava/lang/String;

    .line 196
    iget v2, p2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v2, p0, Lcom/android/internal/telephony/Connection;->cnapNamePresentation:I

    .line 197
    iget v2, p2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->numberPresentation:I

    .line 198
    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 200
    iget v2, p2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->TOA:I

    .line 204
    const/4 v2, 0x0

    const-string v3, "RingBackTone"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    iget v2, p2, Lcom/android/internal/telephony/DriverCall;->signal:I

    iput v2, p0, Lcom/android/internal/telephony/Connection;->ringbackToneSignal:I

    .line 210
    :cond_0
    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->redirectNumber:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->redirectNumber:Ljava/lang/String;

    .line 213
    iput p4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    .line 215
    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 216
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2, p0, p2}, Lcom/android/internal/telephony/gsm/GsmCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 218
    sget-boolean v2, Lcom/android/internal/telephony/gsm/GsmConnection;->CIQ_EXTENSION:Z

    if-eqz v2, :cond_2

    .line 219
    sget v2, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqCount:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqId:I

    .line 220
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqId:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->setCIQIdForTMUS(I)V

    .line 221
    sget-boolean v2, Lcom/android/internal/telephony/gsm/GsmConnection;->DBG_CIQ:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EXTENSION] GsmConnection Constructor -1- ciqID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 223
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqId:I

    if-lt v2, v5, :cond_5

    .line 224
    sput v4, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqCount:I

    .line 231
    :cond_2
    :goto_0
    const-string v2, "1"

    const-string v3, "service.iq.active"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, gs01:Lcom/carrieriq/iqagent/client/metrics/gs/GS01;
    const/4 v1, 0x0

    .line 235
    .local v1, gs02:Lcom/carrieriq/iqagent/client/metrics/gs/GS02;
    sget v2, Lcom/android/internal/telephony/gsm/GsmConnection;->ciqIDCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/telephony/gsm/GsmConnection;->ciqIDCount:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->ciqID:I

    .line 236
    sget v2, Lcom/android/internal/telephony/gsm/GsmConnection;->ciqIDCount:I

    if-lt v2, v5, :cond_3

    .line 237
    sput v4, Lcom/android/internal/telephony/gsm/GsmConnection;->ciqIDCount:I

    .line 240
    :cond_3
    invoke-static {}, Lcom/lge/ciq/VoiceCallCIQ;->getGS01Metric()Lcom/carrieriq/iqagent/client/metrics/gs/GS01;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_7

    .line 242
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->ciqID:I

    iput v2, v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->dwCallId:I

    .line 243
    const/4 v2, 0x1

    iput-byte v2, v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->ucCallState:B

    .line 244
    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    :goto_1
    iput-object v2, v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->szNumber:Ljava/lang/String;

    .line 246
    invoke-virtual {v0}, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->setTerminated()V

    .line 247
    invoke-virtual {v0}, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->setVoice()V

    .line 248
    invoke-static {p1, v0}, Lcom/lge/ciq/VoiceCallCIQ;->submitCSCall(Landroid/content/Context;Lcom/carrieriq/iqagent/client/Metric;)V

    .line 253
    :goto_2
    invoke-static {}, Lcom/lge/ciq/VoiceCallCIQ;->getGS02Metric()Lcom/carrieriq/iqagent/client/metrics/gs/GS02;

    move-result-object v1

    .line 254
    if-eqz v1, :cond_8

    .line 255
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->ciqID:I

    iput v2, v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->dwCallId:I

    .line 256
    const/4 v2, 0x4

    iput-byte v2, v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->ucCallState:B

    .line 257
    invoke-static {p1, v1}, Lcom/lge/ciq/VoiceCallCIQ;->submitCSCall(Landroid/content/Context;Lcom/carrieriq/iqagent/client/Metric;)V

    .line 263
    .end local v0           #gs01:Lcom/carrieriq/iqagent/client/metrics/gs/GS01;
    .end local v1           #gs02:Lcom/carrieriq/iqagent/client/metrics/gs/GS02;
    :cond_4
    :goto_3
    return-void

    .line 226
    :cond_5
    sget v2, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqCount:I

    goto :goto_0

    .line 244
    .restart local v0       #gs01:Lcom/carrieriq/iqagent/client/metrics/gs/GS01;
    .restart local v1       #gs02:Lcom/carrieriq/iqagent/client/metrics/gs/GS02;
    :cond_6
    const-string v2, "Private Number"

    goto :goto_1

    .line 250
    :cond_7
    const-string v2, "LGDDM-CSC"

    const-string v3, "CSC Start metric instance is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 259
    :cond_8
    const-string v2, "LGDDM-CSC"

    const-string v3, "CSC State Transition metric instance is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 7
    .parameter "context"
    .parameter "dialString"
    .parameter "ct"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x3e8

    const/4 v4, 0x0

    .line 267
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 66
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqId:I

    .line 114
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 115
    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 116
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->numberPresentation:I

    .line 124
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->dialedAddress:Ljava/lang/String;

    .line 143
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->ciqID:I

    .line 144
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->systemCode:I

    .line 145
    const/16 v2, 0x10

    iput-short v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->termCode:S

    .line 150
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isPause:Z

    .line 268
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->createWakeLock(Landroid/content/Context;)V

    .line 269
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->acquireWakeLock()V

    .line 271
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 272
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;-><init>(Lcom/android/internal/telephony/gsm/GsmConnection;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    .line 274
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->dialString:Ljava/lang/String;

    .line 276
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GsmConnection;->setRedialNumber(Ljava/lang/String;)V

    .line 279
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    .line 280
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    .line 283
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->dialedAddress:Ljava/lang/String;

    .line 287
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cdnipNumber:Ljava/lang/String;

    .line 289
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    .line 291
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming:Z

    .line 292
    iput-object v6, p0, Lcom/android/internal/telephony/Connection;->cnapName:Ljava/lang/String;

    .line 293
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    iput v2, p0, Lcom/android/internal/telephony/Connection;->cnapNamePresentation:I

    .line 294
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->numberPresentation:I

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->createTime:J

    .line 297
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 298
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v2}, Lcom/android/internal/telephony/gsm/GsmCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 300
    sget-boolean v2, Lcom/android/internal/telephony/gsm/GsmConnection;->CIQ_EXTENSION:Z

    if-eqz v2, :cond_2

    .line 301
    sget v2, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqCount:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqId:I

    .line 302
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqId:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->setCIQIdForTMUS(I)V

    .line 303
    sget-boolean v2, Lcom/android/internal/telephony/gsm/GsmConnection;->DBG_CIQ:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EXTENSION] GsmConnection Constructor -2- ciqID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 305
    :cond_0
    sget-boolean v2, Lcom/android/internal/telephony/gsm/GsmConnection;->DBG_CIQ:Z

    if-eqz v2, :cond_1

    const-string v2, "[CIQ_EXTENSION] update GsmConnection() DIALING"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 306
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->CIQ_State:Lcom/android/internal/telephony/Call$State;

    .line 307
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqId:I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->CIQ_State:Lcom/android/internal/telephony/Call$State;

    invoke-static {v2, p2, v3}, Lcom/android/internal/telephony/CallStateBroadcaster;->SendCallStatus(ILjava/lang/String;Lcom/android/internal/telephony/Call$State;)V

    .line 309
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqId:I

    if-lt v2, v5, :cond_5

    .line 310
    sput v4, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqCount:I

    .line 317
    :cond_2
    :goto_0
    const-string v2, "1"

    const-string v3, "service.iq.active"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, gs01:Lcom/carrieriq/iqagent/client/metrics/gs/GS01;
    const/4 v1, 0x0

    .line 321
    .local v1, gs02:Lcom/carrieriq/iqagent/client/metrics/gs/GS02;
    sget v2, Lcom/android/internal/telephony/gsm/GsmConnection;->ciqIDCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/telephony/gsm/GsmConnection;->ciqIDCount:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->ciqID:I

    .line 322
    sget v2, Lcom/android/internal/telephony/gsm/GsmConnection;->ciqIDCount:I

    if-lt v2, v5, :cond_3

    .line 323
    sput v4, Lcom/android/internal/telephony/gsm/GsmConnection;->ciqIDCount:I

    .line 326
    :cond_3
    invoke-static {}, Lcom/lge/ciq/VoiceCallCIQ;->getGS01Metric()Lcom/carrieriq/iqagent/client/metrics/gs/GS01;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_7

    .line 328
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->ciqID:I

    iput v2, v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->dwCallId:I

    .line 329
    const/4 v2, 0x1

    iput-byte v2, v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->ucCallState:B

    .line 330
    if-eqz p2, :cond_6

    .end local p2
    :goto_1
    iput-object p2, v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->szNumber:Ljava/lang/String;

    .line 332
    invoke-virtual {v0}, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->setOriginated()V

    .line 333
    invoke-virtual {v0}, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->setVoice()V

    .line 334
    invoke-static {p1, v0}, Lcom/lge/ciq/VoiceCallCIQ;->submitCSCall(Landroid/content/Context;Lcom/carrieriq/iqagent/client/Metric;)V

    .line 339
    :goto_2
    invoke-static {}, Lcom/lge/ciq/VoiceCallCIQ;->getGS02Metric()Lcom/carrieriq/iqagent/client/metrics/gs/GS02;

    move-result-object v1

    .line 340
    if-eqz v1, :cond_8

    .line 341
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->ciqID:I

    iput v2, v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->dwCallId:I

    .line 342
    const/4 v2, 0x3

    iput-byte v2, v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->ucCallState:B

    .line 343
    invoke-static {p1, v1}, Lcom/lge/ciq/VoiceCallCIQ;->submitCSCall(Landroid/content/Context;Lcom/carrieriq/iqagent/client/Metric;)V

    .line 349
    .end local v0           #gs01:Lcom/carrieriq/iqagent/client/metrics/gs/GS01;
    .end local v1           #gs02:Lcom/carrieriq/iqagent/client/metrics/gs/GS02;
    :cond_4
    :goto_3
    return-void

    .line 312
    .restart local p2
    :cond_5
    sget v2, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqCount:I

    goto :goto_0

    .line 330
    .restart local v0       #gs01:Lcom/carrieriq/iqagent/client/metrics/gs/GS01;
    .restart local v1       #gs02:Lcom/carrieriq/iqagent/client/metrics/gs/GS02;
    :cond_6
    const-string p2, "Private Number"

    goto :goto_1

    .line 336
    :cond_7
    const-string v2, "LGDDM-CSC"

    const-string v3, "CSC Start metric instance is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 345
    .end local p2
    :cond_8
    const-string v2, "LGDDM-CSC"

    const-string v3, "CSC State Transition metric instance is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 1497
    const-string v0, "acquireWakeLock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 1498
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1499
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1491
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1492
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "GSM"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1493
    return-void
.end method

.method static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 356
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private isConnectingInOrOut()Z
    .locals 2

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v0, v0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v0, v0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1512
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GSMConn] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    return-void
.end method

.method private parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 3
    .parameter "state"

    .prologue
    .line 1448
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmConnection$1;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1465
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1452
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 1461
    :goto_0
    return-object v0

    .line 1456
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    goto :goto_0

    .line 1461
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    goto :goto_0

    .line 1448
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private processNextPostDialChar()V
    .locals 9

    .prologue
    .line 1376
    const/4 v1, 0x0

    .line 1379
    .local v1, c:C
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v6, v7, :cond_1

    .line 1433
    :cond_0
    :goto_0
    return-void

    .line 1384
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    if-gt v6, v7, :cond_4

    .line 1386
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 1389
    const/4 v1, 0x0

    .line 1408
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 1412
    .local v4, postDialHandler:Landroid/os/Registrant;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v3

    .local v3, notifyMessage:Landroid/os/Message;
    if-eqz v3, :cond_0

    .line 1415
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 1417
    .local v5, state:Lcom/android/internal/telephony/Connection$PostDialState;
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v5, v6, :cond_5

    .line 1418
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isPause:Z

    .line 1423
    :goto_1
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1424
    .local v0, ar:Landroid/os/AsyncResult;
    iput-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1425
    iput-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 1428
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 1431
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1393
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #notifyMessage:Landroid/os/Message;
    .end local v4           #postDialHandler:Landroid/os/Registrant;
    .end local v5           #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 1395
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1397
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->processPostDialChar(C)Z

    move-result v2

    .line 1399
    .local v2, isValid:Z
    if-nez v2, :cond_3

    .line 1401
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1403
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processNextPostDialChar: c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isn\'t valid!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1420
    .end local v2           #isValid:Z
    .restart local v3       #notifyMessage:Landroid/os/Message;
    .restart local v4       #postDialHandler:Landroid/os/Registrant;
    .restart local v5       #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_5
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isPause:Z

    goto :goto_1
.end method

.method private processPostDialChar(C)Z
    .locals 5
    .parameter "c"

    .prologue
    const/4 v0, 0x1

    .line 1315
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1316
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    .line 1343
    :goto_0
    return v0

    .line 1317
    :cond_0
    const/16 v1, 0x2c

    if-ne p1, v1, :cond_1

    .line 1331
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 1333
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1335
    :cond_1
    const/16 v1, 0x3b

    if-ne p1, v1, :cond_2

    .line 1336
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 1337
    :cond_2
    const/16 v1, 0x4e

    if-ne p1, v1, :cond_3

    .line 1338
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 1340
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 1503
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 1504
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1505
    const-string v0, "releaseWakeLock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 1506
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1508
    :cond_0
    monitor-exit v1

    .line 1509
    return-void

    .line 1508
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, 0x4

    .line 1476
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v1, :cond_1

    .line 1478
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->acquireWakeLock()V

    .line 1479
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1480
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1486
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 1487
    return-void

    .line 1481
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq p1, v1, :cond_0

    .line 1483
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1484
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    goto :goto_0
.end method

.method private setRedialNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "redialNumber"

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->redialNumber:Ljava/lang/String;

    .line 380
    return-void
.end method


# virtual methods
.method additionalDisconnectCauseForKR(I)Lcom/android/internal/telephony/Connection$DisconnectCause;
    .locals 1
    .parameter "causeCode"

    .prologue
    .line 795
    packed-switch p1, :pswitch_data_0

    .line 850
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    :goto_0
    return-object v0

    .line 797
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_SIM:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 800
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->WRONG_STATE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 803
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->ACCESS_CLASS_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 806
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_RESOURCES:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 809
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_USER_DATA:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 812
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->TIMER_T3230_EXPIRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 815
    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_CELL_AVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 818
    :pswitch_8
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->TIMER_T303_EXPIRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 821
    :pswitch_9
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->CNM_MM_REL_PENDING:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 824
    :pswitch_a
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->ACCESS_STRATUM_REJ_RR_REL_IND:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 827
    :pswitch_b
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->ACCESS_STRATUM_REJ_RR_RANDOM_ACCESS_FAILURE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 830
    :pswitch_c
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->ACCESS_STRATUM_REJ_RRC_REL_IND:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 833
    :pswitch_d
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->ACCESS_STRATUM_REJ_RRC_CLOSE_SESSION_IND:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 836
    :pswitch_e
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->ACCESS_STRATUM_REJ_RRC_OPEN_SESSION_FAILURE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 839
    :pswitch_f
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->ACCESS_STRATUM_REJ_LOW_LEVEL_FAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 842
    :pswitch_10
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->ACCESS_STRATUM_REJ_LOW_LEVEL_FAIL_REDIAL_NOT_ALLOWED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 845
    :pswitch_11
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->ACCESS_STRATUM_REJ_LOW_LEVEL_IMMED_RETRY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 848
    :pswitch_12
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->ACCESS_STRATUM_REJ_ABORT_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 795
    :pswitch_data_0
    .packed-switch 0x834
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public cancelPostDial()V
    .locals 1

    .prologue
    .line 545
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 546
    return-void
.end method

.method compareTo(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 4
    .parameter "c"

    .prologue
    const/4 v1, 0x1

    .line 366
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming:Z

    if-nez v2, :cond_1

    iget-boolean v2, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-nez v2, :cond_1

    .line 372
    :cond_0
    :goto_0
    return v1

    .line 371
    :cond_1
    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v3, p1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, cAddress:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming:Z

    iget-boolean v3, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;
    .locals 7
    .parameter "causeCode"

    .prologue
    const/4 v6, 0x1

    .line 577
    const-string v5, "KR"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 578
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->additionalDisconnectCauseForKR(I)Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 579
    .local v1, disConnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v5, :cond_0

    .line 788
    .end local v1           #disConnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :goto_0
    return-object v1

    .line 586
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 759
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v5, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 760
    .local v2, phone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 761
    .local v3, serviceState:I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 764
    .local v0, cardApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v4

    .line 766
    .local v4, uiccAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :goto_1
    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    .line 767
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->POWER_OFF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 589
    .end local v0           #cardApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v2           #phone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v3           #serviceState:I
    .end local v4           #uiccAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :sswitch_0
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_ROUTE_TO_DEST:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 592
    :sswitch_1
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CHANNEL_UNACCEPTABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 595
    :sswitch_2
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->OPERATOR_DETERMINED_BARRING:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 598
    :sswitch_3
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 601
    :sswitch_4
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_USER_RESPONDING:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 604
    :sswitch_5
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_ANSWER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 607
    :sswitch_6
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 610
    :sswitch_7
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NUMBER_CHANGED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 613
    :sswitch_8
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->PREEMPTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 616
    :sswitch_9
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NON_SELECTED_USER_CLEAR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 619
    :sswitch_a
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->DEST_OUT_OF_ORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 622
    :sswitch_b
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 625
    :sswitch_c
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->FACILITY_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 628
    :sswitch_d
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->RESPONSE_TO_STA_ENQ:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 631
    :sswitch_e
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 634
    :sswitch_f
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NETWORK_OUT_OF_ORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 637
    :sswitch_10
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->TEMPORARY_FAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 640
    :sswitch_11
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->SWITCHING_EQUIP_CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 643
    :sswitch_12
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->ACCESS_INFO_DISCARD:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 646
    :sswitch_13
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->REQUESTED_CIRCUIT_NOT_AVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 649
    :sswitch_14
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->RESOURCE_UNAVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 652
    :sswitch_15
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->QOS_UNAVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 655
    :sswitch_16
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->REQUESTED_FACILITY_NOT_SUBSCRIBED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 658
    :sswitch_17
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_CALLS_BARRED_CUG:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 661
    :sswitch_18
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_CAPABILITY_NOT_AUTHORIZED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 664
    :sswitch_19
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_CAPABILITY_NOT_PRESENTLY_AVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 667
    :sswitch_1a
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVICE_NOT_AVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 670
    :sswitch_1b
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_SERVICE_NOT_IMPLEMENTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 673
    :sswitch_1c
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 676
    :sswitch_1d
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->REQUESTED_FACILITY_NOT_IMPLEMENTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 679
    :sswitch_1e
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->ONLY_RESTRICTED_DIGIT_INFO_BEARER_CAPABILITY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 682
    :sswitch_1f
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVICE_NOT_IMPLEMENTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 685
    :sswitch_20
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_TRANSACTION_ID_VALUE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 688
    :sswitch_21
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->USER_NOT_MEMBER_CUG:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 691
    :sswitch_22
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMPATIBLE_DESTINATION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 694
    :sswitch_23
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_TRANSIT_NETWORK_SELECTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 697
    :sswitch_24
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->SEMANTICALLY_INCORRECT_MESSAGE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 700
    :sswitch_25
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_MANDATORY_INFO:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 703
    :sswitch_26
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->MESSAGE_TYPE_NON_COMPATIBLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 706
    :sswitch_27
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->MESSAGE_TYPE_NOT_COMPATIBLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 709
    :sswitch_28
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INFORMATION_ELEMENT_NOT_IMPLEMENTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 712
    :sswitch_29
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONDITIONAL_IE_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 715
    :sswitch_2a
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->MESSAGE_NOT_COMPATIBLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 718
    :sswitch_2b
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->RECOVER_ON_TIMER_EXPIRY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 721
    :sswitch_2c
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->PROTOCOL_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 724
    :sswitch_2d
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INTERWORKING:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 727
    :sswitch_2e
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 730
    :sswitch_2f
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 734
    :sswitch_30
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->MS_ACCESS_CLASS_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 738
    :sswitch_31
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 741
    :sswitch_32
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->DIAL_MODIFIED_TO_USSD:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 744
    :sswitch_33
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->DIAL_MODIFIED_TO_SS:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 747
    :sswitch_34
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->DIAL_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 750
    :sswitch_35
    const-string v5, "TCL"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 751
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 764
    .restart local v0       #cardApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v2       #phone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .restart local v3       #serviceState:I
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    goto/16 :goto_1

    .line 768
    .restart local v4       #uiccAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :cond_3
    if-eq v3, v6, :cond_4

    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    .line 770
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 771
    :cond_5
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v4, v5, :cond_6

    .line 772
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->ICC_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 773
    :cond_6
    const v5, 0xffff

    if-ne p1, v5, :cond_a

    .line 774
    iget-object v5, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 775
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 776
    :cond_7
    iget-object v5, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 777
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 778
    :cond_8
    iget-object v5, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 779
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 781
    :cond_9
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 783
    :cond_a
    const/16 v5, 0x10

    if-ne p1, v5, :cond_b

    .line 784
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 788
    :cond_b
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 586
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_31
        0x3 -> :sswitch_0
        0x6 -> :sswitch_1
        0x8 -> :sswitch_2
        0x11 -> :sswitch_3
        0x12 -> :sswitch_4
        0x13 -> :sswitch_5
        0x15 -> :sswitch_6
        0x16 -> :sswitch_7
        0x19 -> :sswitch_8
        0x1a -> :sswitch_9
        0x1b -> :sswitch_a
        0x1c -> :sswitch_b
        0x1d -> :sswitch_c
        0x1e -> :sswitch_d
        0x1f -> :sswitch_35
        0x22 -> :sswitch_e
        0x26 -> :sswitch_f
        0x29 -> :sswitch_10
        0x2a -> :sswitch_11
        0x2b -> :sswitch_12
        0x2c -> :sswitch_13
        0x2f -> :sswitch_14
        0x31 -> :sswitch_15
        0x32 -> :sswitch_16
        0x37 -> :sswitch_17
        0x39 -> :sswitch_18
        0x3a -> :sswitch_19
        0x3f -> :sswitch_1a
        0x41 -> :sswitch_1b
        0x44 -> :sswitch_1c
        0x45 -> :sswitch_1d
        0x46 -> :sswitch_1e
        0x4f -> :sswitch_1f
        0x51 -> :sswitch_20
        0x57 -> :sswitch_21
        0x58 -> :sswitch_22
        0x5b -> :sswitch_23
        0x5f -> :sswitch_24
        0x60 -> :sswitch_25
        0x61 -> :sswitch_26
        0x62 -> :sswitch_27
        0x63 -> :sswitch_28
        0x64 -> :sswitch_29
        0x65 -> :sswitch_2a
        0x66 -> :sswitch_2b
        0x6f -> :sswitch_2c
        0x7f -> :sswitch_2d
        0xf0 -> :sswitch_2e
        0xf1 -> :sswitch_2f
        0xf4 -> :sswitch_32
        0xf5 -> :sswitch_33
        0xf6 -> :sswitch_34
        0x121 -> :sswitch_30
    .end sparse-switch
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 352
    return-void
.end method

.method fakeHoldBeforeDial()V
    .locals 4

    .prologue
    .line 1194
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v1, :cond_0

    .line 1195
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/gsm/GsmCall;->detach(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 1198
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 1199
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1, p0, v2}, Lcom/android/internal/telephony/gsm/GsmCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 1201
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onStartedHolding()V

    .line 1203
    sget-boolean v1, Lcom/android/internal/telephony/gsm/GsmConnection;->CIQ_EXTENSION:Z

    if-eqz v1, :cond_2

    .line 1204
    sget-boolean v1, Lcom/android/internal/telephony/gsm/GsmConnection;->DBG_CIQ:Z

    if-eqz v1, :cond_1

    const-string v1, "[CIQ EXTENSION] fakeHoldBeforeDial : Call.State.HOLDING"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 1205
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqId:I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/CallStateBroadcaster;->SendCallStatus(ILjava/lang/String;Lcom/android/internal/telephony/Call$State;)V

    .line 1210
    :cond_2
    const-string v1, "1"

    const-string v2, "service.iq.active"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1211
    const/4 v0, 0x0

    .line 1213
    .local v0, gs02:Lcom/carrieriq/iqagent/client/metrics/gs/GS02;
    invoke-static {}, Lcom/lge/ciq/VoiceCallCIQ;->getGS02Metric()Lcom/carrieriq/iqagent/client/metrics/gs/GS02;

    move-result-object v0

    .line 1214
    if-eqz v0, :cond_4

    .line 1215
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->ciqID:I

    iput v1, v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->dwCallId:I

    .line 1216
    const/16 v1, 0x8

    iput-byte v1, v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->ucCallState:B

    .line 1217
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lge/ciq/VoiceCallCIQ;->submitCSCall(Landroid/content/Context;Lcom/carrieriq/iqagent/client/Metric;)V

    .line 1223
    .end local v0           #gs02:Lcom/carrieriq/iqagent/client/metrics/gs/GS02;
    :cond_3
    :goto_0
    return-void

    .line 1219
    .restart local v0       #gs02:Lcom/carrieriq/iqagent/client/metrics/gs/GS02;
    :cond_4
    const-string v1, "LGDDM-CSC"

    const-string v2, "CSC State Transition metric instance is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1369
    const-string v0, "GSM"

    const-string v1, "[GSMConn] UNEXPECTED; mPartialWakeLock is held when finalizing."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    .line 1372
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 389
    const-string v0, "CA"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "TLS"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RGS"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 390
    :cond_0
    const-string v0, ""

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->dialedAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    .line 397
    :goto_0
    return-object v0

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->dialedAddress:Ljava/lang/String;

    goto :goto_0

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBeforeFowardingNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1528
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->redirectNumber:Ljava/lang/String;

    return-object v0
.end method

.method getCIQIdForTMUS()I
    .locals 1

    .prologue
    .line 1182
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqId:I

    return v0
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getCdnipNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cdnipNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectTime()J
    .locals 2

    .prologue
    .line 409
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTime:J

    return-wide v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 405
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->createTime:J

    return-wide v0
.end method

.method public getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    return-object v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .prologue
    .line 413
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnectTime:J

    return-wide v0
.end method

.method public getDurationMillis()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 417
    iget-wide v2, p0, Lcom/android/internal/telephony/Connection;->connectTimeReal:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 422
    :goto_0
    return-wide v0

    .line 419
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->duration:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 420
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/Connection;->connectTimeReal:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 422
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->duration:J

    goto :goto_0
.end method

.method getGSMIndex()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1227
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    if-ltz v0, :cond_0

    .line 1228
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 1230
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "GSM index not yet assigned"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHoldDurationMillis()J
    .locals 4

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 429
    const-wide/16 v0, 0x0

    .line 431
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->holdingStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 1517
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->numberPresentation:I

    return v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method

.method public getRedialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->redialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    if-gt v0, v1, :cond_1

    .line 1353
    :cond_0
    const-string v0, ""

    .line 1356
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 458
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnected:Z

    if-eqz v0, :cond_0

    .line 459
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    .line 461
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    goto :goto_0
.end method

.method public getToa()I
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->TOA:I

    return v0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    return-object v0
.end method

.method getcqID()I
    .locals 1

    .prologue
    .line 1543
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->ciqID:I

    return v0
.end method

.method public hangup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnected:Z

    if-nez v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 471
    return-void

    .line 469
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming:Z

    return v0
.end method

.method onConnectedInOrOut()V
    .locals 4

    .prologue
    .line 1239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTime:J

    .line 1240
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->connectTimeReal:J

    .line 1241
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->duration:J

    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectedInOrOut: connectTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 1249
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming:Z

    if-nez v0, :cond_0

    .line 1251
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    .line 1254
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isPause:Z

    if-eqz v0, :cond_1

    .line 1255
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1259
    :goto_0
    return-void

    .line 1257
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    goto :goto_0
.end method

.method onConnectedSRVCC()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1266
    const-wide/16 v0, 0x0

    .line 1268
    .local v0, LTECallStartTime:J
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "LTEStartCallTime"

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SRVCC onConnectedInOrOut: LTECallStartTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 1272
    cmp-long v2, v0, v4

    if-gtz v2, :cond_1

    .line 1274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTime:J

    .line 1275
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/Connection;->connectTimeReal:J

    .line 1282
    :goto_0
    iput-wide v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->duration:J

    .line 1287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SRVCC onConnectedInOrOut: connectTimeReal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/internal/telephony/Connection;->connectTimeReal:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 1290
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming:Z

    if-nez v2, :cond_0

    .line 1292
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    .line 1295
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isPause:Z

    if-eqz v2, :cond_2

    .line 1296
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1300
    :goto_1
    return-void

    .line 1279
    :cond_1
    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTime:J

    .line 1280
    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->connectTimeReal:J

    goto :goto_0

    .line 1298
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    goto :goto_1
.end method

.method onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .locals 11
    .parameter "cause"

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x6

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 940
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 942
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnected:Z

    if-nez v3, :cond_0

    .line 943
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    .line 945
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnectTime:J

    .line 946
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/internal/telephony/Connection;->connectTimeReal:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->duration:J

    .line 947
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnected:Z

    .line 952
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 954
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v3, :cond_0

    .line 955
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/gsm/GsmCall;->connectionDisconnected(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 958
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    .line 960
    sget-boolean v3, Lcom/android/internal/telephony/gsm/GsmConnection;->CIQ_EXTENSION:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqId:I

    if-eq v3, v7, :cond_2

    .line 961
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v3, :cond_5

    .line 962
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqId:I

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    const/16 v5, 0x1c

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/CallStateBroadcaster;->SendCallDisconnected(ILjava/lang/String;I)V

    .line 968
    :goto_0
    sget-boolean v3, Lcom/android/internal/telephony/gsm/GsmConnection;->DBG_CIQ:Z

    if-eqz v3, :cond_1

    const-string v3, "[CIQ_EXTENSION] onDisconnect() normal call clearing"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 969
    :cond_1
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqId:I

    .line 974
    :cond_2
    const-string v3, "1"

    const-string v4, "service.iq.active"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 975
    const/4 v2, 0x0

    .line 976
    .local v2, state:B
    const/4 v0, 0x0

    .line 977
    .local v0, gs02:Lcom/carrieriq/iqagent/client/metrics/gs/GS02;
    const/4 v1, 0x0

    .line 997
    .local v1, gs03:Lcom/carrieriq/iqagent/client/metrics/gs/GS03;
    sget-boolean v3, Lcom/android/internal/telephony/RIL;->IsAnswered:Z

    if-eqz v3, :cond_8

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v3, :cond_8

    .line 998
    invoke-static {}, Lcom/lge/ciq/VoiceCallCIQ;->getGS02Metric()Lcom/carrieriq/iqagent/client/metrics/gs/GS02;

    move-result-object v0

    .line 999
    const-string v3, "LGDDM-CSC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDisconnect: termCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-short v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->termCode:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    if-eqz v0, :cond_7

    .line 1001
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->ciqID:I

    iput v3, v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->dwCallId:I

    .line 1002
    iput-byte v9, v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->ucCallState:B

    .line 1003
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/lge/ciq/VoiceCallCIQ;->submitCSCall(Landroid/content/Context;Lcom/carrieriq/iqagent/client/Metric;)V

    .line 1007
    :goto_1
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/internal/telephony/RIL;->IsAnswered:Z

    .line 1008
    iput-short v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->termCode:S

    .line 1015
    :cond_3
    :goto_2
    invoke-static {}, Lcom/lge/ciq/VoiceCallCIQ;->getGS03Metric()Lcom/carrieriq/iqagent/client/metrics/gs/GS03;

    move-result-object v1

    .line 1016
    if-eqz v1, :cond_c

    .line 1017
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->ciqID:I

    iput v3, v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS03;->dwCallId:I

    .line 1018
    iput v7, v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS03;->dwErrCode:I

    .line 1019
    iget-short v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->termCode:S

    iput-short v3, v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS03;->wTermCode:S

    .line 1020
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/lge/ciq/VoiceCallCIQ;->submitCSCall(Landroid/content/Context;Lcom/carrieriq/iqagent/client/Metric;)V

    .line 1026
    .end local v0           #gs02:Lcom/carrieriq/iqagent/client/metrics/gs/GS02;
    .end local v1           #gs03:Lcom/carrieriq/iqagent/client/metrics/gs/GS03;
    .end local v2           #state:B
    :cond_4
    :goto_3
    return-void

    .line 963
    :cond_5
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->TIMED_OUT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v3, :cond_6

    .line 964
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqId:I

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    const/16 v5, 0x66

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/CallStateBroadcaster;->SendCallDisconnected(ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 966
    :cond_6
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqId:I

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    const/16 v5, 0x10

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/CallStateBroadcaster;->SendCallDisconnected(ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1005
    .restart local v0       #gs02:Lcom/carrieriq/iqagent/client/metrics/gs/GS02;
    .restart local v1       #gs03:Lcom/carrieriq/iqagent/client/metrics/gs/GS03;
    .restart local v2       #state:B
    :cond_7
    const-string v3, "LGDDM-CSC"

    const-string v4, "CSC State Transition metric instance is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1009
    :cond_8
    iget-byte v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->ciqState:B

    if-eq v3, v9, :cond_9

    if-eq v2, v9, :cond_9

    iget-short v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->termCode:S

    const/16 v4, 0x100

    if-eq v3, v4, :cond_9

    iget-short v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->termCode:S

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_a

    .line 1010
    :cond_9
    iput-short v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->termCode:S

    goto :goto_2

    .line 1011
    :cond_a
    iget-byte v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->ciqState:B

    if-eq v3, v10, :cond_b

    if-eq v2, v10, :cond_b

    iget-short v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->termCode:S

    const/16 v4, 0x158

    if-eq v3, v4, :cond_b

    iget-short v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->termCode:S

    const/16 v4, 0x164

    if-eq v3, v4, :cond_b

    iget-short v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->termCode:S

    const/16 v4, 0x81

    if-ne v3, v4, :cond_3

    .line 1012
    :cond_b
    const/16 v3, 0x202

    iput-short v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->termCode:S

    goto :goto_2

    .line 1022
    :cond_c
    const-string v3, "LGDDM-CSC"

    const-string v4, "CSC End metric instance is null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method onHangupLocal()V
    .locals 1

    .prologue
    .line 555
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 562
    return-void
.end method

.method onHangupLocalMissed()V
    .locals 1

    .prologue
    .line 567
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 568
    return-void
.end method

.method onRemoteDisconnect(I)V
    .locals 10
    .parameter "causeCode"

    .prologue
    const/4 v9, 0x6

    const/4 v8, -0x1

    const/16 v7, 0x81

    const/4 v6, 0x7

    const/4 v5, 0x0

    .line 858
    const/4 v2, 0x0

    const-string v3, "support_network_change_auto_retry"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 859
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 860
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 861
    .local v0, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v2, :cond_1

    .line 862
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getAddress() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 864
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network_change_auto_retry"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 872
    .end local v0           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_1
    sget-boolean v2, Lcom/android/internal/telephony/gsm/GsmConnection;->CIQ_EXTENSION:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqId:I

    if-eq v2, v8, :cond_3

    .line 873
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 874
    .restart local v0       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v2, :cond_a

    .line 875
    sget-boolean v2, Lcom/android/internal/telephony/gsm/GsmConnection;->DBG_CIQ:Z

    if-eqz v2, :cond_2

    const-string v2, "[EXTENSION] update onRemotedisconnect() CallFailCause.SERVICE_NOT_AVAILABLE(63)"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 876
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqId:I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    const/16 v4, 0x3f

    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/CallStateBroadcaster;->SendCallDisconnected(ILjava/lang/String;I)V

    .line 882
    :goto_0
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqId:I

    .line 887
    .end local v0           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_3
    const-string v2, "1"

    const-string v3, "service.iq.active"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 888
    iput-byte v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->ciqState:B

    .line 889
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->systemCode:I

    .line 890
    const-string v2, "LGDDM-CSC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRemoteDisconnect, systemCode1 -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->systemCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->systemCode:I

    const v3, 0xffff

    if-ne v2, v3, :cond_4

    .line 894
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->systemCode:I

    .line 896
    :cond_4
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->systemCode:I

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_5

    .line 898
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->systemCode:I

    int-to-short v2, v2

    iput-short v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->termCode:S

    .line 899
    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->systemCode:I

    .line 902
    :cond_5
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->systemCode:I

    const/16 v3, 0x158

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->systemCode:I

    const/16 v3, 0x100

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->systemCode:I

    const/16 v3, 0x164

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->systemCode:I

    if-eq v2, v7, :cond_6

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->systemCode:I

    const/16 v3, 0x3e9

    if-ne v2, v3, :cond_7

    .line 903
    :cond_6
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->systemCode:I

    int-to-short v2, v2

    iput-short v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->termCode:S

    .line 904
    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->systemCode:I

    .line 907
    :cond_7
    const-string v2, "LGDDM-CSC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRemoteDisconnect, systemCode2 -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->systemCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const-string v2, "LGDDM-CSC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRemoteDisconnect, termCode -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-short v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->termCode:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget-short v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->termCode:S

    const/16 v3, 0x10

    if-eq v2, v3, :cond_9

    .line 911
    const/4 v1, 0x0

    .line 913
    .local v1, gs02:Lcom/carrieriq/iqagent/client/metrics/gs/GS02;
    invoke-static {}, Lcom/lge/ciq/VoiceCallCIQ;->getGS02Metric()Lcom/carrieriq/iqagent/client/metrics/gs/GS02;

    move-result-object v1

    .line 914
    if-eqz v1, :cond_e

    .line 915
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->ciqID:I

    iput v2, v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->dwCallId:I

    .line 917
    iget-short v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->termCode:S

    const/16 v3, 0x158

    if-eq v2, v3, :cond_8

    iget-short v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->termCode:S

    const/16 v3, 0x164

    if-eq v2, v3, :cond_8

    iget-short v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->termCode:S

    if-eq v2, v7, :cond_8

    iget-short v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->termCode:S

    const/16 v3, 0x3e9

    if-ne v2, v3, :cond_c

    .line 918
    :cond_8
    iput-byte v6, v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->ucCallState:B

    .line 919
    iput-byte v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->ciqState:B

    .line 927
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lge/ciq/VoiceCallCIQ;->submitCSCall(Landroid/content/Context;Lcom/carrieriq/iqagent/client/Metric;)V

    .line 934
    .end local v1           #gs02:Lcom/carrieriq/iqagent/client/metrics/gs/GS02;
    :cond_9
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 935
    return-void

    .line 879
    .restart local v0       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_a
    sget-boolean v2, Lcom/android/internal/telephony/gsm/GsmConnection;->DBG_CIQ:Z

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CIQ_EXTENSION] update onRemotedisconnect() CallFailCause"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 880
    :cond_b
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqId:I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lcom/android/internal/telephony/CallStateBroadcaster;->SendCallDisconnected(ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 920
    .end local v0           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .restart local v1       #gs02:Lcom/carrieriq/iqagent/client/metrics/gs/GS02;
    :cond_c
    iget-short v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->termCode:S

    const/16 v3, 0x100

    if-ne v2, v3, :cond_d

    .line 921
    iput-byte v9, v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->ucCallState:B

    .line 922
    iput-byte v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->ciqState:B

    goto :goto_1

    .line 924
    :cond_d
    iput-byte v6, v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->ucCallState:B

    goto :goto_1

    .line 929
    :cond_e
    const-string v2, "LGDDM-CSC"

    const-string v3, "CSC State Transition metric instance is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method onStartedHolding()V
    .locals 2

    .prologue
    .line 1306
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->holdingStartTime:J

    .line 1307
    return-void
.end method

.method public proceedAfterWaitChar()V
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 487
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :goto_0
    return-void

    .line 492
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 494
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 4
    .parameter "str"

    .prologue
    .line 498
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_0

    .line 499
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :goto_0
    return-void

    .line 504
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 532
    .local v0, buf:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    .line 534
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proceedAfterWildChar: new postDialString is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 540
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method public separate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnected:Z

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->separate(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 479
    return-void

    .line 477
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAsFake(Z)V
    .locals 0
    .parameter "fake"

    .prologue
    .line 1534
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    .line 1535
    :cond_0
    return-void
.end method

.method setCIQIdForTMUS(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1176
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqId:I

    .line 1177
    return-void
.end method

.method update(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 12
    .parameter "dc"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1032
    const/4 v0, 0x0

    .line 1033
    .local v0, changed:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isConnectingInOrOut()Z

    move-result v6

    .line 1034
    .local v6, wasConnectingInOrOut:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_b

    move v7, v8

    .line 1037
    .local v7, wasHolding:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 1040
    .local v3, oldState:Lcom/android/internal/telephony/Call$State;
    iget-object v10, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v2

    .line 1042
    .local v2, newParent:Lcom/android/internal/telephony/gsm/GsmCall;
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    iget-object v11, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/internal/telephony/gsm/GsmConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1043
    const-string v10, "update: phone # changed!"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 1044
    iget-object v10, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    .line 1045
    const/4 v0, 0x1

    .line 1049
    :cond_0
    iget-object v10, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1050
    iget-object v10, p0, Lcom/android/internal/telephony/Connection;->cnapName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1051
    const/4 v0, 0x1

    .line 1052
    const-string v10, ""

    iput-object v10, p0, Lcom/android/internal/telephony/Connection;->cnapName:Ljava/lang/String;

    .line 1059
    :cond_1
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--dssds----"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/Connection;->cnapName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 1060
    iget v10, p1, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v10, p0, Lcom/android/internal/telephony/Connection;->cnapNamePresentation:I

    .line 1061
    iget v10, p1, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->numberPresentation:I

    .line 1063
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eq v2, v10, :cond_d

    .line 1064
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v10, :cond_2

    .line 1065
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v10, p0}, Lcom/android/internal/telephony/gsm/GsmCall;->detach(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 1067
    :cond_2
    invoke-virtual {v2, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 1068
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 1069
    const/4 v0, 0x1

    .line 1078
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update: parent="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", hasNewParent="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eq v2, v11, :cond_10

    :goto_3
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", wasConnectingInOrOut="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", wasHolding="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isConnectingInOrOut="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isConnectingInOrOut()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", changed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 1087
    if-eqz v6, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isConnectingInOrOut()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1088
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onConnectedInOrOut()V

    .line 1091
    :cond_3
    if-eqz v0, :cond_4

    if-nez v7, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_4

    .line 1093
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onStartedHolding()V

    .line 1097
    :cond_4
    const/4 v8, 0x0

    const-string v9, "RingBackTone"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1098
    iget v8, p1, Lcom/android/internal/telephony/DriverCall;->signal:I

    iput v8, p0, Lcom/android/internal/telephony/Connection;->ringbackToneSignal:I

    .line 1102
    :cond_5
    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->cdnipNumber:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cdnipNumber:Ljava/lang/String;

    .line 1103
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cdnipNumber 1 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 1107
    sget-boolean v8, Lcom/android/internal/telephony/gsm/GsmConnection;->CIQ_EXTENSION:Z

    if-eqz v8, :cond_7

    .line 1108
    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v9, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v8, v9, :cond_11

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->CIQ_State:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_11

    .line 1109
    sget-object v8, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->CIQ_State:Lcom/android/internal/telephony/Call$State;

    .line 1110
    sget-boolean v8, Lcom/android/internal/telephony/gsm/GsmConnection;->DBG_CIQ:Z

    if-eqz v8, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[CIQ_EXTENSION] update() dc.state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", CIQ_State="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->CIQ_State:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 1111
    :cond_6
    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqId:I

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->CIQ_State:Lcom/android/internal/telephony/Call$State;

    invoke-static {v8, v9, v10}, Lcom/android/internal/telephony/CallStateBroadcaster;->SendCallStatus(ILjava/lang/String;Lcom/android/internal/telephony/Call$State;)V

    .line 1142
    :cond_7
    :goto_4
    const-string v8, "1"

    const-string v9, "service.iq.active"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1143
    if-eqz v0, :cond_a

    .line 1144
    const/4 v5, 0x0

    .line 1145
    .local v5, state:B
    const/4 v1, 0x0

    .line 1147
    .local v1, gs02:Lcom/carrieriq/iqagent/client/metrics/gs/GS02;
    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v9, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v8, v9, :cond_8

    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v9, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v8, v9, :cond_19

    .line 1148
    :cond_8
    const/4 v5, 0x3

    .line 1157
    :cond_9
    :goto_5
    invoke-static {}, Lcom/lge/ciq/VoiceCallCIQ;->getGS02Metric()Lcom/carrieriq/iqagent/client/metrics/gs/GS02;

    move-result-object v1

    .line 1158
    if-eqz v1, :cond_1d

    .line 1159
    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->ciqID:I

    iput v8, v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->dwCallId:I

    .line 1160
    iput-byte v5, v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->ucCallState:B

    .line 1161
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/lge/ciq/VoiceCallCIQ;->submitCSCall(Landroid/content/Context;Lcom/carrieriq/iqagent/client/Metric;)V

    .line 1168
    .end local v1           #gs02:Lcom/carrieriq/iqagent/client/metrics/gs/GS02;
    .end local v5           #state:B
    :cond_a
    :goto_6
    return v0

    .end local v2           #newParent:Lcom/android/internal/telephony/gsm/GsmCall;
    .end local v3           #oldState:Lcom/android/internal/telephony/Call$State;
    .end local v7           #wasHolding:Z
    :cond_b
    move v7, v9

    .line 1034
    goto/16 :goto_0

    .line 1054
    .restart local v2       #newParent:Lcom/android/internal/telephony/gsm/GsmCall;
    .restart local v3       #oldState:Lcom/android/internal/telephony/Call$State;
    .restart local v7       #wasHolding:Z
    :cond_c
    iget-object v10, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/internal/telephony/Connection;->cnapName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1055
    const/4 v0, 0x1

    .line 1056
    iget-object v10, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v10, p0, Lcom/android/internal/telephony/Connection;->cnapName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1072
    :cond_d
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v10, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCall;->update(Lcom/android/internal/telephony/gsm/GsmConnection;Lcom/android/internal/telephony/DriverCall;)Z

    move-result v4

    .line 1073
    .local v4, parentStateChange:Z
    if-nez v0, :cond_e

    if-eqz v4, :cond_f

    :cond_e
    move v0, v8

    :goto_7
    goto/16 :goto_2

    :cond_f
    move v0, v9

    goto :goto_7

    .end local v4           #parentStateChange:Z
    :cond_10
    move v8, v9

    .line 1078
    goto/16 :goto_3

    .line 1112
    :cond_11
    if-eqz v0, :cond_7

    .line 1113
    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v9, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v8, v9, :cond_13

    .line 1114
    sget-object v8, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->CIQ_State:Lcom/android/internal/telephony/Call$State;

    .line 1115
    sget-boolean v8, Lcom/android/internal/telephony/gsm/GsmConnection;->DBG_CIQ:Z

    if-eqz v8, :cond_12

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[CIQ_EXTENSION] update() CIQ_State"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->CIQ_State:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 1116
    :cond_12
    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqId:I

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->CIQ_State:Lcom/android/internal/telephony/Call$State;

    invoke-static {v8, v9, v10}, Lcom/android/internal/telephony/CallStateBroadcaster;->SendCallStatus(ILjava/lang/String;Lcom/android/internal/telephony/Call$State;)V

    goto/16 :goto_4

    .line 1117
    :cond_13
    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v9, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v8, v9, :cond_15

    .line 1118
    sget-object v8, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->CIQ_State:Lcom/android/internal/telephony/Call$State;

    .line 1119
    sget-boolean v8, Lcom/android/internal/telephony/gsm/GsmConnection;->DBG_CIQ:Z

    if-eqz v8, :cond_14

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[CIQ_EXTENSION] update() CIQ_State"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->CIQ_State:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 1120
    :cond_14
    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqId:I

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->CIQ_State:Lcom/android/internal/telephony/Call$State;

    invoke-static {v8, v9, v10}, Lcom/android/internal/telephony/CallStateBroadcaster;->SendCallStatus(ILjava/lang/String;Lcom/android/internal/telephony/Call$State;)V

    goto/16 :goto_4

    .line 1121
    :cond_15
    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v9, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v8, v9, :cond_17

    .line 1122
    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->CIQ_State:Lcom/android/internal/telephony/Call$State;

    .line 1123
    sget-boolean v8, Lcom/android/internal/telephony/gsm/GsmConnection;->DBG_CIQ:Z

    if-eqz v8, :cond_16

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[CIQ_EXTENSION] update() CIQ_State"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->CIQ_State:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 1124
    :cond_16
    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqId:I

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->CIQ_State:Lcom/android/internal/telephony/Call$State;

    invoke-static {v8, v9, v10}, Lcom/android/internal/telephony/CallStateBroadcaster;->SendCallStatus(ILjava/lang/String;Lcom/android/internal/telephony/Call$State;)V

    goto/16 :goto_4

    .line 1125
    :cond_17
    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v9, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v8, v9, :cond_7

    .line 1126
    sget-object v8, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->CIQ_State:Lcom/android/internal/telephony/Call$State;

    .line 1127
    sget-boolean v8, Lcom/android/internal/telephony/gsm/GsmConnection;->DBG_CIQ:Z

    if-eqz v8, :cond_18

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[CIQ_EXTENSION] update() CIQ_State"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->CIQ_State:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 1128
    :cond_18
    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->tmus_ciqId:I

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->CIQ_State:Lcom/android/internal/telephony/Call$State;

    invoke-static {v8, v9, v10}, Lcom/android/internal/telephony/CallStateBroadcaster;->SendCallStatus(ILjava/lang/String;Lcom/android/internal/telephony/Call$State;)V

    goto/16 :goto_4

    .line 1149
    .restart local v1       #gs02:Lcom/carrieriq/iqagent/client/metrics/gs/GS02;
    .restart local v5       #state:B
    :cond_19
    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v9, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v8, v9, :cond_1a

    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v9, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v8, v9, :cond_1b

    .line 1150
    :cond_1a
    const/4 v5, 0x4

    goto/16 :goto_5

    .line 1151
    :cond_1b
    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v9, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v8, v9, :cond_1c

    .line 1152
    const/4 v5, 0x5

    goto/16 :goto_5

    .line 1153
    :cond_1c
    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v9, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v8, v9, :cond_9

    .line 1154
    const/16 v5, 0x8

    goto/16 :goto_5

    .line 1163
    :cond_1d
    const-string v8, "LGDDM-CSC"

    const-string v9, "CSC State Transition metric instance is null!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method
