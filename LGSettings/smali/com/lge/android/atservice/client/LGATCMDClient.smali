.class public Lcom/lge/android/atservice/client/LGATCMDClient;
.super Ljava/lang/Object;
.source "LGATCMDClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    }
.end annotation


# instance fields
.field private final LGCMD_GET_FACTORY_VERSION:I

.field private mATService:Lcom/lge/android/atservice/client/ILGATCMDService;

.field private mBound:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0xfab

    iput v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->LGCMD_GET_FACTORY_VERSION:I

    .line 56
    new-instance v0, Lcom/lge/android/atservice/client/LGATCMDClient$1;

    invoke-direct {v0, p0}, Lcom/lge/android/atservice/client/LGATCMDClient$1;-><init>(Lcom/lge/android/atservice/client/LGATCMDClient;)V

    iput-object v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mConnection:Landroid/content/ServiceConnection;

    .line 72
    iput-object p1, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mContext:Landroid/content/Context;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mBound:Z

    .line 74
    return-void
.end method

.method static synthetic access$002(Lcom/lge/android/atservice/client/LGATCMDClient;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mBound:Z

    return p1
.end method

.method static synthetic access$102(Lcom/lge/android/atservice/client/LGATCMDClient;Lcom/lge/android/atservice/client/ILGATCMDService;)Lcom/lge/android/atservice/client/ILGATCMDService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mATService:Lcom/lge/android/atservice/client/ILGATCMDService;

    return-object p1
.end method


# virtual methods
.method public bindService()V
    .locals 4

    .prologue
    .line 77
    iget-boolean v1, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mBound:Z

    if-nez v1, :cond_0

    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.lge.android.atservice"

    const-string v3, "com.lge.android.atservice.LGATCMDService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 82
    iget-object v1, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    const-string v1, "LGATCMDClient"

    const-string v2, "Bind service successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 85
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    const-string v1, "LGATCMDClient"

    const-string v2, "Bind service fail!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public request(I[B)Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    .locals 6
    .parameter "action"
    .parameter "in"

    .prologue
    .line 95
    const/4 v3, 0x0

    .line 97
    .local v3, result:[B
    iget-boolean v4, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mBound:Z

    if-eqz v4, :cond_1

    .line 99
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v0, data:Landroid/os/Bundle;
    const-string v4, "action"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const-string v4, "data"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 102
    iget-object v4, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mATService:Lcom/lge/android/atservice/client/ILGATCMDService;

    invoke-interface {v4, v0}, Lcom/lge/android/atservice/client/ILGATCMDService;->request(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 103
    .local v2, response:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    const-string v4, "result"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 104
    const-string v4, "data"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 112
    .end local v0           #data:Landroid/os/Bundle;
    .end local v2           #response:Landroid/os/Bundle;
    :cond_0
    :goto_0
    if-nez v3, :cond_2

    .line 113
    const/4 v4, 0x0

    .line 115
    :goto_1
    return-object v4

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, ex:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 110
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_1
    const-string v4, "LGATCMDClient"

    const-string v5, "request: Service is not bound yet!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :cond_2
    new-instance v4, Lcom/lge/android/atservice/client/LGATCMDClient$Response;

    invoke-direct {v4, p0, v3}, Lcom/lge/android/atservice/client/LGATCMDClient$Response;-><init>(Lcom/lge/android/atservice/client/LGATCMDClient;[B)V

    goto :goto_1
.end method

.method public unbindService()V
    .locals 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mBound:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/android/atservice/client/LGATCMDClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 92
    :cond_0
    return-void
.end method
