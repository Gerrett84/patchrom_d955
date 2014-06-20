.class public Lcom/carrieriq/iqagent/client/IQClient;
.super Ljava/lang/Object;
.source "IQClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method private LoadClientLibrary()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method private reregisterNativeEvents()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method private unregisterForEventType(Ljava/util/TreeMap;ILcom/carrieriq/iqagent/client/IEventCallback;)V
    .locals 0
    .parameter
    .parameter "eventParam"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/carrieriq/iqagent/client/IEventCallback;",
            ">;>;I",
            "Lcom/carrieriq/iqagent/client/IEventCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, byParam:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;>;"
    return-void
.end method

.method private unregisterRef(Ljava/util/ArrayList;Lcom/carrieriq/iqagent/client/IEventCallback;)V
    .locals 0
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/carrieriq/iqagent/client/IEventCallback;",
            ">;",
            "Lcom/carrieriq/iqagent/client/IEventCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, refList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;"
    return-void
.end method


# virtual methods
.method public checkSMS(Ljava/lang/String;)Z
    .locals 1
    .parameter "payload"

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public checkSMS([B)Z
    .locals 1
    .parameter "payload"

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public checkWAPPush([B)Z
    .locals 1
    .parameter "payload"

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public compareAgentVersion([I)I
    .locals 1
    .parameter "compareToVersion"

    .prologue
    .line 76
    const/4 v0, -0x1

    return v0
.end method

.method public disconnect()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public finalize()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public getAgentVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "UNKNOWN"

    return-object v0
.end method

.method public getAgentVersionComponents()[I
    .locals 2

    .prologue
    .line 72
    const/4 v1, 0x3

    new-array v0, v1, [I

    .line 73
    .local v0, components:[I
    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 79
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public registerForEvent(IILcom/carrieriq/iqagent/client/IEventCallback;)I
    .locals 1
    .parameter "eventType"
    .parameter "eventParam"
    .parameter "callback"

    .prologue
    .line 95
    const/4 v0, -0x1

    return v0
.end method

.method public registerQueriableMetric(ILcom/carrieriq/iqagent/client/MetricQueryCallback;)I
    .locals 1
    .parameter "metricID"
    .parameter "callback"

    .prologue
    .line 116
    const/4 v0, -0x1

    return v0
.end method

.method public reportKeyCode([B)Z
    .locals 1
    .parameter "keys"

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSubmitMetric(I)Z
    .locals 1
    .parameter "metricID"

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public submitMetric(IJ[BII)I
    .locals 1
    .parameter "metricID"
    .parameter "timestamp"
    .parameter "payloadBytes"
    .parameter "payloadOffs"
    .parameter "payloadLen"

    .prologue
    .line 91
    const/4 v0, -0x1

    return v0
.end method

.method public submitMetric(Lcom/carrieriq/iqagent/client/Metric;)I
    .locals 1
    .parameter "metric"

    .prologue
    .line 87
    const/4 v0, -0x1

    return v0
.end method

.method public unregisterAllQueriableMetrics(Lcom/carrieriq/iqagent/client/MetricQueryCallback;)I
    .locals 1
    .parameter "callback"

    .prologue
    .line 124
    const/4 v0, -0x1

    return v0
.end method

.method public unregisterForAllEvents(Lcom/carrieriq/iqagent/client/IEventCallback;)I
    .locals 1
    .parameter "callback"

    .prologue
    .line 112
    const/4 v0, -0x1

    return v0
.end method

.method public unregisterForEvent(IILcom/carrieriq/iqagent/client/IEventCallback;)I
    .locals 1
    .parameter "eventType"
    .parameter "eventParam"
    .parameter "callback"

    .prologue
    .line 108
    const/4 v0, -0x1

    return v0
.end method

.method public unregisterQueriableMetric(ILcom/carrieriq/iqagent/client/MetricQueryCallback;)I
    .locals 1
    .parameter "metricID"
    .parameter "callback"

    .prologue
    .line 120
    const/4 v0, -0x1

    return v0
.end method
