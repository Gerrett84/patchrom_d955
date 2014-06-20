.class public final enum Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;
.super Ljava/lang/Enum;
.source "MM01.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/carrieriq/iqagent/client/metrics/mm/MM01;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SipRegisterDir"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;

.field public static final enum IQ_SIP_REGISTER_DIR_NETWORK:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;

.field public static final enum IQ_SIP_REGISTER_DIR_UEAT:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;

.field public static final enum IQ_SIP_REGISTER_DIR_UNKNOWN:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;

    const-string v1, "IQ_SIP_REGISTER_DIR_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;->IQ_SIP_REGISTER_DIR_UNKNOWN:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;

    .line 67
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;

    const-string v1, "IQ_SIP_REGISTER_DIR_UEAT"

    invoke-direct {v0, v1, v3}, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;->IQ_SIP_REGISTER_DIR_UEAT:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;

    .line 69
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;

    const-string v1, "IQ_SIP_REGISTER_DIR_NETWORK"

    invoke-direct {v0, v1, v4}, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;->IQ_SIP_REGISTER_DIR_NETWORK:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;

    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;->IQ_SIP_REGISTER_DIR_UNKNOWN:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;

    aput-object v1, v0, v2

    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;->IQ_SIP_REGISTER_DIR_UEAT:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;

    aput-object v1, v0, v3

    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;->IQ_SIP_REGISTER_DIR_NETWORK:Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;

    aput-object v1, v0, v4

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;->$VALUES:[Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;
    .locals 1
    .parameter "name"

    .prologue
    .line 63
    const-class v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;

    return-object v0
.end method

.method public static values()[Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;->$VALUES:[Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;

    invoke-virtual {v0}, [Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/carrieriq/iqagent/client/metrics/mm/MM01$SipRegisterDir;

    return-object v0
.end method
