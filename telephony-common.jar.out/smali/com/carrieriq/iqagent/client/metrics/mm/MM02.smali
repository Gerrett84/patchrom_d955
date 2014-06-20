.class public Lcom/carrieriq/iqagent/client/metrics/mm/MM02;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "MM02.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/carrieriq/iqagent/client/metrics/mm/MM02$2;,
        Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/carrieriq/iqagent/client/metrics/mm/MM02;",
            ">;"
        }
    .end annotation
.end field

#the value of this static final field might be set in the static constructor
.field public static final ID:I = 0x0

.field private static final IQ_SIP_REG_STATE_AUTH_CHALLENGE:B = 0x3t

.field private static final IQ_SIP_REG_STATE_AUTH_REGISTER:B = 0x4t

.field private static final IQ_SIP_REG_STATE_NOTIFIED:B = 0x6t

.field private static final IQ_SIP_REG_STATE_NOT_REGISTERED:B = 0x1t

.field private static final IQ_SIP_REG_STATE_REGISTERED:B = 0x5t

.field private static final IQ_SIP_REG_STATE_REGISTERING:B = 0x2t

.field private static final IQ_SIP_REG_STATE_TIMEOUT:B = 0x7t

.field private static final IQ_SIP_REG_STATE_UNKNOWN:B


# instance fields
.field private szCallId:Ljava/lang/String;

.field private ucRegState:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "MM02"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->ID:I

    .line 169
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$1;

    invoke-direct {v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$1;-><init>()V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 65
    invoke-virtual {p0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->reset()V

    .line 66
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 184
    sget v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->ucRegState:B

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->szCallId:Ljava/lang/String;

    .line 187
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/carrieriq/iqagent/client/metrics/mm/MM02$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;Ljava/lang/String;)V
    .locals 1
    .parameter "ucRegState"
    .parameter "szCallId"

    .prologue
    .line 70
    sget v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->setSipRegistrationState(Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method private sipRegisterStateToByte(Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;)B
    .locals 3
    .parameter "regState"

    .prologue
    const/4 v0, 0x0

    .line 128
    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$2;->$SwitchMap$com$carrieriq$iqagent$client$metrics$mm$MM02$SipRegisterState:[I

    invoke-virtual {p1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 138
    :goto_0
    :pswitch_0
    return v0

    .line 130
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 131
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 132
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 133
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 134
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 135
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 136
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 128
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
    .end packed-switch
.end method

.method private toSipRegisterState(B)Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;
    .locals 1
    .parameter "regState"

    .prologue
    .line 142
    packed-switch p1, :pswitch_data_0

    .line 152
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->IQ_SIP_REG_STATE_UNKNOWN:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    :goto_0
    return-object v0

    .line 143
    :pswitch_0
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->IQ_SIP_REG_STATE_UNKNOWN:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    goto :goto_0

    .line 144
    :pswitch_1
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->IQ_SIP_REG_STATE_NOT_REGISTERED:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    goto :goto_0

    .line 145
    :pswitch_2
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->IQ_SIP_REG_STATE_REGISTERING:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    goto :goto_0

    .line 146
    :pswitch_3
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->IQ_SIP_REG_STATE_AUTH_CHALLENGE:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    goto :goto_0

    .line 147
    :pswitch_4
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->IQ_SIP_REG_STATE_AUTH_REGISTER:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    goto :goto_0

    .line 148
    :pswitch_5
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->IQ_SIP_REG_STATE_REGISTERED:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    goto :goto_0

    .line 149
    :pswitch_6
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->IQ_SIP_REG_STATE_NOTIFIED:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    goto :goto_0

    .line 150
    :pswitch_7
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->IQ_SIP_REG_STATE_TIMEOUT:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    goto :goto_0

    .line 142
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
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->szCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterState()Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;
    .locals 1

    .prologue
    .line 89
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->ucRegState:B

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->toSipRegisterState(B)Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->ucRegState:B

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->szCallId:Ljava/lang/String;

    .line 125
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
    .line 199
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->ucRegState:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 200
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->szCallId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 0
    .parameter "szCallId"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->szCallId:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setRegisterState(Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;)V
    .locals 1
    .parameter "ucRegState"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->sipRegisterStateToByte(Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;)B

    move-result v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->ucRegState:B

    .line 99
    return-void
.end method

.method public setSipRegistrationState(Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;Ljava/lang/String;)V
    .locals 1
    .parameter "ucRegState"
    .parameter "szCallId"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->sipRegisterStateToByte(Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;)B

    move-result v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->ucRegState:B

    .line 81
    iput-object p2, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->szCallId:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->ID:I

    invoke-static {v1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->idToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nucRegState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->ucRegState:B

    invoke-direct {p0, v1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->toSipRegisterState(B)Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nszCallId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->szCallId:Ljava/lang/String;

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
    .line 164
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->ucRegState:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 165
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;->szCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    return-void
.end method
