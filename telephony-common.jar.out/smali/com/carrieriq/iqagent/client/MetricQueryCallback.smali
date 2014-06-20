.class public abstract Lcom/carrieriq/iqagent/client/MetricQueryCallback;
.super Ljava/lang/Object;
.source "MetricQueryCallback.java"

# interfaces
.implements Lcom/carrieriq/iqagent/client/IEventCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(IILjava/nio/ByteBuffer;)V
    .locals 0
    .parameter "event"
    .parameter "eventParam"
    .parameter "extraData"

    .prologue
    .line 52
    return-void
.end method

.method public abstract onMetricQuery(ILjava/nio/ByteBuffer;)V
.end method
