.class public Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
.super Ljava/lang/Object;
.source "LGDataRecovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGDataRecovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectionInfo"
.end annotation


# instance fields
.field public APN:Ljava/lang/String;

.field public CurrStatAP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

.field public CurrStatModem:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

.field public FState:Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;

.field public LState:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

.field public PrevStatAP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

.field public PrevStatModem:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

.field public iface:Ljava/lang/String;

.field mConnCheckAlarmIntent:Landroid/app/PendingIntent;

.field public recoverySign:I

.field public sentSinceLastRecv:I

.field public sentSinceLastRecvModem:I

.field final synthetic this$0:Lcom/android/internal/telephony/LGDataRecovery;

.field public types:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LGDataRecovery;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 978
    iput-object p1, p0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 979
    sget-object v0, Lcom/android/internal/telephony/LGDataRecovery$LinkState;->LINKDOWN:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    iput-object v0, p0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    .line 980
    sget-object v0, Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;->DISCONNECTED:Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;

    iput-object v0, p0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->FState:Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;

    .line 981
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    .line 982
    iput-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    .line 983
    iput-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    .line 984
    new-instance v0, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;-><init>(Lcom/android/internal/telephony/LGDataRecovery;)V

    iput-object v0, p0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->PrevStatModem:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    .line 985
    new-instance v0, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;-><init>(Lcom/android/internal/telephony/LGDataRecovery;)V

    iput-object v0, p0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    .line 986
    iput v2, p0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->sentSinceLastRecv:I

    .line 987
    iput v2, p0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->sentSinceLastRecvModem:I

    .line 988
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->recoverySign:I

    .line 989
    iput-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->mConnCheckAlarmIntent:Landroid/app/PendingIntent;

    .line 990
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 994
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 995
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 996
    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    iget-object v4, p0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 998
    .local v0, a:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 999
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1003
    .end local v0           #a:Ljava/lang/String;
    :cond_1
    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1006
    .local v3, type:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " iface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   APN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   LinkState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   FrameworkState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->FState:Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
