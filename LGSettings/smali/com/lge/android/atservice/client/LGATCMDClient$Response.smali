.class public Lcom/lge/android/atservice/client/LGATCMDClient$Response;
.super Ljava/lang/Object;
.source "LGATCMDClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/client/LGATCMDClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Response"
.end annotation


# instance fields
.field public data:[B

.field public length:I

.field public result:I

.field final synthetic this$0:Lcom/lge/android/atservice/client/LGATCMDClient;


# direct methods
.method public constructor <init>(Lcom/lge/android/atservice/client/LGATCMDClient;[B)V
    .locals 3
    .parameter
    .parameter "buffer"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->this$0:Lcom/lge/android/atservice/client/LGATCMDClient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-eqz p2, :cond_0

    .line 40
    const/4 v1, 0x0

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/2addr v1, v2

    iput v1, p0, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->result:I

    .line 43
    const/4 v1, 0x4

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x5

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    const/4 v2, 0x6

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    const/4 v2, 0x7

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/2addr v1, v2

    iput v1, p0, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->length:I

    .line 46
    const/16 v1, 0x108

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->data:[B

    .line 48
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->length:I

    if-ge v0, v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->data:[B

    add-int/lit8 v2, v0, 0x8

    aget-byte v2, p2, v2

    aput-byte v2, v1, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    .end local v0           #i:I
    :cond_0
    const-string v1, "LGATCMDClient"

    const-string v2, "Buffer for reponse is null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_1
    return-void
.end method
