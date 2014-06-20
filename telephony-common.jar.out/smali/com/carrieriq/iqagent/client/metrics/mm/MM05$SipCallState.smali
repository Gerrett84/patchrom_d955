.class public final enum Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;
.super Ljava/lang/Enum;
.source "MM05.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/carrieriq/iqagent/client/metrics/mm/MM05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SipCallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

.field public static final enum IQ_SIP_CALL_STATE_ANSWERED:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

.field public static final enum IQ_SIP_CALL_STATE_CONNECTED:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

.field public static final enum IQ_SIP_CALL_STATE_DISCONNECTING:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

.field public static final enum IQ_SIP_CALL_STATE_HELD:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

.field public static final enum IQ_SIP_CALL_STATE_IDLE:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

.field public static final enum IQ_SIP_CALL_STATE_INVITE:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

.field public static final enum IQ_SIP_CALL_STATE_NEGOTIATING:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

.field public static final enum IQ_SIP_CALL_STATE_PROGRESS:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

.field public static final enum IQ_SIP_CALL_STATE_RINGING:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

.field public static final enum IQ_SIP_CALL_STATE_TRYING:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

.field public static final enum IQ_SIP_CALL_STATE_UNKNOWN:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

.field public static final enum IQ_SIP_CALL_STATE_UPDATED:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    const-string v1, "IQ_SIP_CALL_STATE_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_UNKNOWN:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    .line 48
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    const-string v1, "IQ_SIP_CALL_STATE_IDLE"

    invoke-direct {v0, v1, v4}, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_IDLE:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    .line 50
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    const-string v1, "IQ_SIP_CALL_STATE_INVITE"

    invoke-direct {v0, v1, v5}, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_INVITE:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    .line 52
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    const-string v1, "IQ_SIP_CALL_STATE_TRYING"

    invoke-direct {v0, v1, v6}, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_TRYING:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    .line 54
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    const-string v1, "IQ_SIP_CALL_STATE_PROGRESS"

    invoke-direct {v0, v1, v7}, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_PROGRESS:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    .line 56
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    const-string v1, "IQ_SIP_CALL_STATE_NEGOTIATING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_NEGOTIATING:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    .line 58
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    const-string v1, "IQ_SIP_CALL_STATE_UPDATED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_UPDATED:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    .line 60
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    const-string v1, "IQ_SIP_CALL_STATE_RINGING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_RINGING:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    .line 62
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    const-string v1, "IQ_SIP_CALL_STATE_ANSWERED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_ANSWERED:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    .line 64
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    const-string v1, "IQ_SIP_CALL_STATE_CONNECTED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_CONNECTED:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    .line 67
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    const-string v1, "IQ_SIP_CALL_STATE_HELD"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_HELD:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    .line 69
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    const-string v1, "IQ_SIP_CALL_STATE_DISCONNECTING"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_DISCONNECTING:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    .line 43
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_UNKNOWN:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_IDLE:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_INVITE:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_TRYING:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_PROGRESS:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_NEGOTIATING:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_UPDATED:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_RINGING:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_ANSWERED:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_CONNECTED:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_HELD:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->IQ_SIP_CALL_STATE_DISCONNECTING:Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->$VALUES:[Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;
    .locals 1
    .parameter "name"

    .prologue
    .line 43
    const-class v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    return-object v0
.end method

.method public static values()[Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->$VALUES:[Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    invoke-virtual {v0}, [Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/carrieriq/iqagent/client/metrics/mm/MM05$SipCallState;

    return-object v0
.end method
