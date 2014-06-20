.class public final enum Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;
.super Ljava/lang/Enum;
.source "MM02.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/carrieriq/iqagent/client/metrics/mm/MM02;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SipRegisterState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

.field public static final enum IQ_SIP_REG_STATE_AUTH_CHALLENGE:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

.field public static final enum IQ_SIP_REG_STATE_AUTH_REGISTER:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

.field public static final enum IQ_SIP_REG_STATE_NOTIFIED:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

.field public static final enum IQ_SIP_REG_STATE_NOT_REGISTERED:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

.field public static final enum IQ_SIP_REG_STATE_REGISTERED:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

.field public static final enum IQ_SIP_REG_STATE_REGISTERING:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

.field public static final enum IQ_SIP_REG_STATE_TIMEOUT:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

.field public static final enum IQ_SIP_REG_STATE_UNKNOWN:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    const-string v1, "IQ_SIP_REG_STATE_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->IQ_SIP_REG_STATE_UNKNOWN:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    .line 45
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    const-string v1, "IQ_SIP_REG_STATE_NOT_REGISTERED"

    invoke-direct {v0, v1, v4}, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->IQ_SIP_REG_STATE_NOT_REGISTERED:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    .line 47
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    const-string v1, "IQ_SIP_REG_STATE_REGISTERING"

    invoke-direct {v0, v1, v5}, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->IQ_SIP_REG_STATE_REGISTERING:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    .line 51
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    const-string v1, "IQ_SIP_REG_STATE_AUTH_CHALLENGE"

    invoke-direct {v0, v1, v6}, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->IQ_SIP_REG_STATE_AUTH_CHALLENGE:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    .line 53
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    const-string v1, "IQ_SIP_REG_STATE_AUTH_REGISTER"

    invoke-direct {v0, v1, v7}, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->IQ_SIP_REG_STATE_AUTH_REGISTER:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    .line 55
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    const-string v1, "IQ_SIP_REG_STATE_REGISTERED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->IQ_SIP_REG_STATE_REGISTERED:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    .line 57
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    const-string v1, "IQ_SIP_REG_STATE_NOTIFIED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->IQ_SIP_REG_STATE_NOTIFIED:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    .line 59
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    const-string v1, "IQ_SIP_REG_STATE_TIMEOUT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->IQ_SIP_REG_STATE_TIMEOUT:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    .line 41
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->IQ_SIP_REG_STATE_UNKNOWN:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->IQ_SIP_REG_STATE_NOT_REGISTERED:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->IQ_SIP_REG_STATE_REGISTERING:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->IQ_SIP_REG_STATE_AUTH_CHALLENGE:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->IQ_SIP_REG_STATE_AUTH_REGISTER:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->IQ_SIP_REG_STATE_REGISTERED:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->IQ_SIP_REG_STATE_NOTIFIED:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->IQ_SIP_REG_STATE_TIMEOUT:Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->$VALUES:[Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;
    .locals 1
    .parameter "name"

    .prologue
    .line 41
    const-class v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    return-object v0
.end method

.method public static values()[Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->$VALUES:[Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    invoke-virtual {v0}, [Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/carrieriq/iqagent/client/metrics/mm/MM02$SipRegisterState;

    return-object v0
.end method
