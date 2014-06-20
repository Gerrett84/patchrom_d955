.class public Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;
.super Ljava/lang/Object;
.source "UI2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/carrieriq/iqagent/client/metrics/ui/UI2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppInfo"
.end annotation


# instance fields
.field dwInstAppId:I

.field dwSizeCache:I

.field dwSizeCode:I

.field dwSizeData:I

.field qwInstallTime:J

.field szAppName:Ljava/lang/String;

.field szAppVersion:Ljava/lang/String;

.field szInstallSource:Ljava/lang/String;

.field final synthetic this$0:Lcom/carrieriq/iqagent/client/metrics/ui/UI2D;

.field ucAppType:B


# direct methods
.method public constructor <init>(Lcom/carrieriq/iqagent/client/metrics/ui/UI2D;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;->this$0:Lcom/carrieriq/iqagent/client/metrics/ui/UI2D;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
