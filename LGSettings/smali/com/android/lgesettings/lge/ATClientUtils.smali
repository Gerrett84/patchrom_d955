.class public Lcom/android/lgesettings/lge/ATClientUtils;
.super Ljava/lang/Object;
.source "ATClientUtils.java"


# static fields
.field public static mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

.field public static mBind:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static atClient_BindService(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 89
    new-instance v0, Lcom/lge/android/atservice/client/LGATCMDClient;

    invoke-direct {v0, p0}, Lcom/lge/android/atservice/client/LGATCMDClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/lgesettings/lge/ATClientUtils;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    .line 91
    sget-object v0, Lcom/android/lgesettings/lge/ATClientUtils;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "LGAtcmdClient , aboutphone , ATClientUtils"

    const-string v1, "mATClient != null... ok !!, start bindService !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v0, Lcom/android/lgesettings/lge/ATClientUtils;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    invoke-virtual {v0}, Lcom/lge/android/atservice/client/LGATCMDClient;->bindService()V

    .line 95
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/lgesettings/lge/ATClientUtils;->mBind:Z

    .line 100
    :goto_0
    return-void

    .line 97
    :cond_0
    const-string v0, "LGAtcmdClient , aboutphone , ATClientUtils"

    const-string v1, "mATClient == null... fail !!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static atClient_readValue(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "command"
    .parameter "context"
    .parameter "option"

    .prologue
    const v7, 0x7f080437

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 37
    const/4 v2, 0x0

    .line 38
    .local v2, response:Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    const-string v3, ""

    .line 39
    .local v3, strResponseData:Ljava/lang/String;
    new-array v4, v10, [C

    .line 40
    .local v4, tempHwRev:[C
    sget-object v5, Lcom/android/lgesettings/lge/ATClientUtils;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    const-string v6, ""

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Lcom/lge/android/atservice/client/LGATCMDClient;->request(I[B)Lcom/lge/android/atservice/client/LGATCMDClient$Response;

    move-result-object v2

    .line 42
    if-nez v2, :cond_0

    .line 43
    const-string v5, "ATClientUtils"

    const-string v6, "response is null, retry~"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget-object v5, Lcom/android/lgesettings/lge/ATClientUtils;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    const-string v6, ""

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Lcom/lge/android/atservice/client/LGATCMDClient;->request(I[B)Lcom/lge/android/atservice/client/LGATCMDClient$Response;

    move-result-object v2

    .line 46
    const-wide/16 v5, 0x3e8

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 53
    const-string v5, "ATClientUtils"

    const-string v6, "response is null, return not_available"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 84
    :goto_1
    return-object v5

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, ie:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v1           #ie:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v5, v2, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->data:[B

    if-nez v5, :cond_2

    .line 58
    const-string v5, "ATClientUtils"

    const-string v6, "response.data is null, return not_available"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 62
    :cond_2
    const-string v5, "LGAtcmdClient , aboutphone , ATClientUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "response result:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->result:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v5, "LGAtcmdClient , aboutphone , ATClientUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "response length:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->data:[B

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v5, "hw_version"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 67
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v10, :cond_3

    .line 68
    const-string v5, "ATClientUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->data:[B

    aget-byte v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v5, v2, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->data:[B

    aget-byte v5, v5, v0

    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    aput-char v5, v4, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 72
    :cond_3
    aget-char v5, v4, v8

    const/16 v6, 0x31

    if-ne v5, v6, :cond_4

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rev."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-char v6, v4, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-char v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-char v6, v4, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    move-object v5, v3

    .line 80
    goto/16 :goto_1

    .line 74
    :cond_4
    aget-char v5, v4, v8

    const/16 v6, 0x30

    if-ne v5, v6, :cond_5

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rev."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-char v6, v4, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 77
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rev."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-char v6, v4, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 82
    .end local v0           #i:I
    :cond_6
    new-instance v3, Ljava/lang/String;

    .end local v3           #strResponseData:Ljava/lang/String;
    iget-object v5, v2, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->data:[B

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    .restart local v3       #strResponseData:Ljava/lang/String;
    move-object v5, v3

    .line 84
    goto/16 :goto_1
.end method

.method public static atClient_unBindService()V
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcom/android/lgesettings/lge/ATClientUtils;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/lgesettings/lge/ATClientUtils;->mBind:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 104
    const-string v0, "LGAtcmdClient , aboutphone , ATClientUtils"

    const-string v1, "atClient_unBindService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v0, Lcom/android/lgesettings/lge/ATClientUtils;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    invoke-virtual {v0}, Lcom/lge/android/atservice/client/LGATCMDClient;->unbindService()V

    .line 106
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/lge/ATClientUtils;->mBind:Z

    .line 108
    :cond_0
    return-void
.end method
