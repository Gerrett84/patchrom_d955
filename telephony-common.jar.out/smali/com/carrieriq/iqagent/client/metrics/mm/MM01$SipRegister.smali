.class public final enum Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;
.super Ljava/lang/Enum;
.source "MM01.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/carrieriq/iqagent/client/metrics/mm/MM01;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SipRegister"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

.field public static final enum IQ_SIP_REG_TYPE_DEREG:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

.field public static final enum IQ_SIP_REG_TYPE_INITIAL:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

.field public static final enum IQ_SIP_REG_TYPE_REAUTH:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

.field public static final enum IQ_SIP_REG_TYPE_REREG:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

.field public static final enum IQ_SIP_REG_TYPE_UNKNOWN:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

    const-string v1, "IQ_SIP_REG_TYPE_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;->IQ_SIP_REG_TYPE_UNKNOWN:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

    .line 53
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

    const-string v1, "IQ_SIP_REG_TYPE_INITIAL"

    invoke-direct {v0, v1, v3}, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;->IQ_SIP_REG_TYPE_INITIAL:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

    .line 55
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

    const-string v1, "IQ_SIP_REG_TYPE_REREG"

    invoke-direct {v0, v1, v4}, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;->IQ_SIP_REG_TYPE_REREG:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

    .line 57
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

    const-string v1, "IQ_SIP_REG_TYPE_DEREG"

    invoke-direct {v0, v1, v5}, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;->IQ_SIP_REG_TYPE_DEREG:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

    .line 59
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

    const-string v1, "IQ_SIP_REG_TYPE_REAUTH"

    invoke-direct {v0, v1, v6}, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;->IQ_SIP_REG_TYPE_REAUTH:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;->IQ_SIP_REG_TYPE_UNKNOWN:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

    aput-object v1, v0, v2

    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;->IQ_SIP_REG_TYPE_INITIAL:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

    aput-object v1, v0, v3

    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;->IQ_SIP_REG_TYPE_REREG:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

    aput-object v1, v0, v4

    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;->IQ_SIP_REG_TYPE_DEREG:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

    aput-object v1, v0, v5

    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;->IQ_SIP_REG_TYPE_REAUTH:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

    aput-object v1, v0, v6

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;->$VALUES:[Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;
    .locals 1
    .parameter "name"

    .prologue
    .line 49
    const-class v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

    return-object v0
.end method

.method public static values()[Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;->$VALUES:[Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

    invoke-virtual {v0}, [Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegister;

    return-object v0
.end method
