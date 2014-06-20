.class public Lcom/carrieriq/iqagent/client/metrics/ui/UI2D;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "UI2D.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;
    }
.end annotation


# static fields
.field public static final ID:I


# instance fields
.field appinfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public ucNumApp:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "UI2D"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D;->appinfo:Ljava/util/ArrayList;

    .line 74
    return-void
.end method


# virtual methods
.method public addApp(IIIIJBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "code"
    .parameter "data"
    .parameter "cache"
    .parameter "installTime"
    .parameter "appType"
    .parameter "name"
    .parameter "version"
    .parameter "source"

    .prologue
    .line 79
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;

    invoke-direct {v0, p0}, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;-><init>(Lcom/carrieriq/iqagent/client/metrics/ui/UI2D;)V

    .line 80
    .local v0, i:Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;
    iput p1, v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;->dwInstAppId:I

    .line 81
    iput p2, v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;->dwSizeCode:I

    .line 82
    iput p3, v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;->dwSizeData:I

    .line 83
    iput p4, v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;->dwSizeCache:I

    .line 84
    iput-wide p5, v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;->qwInstallTime:J

    .line 85
    iput-byte p7, v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;->ucAppType:B

    .line 86
    iput-object p8, v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;->szAppName:Ljava/lang/String;

    .line 87
    iput-object p9, v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;->szAppVersion:Ljava/lang/String;

    .line 88
    iput-object p10, v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;->szInstallSource:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D;->appinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public clearAppList()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D;->appinfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 94
    return-void
.end method

.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v2, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D;->appinfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D;->ucNumApp:B

    .line 98
    iget-byte v2, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D;->ucNumApp:B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 99
    iget-object v2, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D;->appinfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 100
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;

    .line 102
    .local v0, iqit:Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;
    iget v2, v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;->dwInstAppId:I

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 103
    iget v2, v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;->dwSizeCode:I

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 104
    iget v2, v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;->dwSizeData:I

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 105
    iget v2, v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;->dwSizeCache:I

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 106
    iget-wide v2, v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;->qwInstallTime:J

    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 107
    iget-byte v2, v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;->ucAppType:B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 108
    iget-object v2, v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;->szAppName:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 109
    iget-object v2, v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;->szAppVersion:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 110
    iget-object v2, v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;->szInstallSource:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/carrieriq/iqagent/client/metrics/ui/UI2D;->szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    .end local v0           #iqit:Lcom/carrieriq/iqagent/client/metrics/ui/UI2D$AppInfo;
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    return v2
.end method
