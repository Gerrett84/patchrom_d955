.class Lcom/lge/smartshare/iface/client/SmartShareConfig$Log;
.super Ljava/lang/Object;
.source "SmartShareConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/smartshare/iface/client/SmartShareConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Log"
.end annotation


# static fields
.field public static debug:Z

.field public static error:Z

.field public static info:Z

.field public static verbose:Z

.field public static warn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lcom/lge/smartshare/iface/client/SmartShareConfig$Log;->verbose:Z

    .line 8
    sput-boolean v0, Lcom/lge/smartshare/iface/client/SmartShareConfig$Log;->debug:Z

    .line 9
    sput-boolean v0, Lcom/lge/smartshare/iface/client/SmartShareConfig$Log;->info:Z

    .line 10
    sput-boolean v0, Lcom/lge/smartshare/iface/client/SmartShareConfig$Log;->warn:Z

    .line 11
    sput-boolean v0, Lcom/lge/smartshare/iface/client/SmartShareConfig$Log;->error:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setLogLevel(ZZZZZ)V
    .locals 0
    .parameter "verbose"
    .parameter "debug"
    .parameter "info"
    .parameter "warn"
    .parameter "error"

    .prologue
    .line 15
    sput-boolean p0, Lcom/lge/smartshare/iface/client/SmartShareConfig$Log;->verbose:Z

    .line 16
    sput-boolean p1, Lcom/lge/smartshare/iface/client/SmartShareConfig$Log;->debug:Z

    .line 17
    sput-boolean p2, Lcom/lge/smartshare/iface/client/SmartShareConfig$Log;->info:Z

    .line 18
    sput-boolean p3, Lcom/lge/smartshare/iface/client/SmartShareConfig$Log;->warn:Z

    .line 19
    sput-boolean p4, Lcom/lge/smartshare/iface/client/SmartShareConfig$Log;->error:Z

    .line 20
    return-void
.end method
