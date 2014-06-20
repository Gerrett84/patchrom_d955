.class public final enum Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;
.super Ljava/lang/Enum;
.source "MM07.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/carrieriq/iqagent/client/metrics/mm/MM07;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SdpMedia"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

.field public static final enum IQ_SDP_MEDIA_APPLICATION:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

.field public static final enum IQ_SDP_MEDIA_AUDIO:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

.field public static final enum IQ_SDP_MEDIA_CONTROL:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

.field public static final enum IQ_SDP_MEDIA_DATA:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

.field public static final enum IQ_SDP_MEDIA_MESSAGE:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

.field public static final enum IQ_SDP_MEDIA_TEXT:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

.field public static final enum IQ_SDP_MEDIA_UNKNOWN:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

.field public static final enum IQ_SDP_MEDIA_VIDEO:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    const-string v1, "IQ_SDP_MEDIA_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->IQ_SDP_MEDIA_UNKNOWN:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    .line 44
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    const-string v1, "IQ_SDP_MEDIA_AUDIO"

    invoke-direct {v0, v1, v4}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->IQ_SDP_MEDIA_AUDIO:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    .line 46
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    const-string v1, "IQ_SDP_MEDIA_VIDEO"

    invoke-direct {v0, v1, v5}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->IQ_SDP_MEDIA_VIDEO:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    .line 48
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    const-string v1, "IQ_SDP_MEDIA_TEXT"

    invoke-direct {v0, v1, v6}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->IQ_SDP_MEDIA_TEXT:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    .line 50
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    const-string v1, "IQ_SDP_MEDIA_APPLICATION"

    invoke-direct {v0, v1, v7}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->IQ_SDP_MEDIA_APPLICATION:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    .line 52
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    const-string v1, "IQ_SDP_MEDIA_MESSAGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->IQ_SDP_MEDIA_MESSAGE:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    .line 54
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    const-string v1, "IQ_SDP_MEDIA_CONTROL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->IQ_SDP_MEDIA_CONTROL:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    .line 56
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    const-string v1, "IQ_SDP_MEDIA_DATA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->IQ_SDP_MEDIA_DATA:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    .line 40
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->IQ_SDP_MEDIA_UNKNOWN:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    aput-object v1, v0, v3

    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->IQ_SDP_MEDIA_AUDIO:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    aput-object v1, v0, v4

    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->IQ_SDP_MEDIA_VIDEO:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    aput-object v1, v0, v5

    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->IQ_SDP_MEDIA_TEXT:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    aput-object v1, v0, v6

    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->IQ_SDP_MEDIA_APPLICATION:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->IQ_SDP_MEDIA_MESSAGE:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->IQ_SDP_MEDIA_CONTROL:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->IQ_SDP_MEDIA_DATA:Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    aput-object v2, v0, v1

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->$VALUES:[Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;
    .locals 1
    .parameter "name"

    .prologue
    .line 40
    const-class v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    return-object v0
.end method

.method public static values()[Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->$VALUES:[Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    invoke-virtual {v0}, [Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/carrieriq/iqagent/client/metrics/mm/MM07$SdpMedia;

    return-object v0
.end method
