.class public Lcom/carrieriq/iqagent/client/metrics/mm/MM03;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "MM03.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/carrieriq/iqagent/client/metrics/mm/MM03;",
            ">;"
        }
    .end annotation
.end field

#the value of this static final field might be set in the static constructor
.field public static final ID:I = 0x0

.field public static final IQ_SIP_RESULT_LOST_RAN:S = -0x2s

.field public static final IQ_SIP_RESULT_TIMEOUT:S = 0x1s

.field public static final IQ_SIP_RESULT_UNKNOWN:S


# instance fields
.field private shResult:S

.field private szCallId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "MM03"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM03;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM03;->ID:I

    .line 181
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM03$1;

    invoke-direct {v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM03$1;-><init>()V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM03;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM03;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 51
    invoke-virtual {p0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM03;->reset()V

    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 196
    sget v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM03;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM03;->shResult:S

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM03;->szCallId:Ljava/lang/String;

    .line 199
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/carrieriq/iqagent/client/metrics/mm/MM03$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM03;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(SLjava/lang/String;)V
    .locals 1
    .parameter "shResult"
    .parameter "szCallId"

    .prologue
    .line 56
    sget v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM03;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/carrieriq/iqagent/client/metrics/mm/MM03;->setSipRegistrationResult(SLjava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM03;->szCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterResult()S
    .locals 1

    .prologue
    .line 127
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM03;->shResult:S

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM03;->shResult:S

    .line 164
    const-string v0, ""

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM03;->szCallId:Ljava/lang/String;

    .line 165
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
    .line 211
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM03;->shResult:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 212
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM03;->szCallId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM03;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 0
    .parameter "szCallId"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM03;->szCallId:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setRegisterResult(S)V
    .locals 0
    .parameter "shResult"

    .prologue
    .line 136
    iput-short p1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM03;->shResult:S

    .line 137
    return-void
.end method

.method public setSipRegistrationResult(SLjava/lang/String;)V
    .locals 0
    .parameter "shResult"
    .parameter "szCallId"

    .prologue
    .line 118
    iput-short p1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM03;->shResult:S

    .line 119
    iput-object p2, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM03;->szCallId:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM03;->ID:I

    invoke-static {v1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM03;->idToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nshResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM03;->shResult:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nszCallId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM03;->szCallId:Ljava/lang/String;

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
    .line 176
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM03;->shResult:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM03;->szCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    return-void
.end method
