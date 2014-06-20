.class public Lcom/carrieriq/iqagent/client/metrics/mm/MM01;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "MM01.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/carrieriq/iqagent/client/metrics/mm/MM01$2;,
        Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;,
        Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/carrieriq/iqagent/client/metrics/mm/MM01;",
            ">;"
        }
    .end annotation
.end field

#the value of this static final field might be set in the static constructor
.field public static final ID:I = 0x0

.field private static final IQ_SIP_REGISTER_DIR_NETWORK:B = 0x2t

.field private static final IQ_SIP_REGISTER_DIR_UEAT:B = 0x1t

.field private static final IQ_SIP_REGISTER_DIR_UNKNOWN:B = 0x0t

.field private static final IQ_SIP_REG_TYPE_DEREG:B = 0x3t

.field private static final IQ_SIP_REG_TYPE_INITIAL:B = 0x1t

.field private static final IQ_SIP_REG_TYPE_REAUTH:B = 0x4t

.field private static final IQ_SIP_REG_TYPE_REREG:B = 0x2t

.field private static final IQ_SIP_REG_TYPE_UNKNOWN:B


# instance fields
.field private szCallId:Ljava/lang/String;

.field private szRequestUri:Ljava/lang/String;

.field private szTo:Ljava/lang/String;

.field private ucDirection:B

.field private ucType:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "MM01"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->ID:I

    .line 261
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$1;

    invoke-direct {v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$1;-><init>()V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 75
    invoke-virtual {p0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->reset()V

    .line 76
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 276
    sget v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->ucType:B

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->ucDirection:B

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->szCallId:Ljava/lang/String;

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->szRequestUri:Ljava/lang/String;

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->szTo:Ljava/lang/String;

    .line 282
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/carrieriq/iqagent/client/metrics/mm/MM01$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "ucType"
    .parameter "ucDirection"
    .parameter "szCallId"
    .parameter "szRequestUri"
    .parameter "szTo"

    .prologue
    .line 80
    sget v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 81
    invoke-virtual/range {p0 .. p5}, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->setSipRegistrationAttempt(Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method private sipRegisterDirToByte(Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;)B
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v0, 0x0

    .line 227
    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$2;->$SwitchMap$com$carrieriq$iqagent$client$metrics$mm$MM01$SipRegisterDir:[I

    invoke-virtual {p1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 232
    :goto_0
    :pswitch_0
    return v0

    .line 229
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 230
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sipRegisterToByte(Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;)B
    .locals 3
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 205
    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$2;->$SwitchMap$com$carrieriq$iqagent$client$metrics$mm$MM01$SipRegister:[I

    invoke-virtual {p1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 212
    :goto_0
    :pswitch_0
    return v0

    .line 207
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 208
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 209
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 210
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private toSipRegister(B)Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;
    .locals 1
    .parameter "type"

    .prologue
    .line 216
    packed-switch p1, :pswitch_data_0

    .line 223
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;->IQ_SIP_REG_TYPE_UNKNOWN:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

    :goto_0
    return-object v0

    .line 217
    :pswitch_0
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;->IQ_SIP_REG_TYPE_UNKNOWN:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

    goto :goto_0

    .line 218
    :pswitch_1
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;->IQ_SIP_REG_TYPE_INITIAL:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

    goto :goto_0

    .line 219
    :pswitch_2
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;->IQ_SIP_REG_TYPE_REREG:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

    goto :goto_0

    .line 220
    :pswitch_3
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;->IQ_SIP_REG_TYPE_DEREG:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

    goto :goto_0

    .line 221
    :pswitch_4
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;->IQ_SIP_REG_TYPE_REAUTH:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private toSipRegisterDir(B)Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;
    .locals 1
    .parameter "direction"

    .prologue
    .line 236
    packed-switch p1, :pswitch_data_0

    .line 241
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;->IQ_SIP_REGISTER_DIR_UNKNOWN:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;

    :goto_0
    return-object v0

    .line 237
    :pswitch_0
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;->IQ_SIP_REGISTER_DIR_UNKNOWN:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;

    goto :goto_0

    .line 238
    :pswitch_1
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;->IQ_SIP_REGISTER_DIR_UEAT:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;

    goto :goto_0

    .line 239
    :pswitch_2
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;->IQ_SIP_REGISTER_DIR_NETWORK:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->szCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;
    .locals 1

    .prologue
    .line 127
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->ucDirection:B

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->toSipRegisterDir(B)Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;

    move-result-object v0

    return-object v0
.end method

.method public getRequestUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->szRequestUri:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->szTo:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;
    .locals 1

    .prologue
    .line 110
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->ucType:B

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->toSipRegister(B)Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 197
    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->ucType:B

    .line 198
    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->ucDirection:B

    .line 199
    const-string v0, ""

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->szCallId:Ljava/lang/String;

    .line 200
    const-string v0, ""

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->szRequestUri:Ljava/lang/String;

    .line 201
    const-string v0, ""

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->szTo:Ljava/lang/String;

    .line 202
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
    .line 297
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->ucType:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 298
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->ucDirection:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 299
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->szCallId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->szRequestUri:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->szTo:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 0
    .parameter "szCallId"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->szCallId:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setDirection(Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;)V
    .locals 1
    .parameter "ucDirection"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->sipRegisterDirToByte(Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;)B

    move-result v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->ucDirection:B

    .line 136
    return-void
.end method

.method public setRequestUri(Ljava/lang/String;)V
    .locals 0
    .parameter "szRequestUri"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->szRequestUri:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setSipRegistrationAttempt(Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "ucType"
    .parameter "ucDirection"
    .parameter "szCallId"
    .parameter "szRequestUri"
    .parameter "szTo"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->sipRegisterToByte(Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;)B

    move-result v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->ucType:B

    .line 99
    invoke-direct {p0, p2}, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->sipRegisterDirToByte(Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;)B

    move-result v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->ucDirection:B

    .line 100
    iput-object p3, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->szCallId:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->szRequestUri:Ljava/lang/String;

    .line 102
    iput-object p5, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->szTo:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0
    .parameter "szTo"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->szTo:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setType(Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;)V
    .locals 1
    .parameter "ucType"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->sipRegisterToByte(Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;)B

    move-result v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->ucType:B

    .line 120
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->ID:I

    invoke-static {v1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->idToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nucType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->ucType:B

    invoke-direct {p0, v1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->toSipRegister(B)Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nucDirection : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->ucDirection:B

    invoke-direct {p0, v1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->toSipRegisterDir(B)Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nszCallId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->szCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nszRequestUri : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->szRequestUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nszTo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->szTo:Ljava/lang/String;

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
    .line 253
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->ucType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 254
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->ucDirection:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 255
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->szCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->szRequestUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01;->szTo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    return-void
.end method
