.class public final enum Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;
.super Ljava/lang/Enum;
.source "MM06.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/carrieriq/iqagent/client/metrics/mm/MM06;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SipDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;

.field public static final enum IQ_SIP_ORIGINATED:Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;

.field public static final enum IQ_SIP_TERMINATED:Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;

    const-string v1, "IQ_SIP_ORIGINATED"

    invoke-direct {v0, v1, v2}, Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;->IQ_SIP_ORIGINATED:Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;

    .line 57
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;

    const-string v1, "IQ_SIP_TERMINATED"

    invoke-direct {v0, v1, v3}, Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;->IQ_SIP_TERMINATED:Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;

    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;->IQ_SIP_ORIGINATED:Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;->IQ_SIP_TERMINATED:Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;

    aput-object v1, v0, v3

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;->$VALUES:[Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;
    .locals 1
    .parameter "name"

    .prologue
    .line 53
    const-class v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;

    return-object v0
.end method

.method public static values()[Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;->$VALUES:[Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;

    invoke-virtual {v0}, [Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/carrieriq/iqagent/client/metrics/mm/MM06$SipDirection;

    return-object v0
.end method
