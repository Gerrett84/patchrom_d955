.class public Lcom/carrieriq/iqagent/client/metrics/mm/MM04;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "MM04.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/carrieriq/iqagent/client/metrics/mm/MM04;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:I


# instance fields
.field private szCallId:Ljava/lang/String;

.field private szDialedString:Ljava/lang/String;

.field private szOriginatingUri:Ljava/lang/String;

.field private szTerminatingUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "MM04"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->ID:I

    .line 182
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04$1;

    invoke-direct {v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM04$1;-><init>()V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 51
    invoke-virtual {p0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->reset()V

    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 197
    sget v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szDialedString:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szCallId:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szOriginatingUri:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szTerminatingUri:Ljava/lang/String;

    .line 202
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/carrieriq/iqagent/client/metrics/mm/MM04$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "szDialedString"
    .parameter "szCallId"
    .parameter "szOriginatingUri"
    .parameter "szTerminatingUri"

    .prologue
    .line 56
    sget v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 57
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->setSipSessionStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getDialedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szDialedString:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginatingUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szOriginatingUri:Ljava/lang/String;

    return-object v0
.end method

.method public getTerminatingUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szTerminatingUri:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 160
    const-string v0, ""

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szDialedString:Ljava/lang/String;

    .line 161
    const-string v0, ""

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szCallId:Ljava/lang/String;

    .line 162
    const-string v0, ""

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szOriginatingUri:Ljava/lang/String;

    .line 163
    const-string v0, ""

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szTerminatingUri:Ljava/lang/String;

    .line 164
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
    .line 216
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szDialedString:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szCallId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szOriginatingUri:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szTerminatingUri:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 0
    .parameter "szCallId"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szCallId:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setDialedString(Ljava/lang/String;)V
    .locals 0
    .parameter "szDialedString"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szDialedString:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setOriginatingUri(Ljava/lang/String;)V
    .locals 0
    .parameter "szOriginatingUri"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szOriginatingUri:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setSipSessionStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "szDialedString"
    .parameter "szCallId"
    .parameter "szOriginatingUri"
    .parameter "szTerminatingUri"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szDialedString:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szCallId:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szOriginatingUri:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szTerminatingUri:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setTerminatingUri(Ljava/lang/String;)V
    .locals 0
    .parameter "szTerminatingUri"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szTerminatingUri:Ljava/lang/String;

    .line 154
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

    sget v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->ID:I

    invoke-static {v1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->idToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nszDialedString : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szDialedString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nszCallId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nszOriginatingUri : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szOriginatingUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nszTerminatingUri : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szTerminatingUri:Ljava/lang/String;

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
    .line 175
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szDialedString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szOriginatingUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM04;->szTerminatingUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    return-void
.end method
