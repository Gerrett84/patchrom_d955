.class public Lcom/carrieriq/iqagent/client/metrics/mm/MM06;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "MM06.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/carrieriq/iqagent/client/metrics/mm/MM06$2;,
        Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/carrieriq/iqagent/client/metrics/mm/MM06;",
            ">;"
        }
    .end annotation
.end field

#the value of this static final field might be set in the static constructor
.field public static final ID:I = 0x0

.field private static final IQ_SIP_ORIGINATED:B = 0x0t

.field public static final IQ_SIP_RESULT_LOST_RAN:S = -0x2s

.field public static final IQ_SIP_RESULT_TIMEOUT:S = 0x1s

.field public static final IQ_SIP_RESULT_UNKNOWN:S = 0x0s

.field private static final IQ_SIP_TERMINATED:B = 0x1t

.field private static final RESPONSE_CODE_MASK:S = 0x7fffs

.field private static final TERMINATION_DIRECTION_SHIFT:I = 0xf


# instance fields
.field private shResult:S

.field private szCallId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "MM06"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->ID:I

    .line 277
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06$1;

    invoke-direct {v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM06$1;-><init>()V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 63
    invoke-virtual {p0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->reset()V

    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 292
    sget v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->shResult:S

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->szCallId:Ljava/lang/String;

    .line 295
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/carrieriq/iqagent/client/metrics/mm/MM06$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;SLjava/lang/String;)V
    .locals 1
    .parameter "direction"
    .parameter "responseCode"
    .parameter "szCallId"

    .prologue
    .line 68
    sget v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 69
    invoke-virtual {p0, p1, p2, p3}, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->setSipSessionEnd(Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;SLjava/lang/String;)V

    .line 70
    return-void
.end method

.method private sipDirectionToShort(Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;)S
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v0, 0x0

    .line 248
    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM06$2;->$SwitchMap$com$carrieriq$iqagent$client$metrics$mm$MM06$SipDirection:[I

    invoke-virtual {p1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 252
    :goto_0
    :pswitch_0
    return v0

    .line 250
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private toSipDirection(S)Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;
    .locals 1
    .parameter "direction"

    .prologue
    .line 256
    packed-switch p1, :pswitch_data_0

    .line 260
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;->IQ_SIP_ORIGINATED:Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;

    :goto_0
    return-object v0

    .line 257
    :pswitch_0
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;->IQ_SIP_ORIGINATED:Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;

    goto :goto_0

    .line 258
    :pswitch_1
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;->IQ_SIP_TERMINATED:Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;

    goto :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->szCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()S
    .locals 1

    .prologue
    .line 159
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->shResult:S

    and-int/lit16 v0, v0, 0x7fff

    int-to-short v0, v0

    return v0
.end method

.method public getTerminationDirection()Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;
    .locals 1

    .prologue
    .line 141
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->shResult:S

    shr-int/lit8 v0, v0, 0xf

    and-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->toSipDirection(S)Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->shResult:S

    .line 244
    const-string v0, ""

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->szCallId:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 308
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->shResult:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 309
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->szCallId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 0
    .parameter "szCallId"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->szCallId:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setResponseCode(S)V
    .locals 2
    .parameter "responseCode"

    .prologue
    .line 216
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->shResult:S

    and-int/lit16 v0, v0, -0x8000

    and-int/lit16 v1, p1, 0x7fff

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->shResult:S

    .line 218
    return-void
.end method

.method public setSipSessionEnd(Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;SLjava/lang/String;)V
    .locals 0
    .parameter "direction"
    .parameter "responseCode"
    .parameter "szCallId"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->setTerminationDirection(Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;)V

    .line 132
    invoke-virtual {p0, p2}, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->setResponseCode(S)V

    .line 133
    iput-object p3, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->szCallId:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setTerminationDirection(Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 150
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->shResult:S

    and-int/lit16 v0, v0, 0x7fff

    invoke-direct {p0, p1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->sipDirectionToShort(Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;)S

    move-result v1

    shl-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->shResult:S

    .line 152
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->ID:I

    invoke-static {v1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->idToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nTermination Direction : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->getTerminationDirection()Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nResponse Code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->getResponseCode()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nszCallId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->szCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 272
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->shResult:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06;->szCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    return-void
.end method
