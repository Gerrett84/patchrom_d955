.class public Lcom/carrieriq/iqagent/client/metrics/mm/MM07;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "MM07.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/carrieriq/iqagent/client/metrics/mm/MM07$2;,
        Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;,
        Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/carrieriq/iqagent/client/metrics/mm/MM07;",
            ">;"
        }
    .end annotation
.end field

#the value of this static final field might be set in the static constructor
.field public static final ID:I = 0x0

.field private static final IQ_SDP_MEDIA_APPLICATION:B = 0x4t

.field private static final IQ_SDP_MEDIA_AUDIO:B = 0x1t

.field private static final IQ_SDP_MEDIA_CONTROL:B = 0x6t

.field private static final IQ_SDP_MEDIA_DATA:B = 0x7t

.field private static final IQ_SDP_MEDIA_MESSAGE:B = 0x5t

.field private static final IQ_SDP_MEDIA_TEXT:B = 0x3t

.field private static final IQ_SDP_MEDIA_UNKNOWN:B = 0x0t

.field private static final IQ_SDP_MEDIA_VIDEO:B = 0x2t


# instance fields
.field private mediaStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Short;",
            "Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "MM07"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07;->ID:I

    .line 156
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$1;

    invoke-direct {v0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$1;-><init>()V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07;->mediaStats:Ljava/util/HashMap;

    .line 62
    invoke-virtual {p0}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07;->reset()V

    .line 63
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 11
    .parameter "in"

    .prologue
    .line 171
    sget v10, Lcom/carrieriq/iqagent/client/metrics/mm/MM07;->ID:I

    invoke-direct {p0, v10}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 37
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07;->mediaStats:Ljava/util/HashMap;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 173
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    int-to-short v10, v10

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    .line 175
    .local v5, key:Ljava/lang/Short;
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    .line 176
    .local v6, mediaType:B
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 177
    .local v3, format:B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 178
    .local v2, duration:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 179
    .local v9, packetsRcvd:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 180
    .local v7, packetsDrop:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 181
    .local v8, packetsLate:I
    new-instance v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;

    const/4 v10, 0x0

    invoke-direct {v1, p0, v6, v3, v10}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;-><init>(Lcom/carrieriq/iqagent/client/metrics/mm/MM07;BBLcom/carrieriq/iqagent/client/metrics/mm/MM07$1;)V

    .line 182
    .local v1, data:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;
    #calls: Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->set(IIII)V
    invoke-static {v1, v2, v9, v7, v8}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->access$100(Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;IIII)V

    .line 183
    iget-object v10, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07;->mediaStats:Ljava/util/HashMap;

    invoke-virtual {v10, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 185
    .end local v1           #data:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;
    .end local v2           #duration:I
    .end local v3           #format:B
    .end local v5           #key:Ljava/lang/Short;
    .end local v6           #mediaType:B
    .end local v7           #packetsDrop:I
    .end local v8           #packetsLate:I
    .end local v9           #packetsRcvd:I
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/carrieriq/iqagent/client/metrics/mm/MM07$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(SLcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;BIIII)V
    .locals 1
    .parameter "port"
    .parameter "mediaType"
    .parameter "format"
    .parameter "duration"
    .parameter "packetsRcvd"
    .parameter "packetsDrop"
    .parameter "packetsLate"

    .prologue
    .line 68
    sget v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07;->mediaStats:Ljava/util/HashMap;

    .line 69
    invoke-virtual/range {p0 .. p7}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07;->SetRtpStats(SLcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;BIIII)V

    .line 70
    return-void
.end method

.method private sdpMediaToByte(Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;)B
    .locals 3
    .parameter "media"

    .prologue
    const/4 v0, 0x0

    .line 103
    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$2;->$SwitchMap$com$carrieriq$iqagent$client$metrics$mm$MM07$SdpMedia:[I

    invoke-virtual {p1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 113
    :goto_0
    :pswitch_0
    return v0

    .line 105
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 107
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 108
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 109
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 110
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 111
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 103
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

.method private toSdpMedia(B)Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;
    .locals 1
    .parameter "media"

    .prologue
    .line 117
    packed-switch p1, :pswitch_data_0

    .line 127
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->IQ_SDP_MEDIA_UNKNOWN:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    :goto_0
    return-object v0

    .line 118
    :pswitch_0
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->IQ_SDP_MEDIA_UNKNOWN:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    goto :goto_0

    .line 119
    :pswitch_1
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->IQ_SDP_MEDIA_AUDIO:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    goto :goto_0

    .line 120
    :pswitch_2
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->IQ_SDP_MEDIA_VIDEO:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    goto :goto_0

    .line 121
    :pswitch_3
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->IQ_SDP_MEDIA_TEXT:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    goto :goto_0

    .line 122
    :pswitch_4
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->IQ_SDP_MEDIA_APPLICATION:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    goto :goto_0

    .line 123
    :pswitch_5
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->IQ_SDP_MEDIA_MESSAGE:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    goto :goto_0

    .line 124
    :pswitch_6
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->IQ_SDP_MEDIA_CONTROL:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    goto :goto_0

    .line 125
    :pswitch_7
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->IQ_SDP_MEDIA_DATA:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    goto :goto_0

    .line 117
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
.method public SetRtpStats(SLcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;BIIII)V
    .locals 4
    .parameter "port"
    .parameter "mediaType"
    .parameter "format"
    .parameter "duration"
    .parameter "packetsRcvd"
    .parameter "packetsDrop"
    .parameter "packetsLate"

    .prologue
    .line 86
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    .line 87
    .local v1, key:Ljava/lang/Short;
    iget-object v2, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07;->mediaStats:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;

    .line 88
    .local v0, entry:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;
    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;

    .end local v0           #entry:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;
    invoke-direct {p0, p2}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07;->sdpMediaToByte(Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;)B

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, p3, v3}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;-><init>(Lcom/carrieriq/iqagent/client/metrics/mm/MM07;BBLcom/carrieriq/iqagent/client/metrics/mm/MM07$1;)V

    .line 90
    .restart local v0       #entry:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;
    iget-object v2, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07;->mediaStats:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_0
    #calls: Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->set(IIII)V
    invoke-static {v0, p4, p5, p6, p7}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->access$100(Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;IIII)V

    .line 93
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07;->mediaStats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 100
    return-void
.end method

.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 210
    iget-object v3, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07;->mediaStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    int-to-short v2, v3

    .line 211
    .local v2, wNumMediaTracks:S
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 212
    iget-object v3, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07;->mediaStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 213
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Short;Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 214
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;

    #calls: Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->serialize(Ljava/nio/ByteBuffer;)V
    invoke-static {v3, p1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->access$900(Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 216
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Short;Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;>;"
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 190
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x100

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 191
    .local v5, strbuilder:Ljava/lang/StringBuilder;
    const-string v6, "ID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/carrieriq/iqagent/client/metrics/mm/MM07;->ID:I

    invoke-static {v6}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07;->idToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v6, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07;->mediaStats:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    int-to-short v2, v6

    .line 193
    .local v2, num:S
    const-string v6, "\nwNumMediaTracks : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    iget-object v6, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07;->mediaStats:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 195
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Short;Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v3

    .line 196
    .local v3, port:S
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;

    .line 197
    .local v4, rtpStat:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;
    const-string v6, "\nwPort : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    const-string v6, ", ucMediaType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #getter for: Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->ucMediaType:B
    invoke-static {v4}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->access$200(Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;)B

    move-result v6

    invoke-direct {p0, v6}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07;->toSdpMedia(B)Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    const-string v6, ", ucFormat : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #getter for: Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->ucFormat:B
    invoke-static {v4}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->access$300(Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;)B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    const-string v6, ", dwDuration : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #getter for: Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->dwDuration:I
    invoke-static {v4}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->access$400(Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    const-string v6, ", dwPacketsRcvd : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #getter for: Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->dwPacketsRcvd:I
    invoke-static {v4}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->access$500(Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    const-string v6, ", dwPacketsDrop : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #getter for: Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->dwPacketsDrop:I
    invoke-static {v4}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->access$600(Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    const-string v6, ", dwPacketsLate : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #getter for: Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->dwPacketsLate:I
    invoke-static {v4}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->access$700(Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 205
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Short;Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;>;"
    .end local v3           #port:S
    .end local v4           #rtpStat:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 139
    iget-object v4, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07;->mediaStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 140
    .local v0, N:I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    if-lez v0, :cond_0

    .line 142
    iget-object v4, p0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07;->mediaStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 143
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Short;Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;

    .line 145
    .local v1, data:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;
    #getter for: Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->ucMediaType:B
    invoke-static {v1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->access$200(Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;)B

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 146
    #getter for: Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->ucFormat:B
    invoke-static {v1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->access$300(Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;)B

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 147
    #getter for: Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->dwDuration:I
    invoke-static {v1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->access$400(Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    #getter for: Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->dwPacketsRcvd:I
    invoke-static {v1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->access$500(Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    #getter for: Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->dwPacketsDrop:I
    invoke-static {v1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->access$600(Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    #getter for: Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->dwPacketsLate:I
    invoke-static {v1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;->access$700(Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 153
    .end local v1           #data:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Short;Lcom/carrieriq/iqagent/client/metrics/mm/MM07$RtpStats;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method
