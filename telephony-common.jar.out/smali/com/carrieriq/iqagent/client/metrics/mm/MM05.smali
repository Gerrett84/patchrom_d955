.class public Lcom/carrieriq/iqagent/client/metrics/mm/MM05;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "MM05.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/carrieriq/iqagent/client/metrics/mm/MM05$2;,
        Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/carrieriq/iqagent/client/metrics/mm/MM05;",
            ">;"
        }
    .end annotation
.end field

#the value of this static final field might be set in the static constructor
.field public static final ID:I = 0x0

.field private static final IQ_SIP_CALL_STATE_ANSWERED:B = 0x8t

.field private static final IQ_SIP_CALL_STATE_CONNECTED:B = 0x9t

.field private static final IQ_SIP_CALL_STATE_DISCONNECTING:B = 0xbt

.field private static final IQ_SIP_CALL_STATE_HELD:B = 0xat

.field private static final IQ_SIP_CALL_STATE_IDLE:B = 0x1t

.field private static final IQ_SIP_CALL_STATE_INVITE:B = 0x2t

.field private static final IQ_SIP_CALL_STATE_NEGOTIATING:B = 0x5t

.field private static final IQ_SIP_CALL_STATE_PROGRESS:B = 0x4t

.field private static final IQ_SIP_CALL_STATE_RINGING:B = 0x7t

.field private static final IQ_SIP_CALL_STATE_TRYING:B = 0x3t

.field private static final IQ_SIP_CALL_STATE_UNKNOWN:B = 0x0t

.field private static final IQ_SIP_CALL_STATE_UPDATED:B = 0x6t


# instance fields
.field private szCallId:Ljava/lang/String;

.field private ucCallState:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "MM05"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->ID:I

    .line 184
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$1;

    invoke-direct {v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$1;-><init>()V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 75
    invoke-virtual {p0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->reset()V

    .line 76
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 199
    sget v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->ucCallState:B

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->szCallId:Ljava/lang/String;

    .line 202
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/carrieriq/iqagent/client/metrics/mm/MM05$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;Ljava/lang/String;)V
    .locals 1
    .parameter "ucCallState"
    .parameter "szCallId"

    .prologue
    .line 80
    sget v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->setSipSessionState(Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method private sipCallStateToByte(Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;)B
    .locals 3
    .parameter "ucCallState"

    .prologue
    const/4 v0, 0x0

    .line 135
    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$2;->$SwitchMap$com$carrieriq$iqagent$client$metrics$mm$MM05$SipCallState:[I

    invoke-virtual {p1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 149
    :goto_0
    :pswitch_0
    return v0

    .line 137
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 138
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 139
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 140
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 141
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 142
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 143
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 144
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 145
    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 146
    :pswitch_a
    const/16 v0, 0xa

    goto :goto_0

    .line 147
    :pswitch_b
    const/16 v0, 0xb

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private toSipCallState(B)Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;
    .locals 1
    .parameter "ucCallState"

    .prologue
    .line 153
    packed-switch p1, :pswitch_data_0

    .line 167
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_UNKNOWN:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    :goto_0
    return-object v0

    .line 154
    :pswitch_0
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_UNKNOWN:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    goto :goto_0

    .line 155
    :pswitch_1
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_IDLE:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    goto :goto_0

    .line 156
    :pswitch_2
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_INVITE:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    goto :goto_0

    .line 157
    :pswitch_3
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_TRYING:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    goto :goto_0

    .line 158
    :pswitch_4
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_PROGRESS:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    goto :goto_0

    .line 159
    :pswitch_5
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_NEGOTIATING:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    goto :goto_0

    .line 160
    :pswitch_6
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_UPDATED:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    goto :goto_0

    .line 161
    :pswitch_7
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_RINGING:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    goto :goto_0

    .line 162
    :pswitch_8
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_ANSWERED:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    goto :goto_0

    .line 163
    :pswitch_9
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_CONNECTED:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    goto :goto_0

    .line 164
    :pswitch_a
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_HELD:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    goto :goto_0

    .line 165
    :pswitch_b
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_DISCONNECTING:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->szCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getCallState()Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;
    .locals 1

    .prologue
    .line 99
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->ucCallState:B

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->toSipCallState(B)Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->ucCallState:B

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->szCallId:Ljava/lang/String;

    .line 132
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
    .line 214
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->ucCallState:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 215
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->szCallId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 0
    .parameter "szCallId"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->szCallId:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setCallState(Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;)V
    .locals 1
    .parameter "ucCallState"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->sipCallStateToByte(Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;)B

    move-result v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->ucCallState:B

    .line 108
    return-void
.end method

.method public setSipSessionState(Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;Ljava/lang/String;)V
    .locals 1
    .parameter "ucCallState"
    .parameter "szCallId"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->sipCallStateToByte(Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;)B

    move-result v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->ucCallState:B

    .line 91
    iput-object p2, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->szCallId:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->ID:I

    invoke-static {v1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->idToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nucCallState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->ucCallState:B

    invoke-direct {p0, v1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->toSipCallState(B)Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nszCallId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->szCallId:Ljava/lang/String;

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
    .line 179
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->ucCallState:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 180
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05;->szCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    return-void
.end method
