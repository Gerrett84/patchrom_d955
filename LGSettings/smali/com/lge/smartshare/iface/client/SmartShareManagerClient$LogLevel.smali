.class public Lcom/lge/smartshare/iface/client/SmartShareManagerClient$LogLevel;
.super Ljava/lang/Object;
.source "SmartShareManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/smartshare/iface/client/SmartShareManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogLevel"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 305
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setLogLevel(I)V
    .locals 2
    .parameter "level"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 311
    if-nez p0, :cond_0

    .line 312
    invoke-static {v0, v0, v0, v0, v0}, Lcom/lge/smartshare/iface/client/SmartShareConfig$Log;->setLogLevel(ZZZZZ)V

    .line 318
    :goto_0
    return-void

    .line 313
    :cond_0
    if-ne p0, v1, :cond_1

    .line 314
    invoke-static {v0, v0, v0, v1, v1}, Lcom/lge/smartshare/iface/client/SmartShareConfig$Log;->setLogLevel(ZZZZZ)V

    goto :goto_0

    .line 316
    :cond_1
    invoke-static {v1, v1, v1, v1, v1}, Lcom/lge/smartshare/iface/client/SmartShareConfig$Log;->setLogLevel(ZZZZZ)V

    goto :goto_0
.end method
