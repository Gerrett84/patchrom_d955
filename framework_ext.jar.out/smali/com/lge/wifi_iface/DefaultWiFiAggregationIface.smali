.class public Lcom/lge/wifi_iface/DefaultWiFiAggregationIface;
.super Ljava/lang/Object;
.source "DefaultWiFiAggregationIface.java"

# interfaces
.implements Lcom/lge/wifi_iface/WiFiAggregationIfaceIface;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWiFiAggregationIface"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public processingAggregation()V
    .locals 2

    .prologue
    .line 26
    const-string v0, "DefaultWiFiAggregationIface"

    const-string/jumbo v1, "processingAggregation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method public startService(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 21
    const-string v0, "DefaultWiFiAggregationIface"

    const-string/jumbo v1, "startService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method
