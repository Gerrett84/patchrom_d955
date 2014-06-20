.class public Lcom/lge/smartshare/iface/client/SmartShareManagerClient;
.super Ljava/lang/Object;
.source "SmartShareManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/smartshare/iface/client/SmartShareManagerClient$ListenerHandler;,
        Lcom/lge/smartshare/iface/client/SmartShareManagerClient$LogLevel;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static listenerTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;",
            ">;"
        }
    .end annotation
.end field

.field private static smartShareManagerClient:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;


# instance fields
.field private context:Landroid/content/Context;

.field private duplicationHashListInit:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/lge/smartshare/iface/client/SmartShareManagerClient$ListenerHandler;

.field private homecloudBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private homecloudReceiver:Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;

.field private isBind:Z

.field private messageLock:Ljava/lang/Object;

.field private packageName:Ljava/lang/String;

.field private playerId:I

.field private readyCode:I

.field private resultCode:I

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private smartShareManager:Lcom/lge/smartshare/iface/aidl/ISmartShareManager;

.field private smartShareManagerCallback:Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback;

.field private tempMessageQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "SmartShareManagerClient"

    sput-object v0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    .line 340
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->listenerTable:Ljava/util/Hashtable;

    .line 370
    new-instance v0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    invoke-direct {v0}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;-><init>()V

    sput-object v0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->smartShareManagerClient:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 349
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object v2, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->smartShareManager:Lcom/lge/smartshare/iface/aidl/ISmartShareManager;

    .line 332
    iput-boolean v3, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->isBind:Z

    .line 333
    iput-object v2, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->packageName:Ljava/lang/String;

    .line 334
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->playerId:I

    .line 335
    iput-object v2, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->context:Landroid/content/Context;

    .line 337
    const/4 v1, 0x3

    iput v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->readyCode:I

    .line 338
    iput v3, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->resultCode:I

    .line 342
    iput-object v2, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->handler:Lcom/lge/smartshare/iface/client/SmartShareManagerClient$ListenerHandler;

    .line 343
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->tempMessageQueue:Ljava/util/concurrent/BlockingQueue;

    .line 345
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->messageLock:Ljava/lang/Object;

    .line 571
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->duplicationHashListInit:Ljava/util/ArrayList;

    .line 786
    new-instance v1, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$1;

    invoke-direct {v1, p0}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$1;-><init>(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;)V

    iput-object v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->smartShareManagerCallback:Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback;

    .line 961
    new-instance v1, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$2;

    invoke-direct {v1, p0}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$2;-><init>(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;)V

    iput-object v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->serviceConnection:Landroid/content/ServiceConnection;

    .line 2321
    new-instance v1, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$3;

    invoke-direct {v1, p0}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$3;-><init>(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;)V

    iput-object v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->homecloudReceiver:Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;

    .line 2365
    iput-object v2, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->homecloudBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 350
    new-instance v0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$4;

    invoke-direct {v0, p0}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$4;-><init>(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;)V

    .line 367
    .local v0, thread:Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 369
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 645
    invoke-direct {p0, p1, p2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListener(I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$10(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;Landroid/content/Context;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 553
    invoke-direct {p0, p1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->terminate(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;)Z
    .locals 1
    .parameter

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->isBind:Z

    return v0
.end method

.method static synthetic access$12(ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 659
    invoke-static {p0, p1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListenerMessage(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$13(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;Lcom/lge/smartshare/iface/client/SmartShareManagerClient$ListenerHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->handler:Lcom/lge/smartshare/iface/client/SmartShareManagerClient$ListenerHandler;

    return-void
.end method

.method static synthetic access$14(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 345
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->messageLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$15(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .parameter

    .prologue
    .line 343
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->tempMessageQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$16(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;)Lcom/lge/smartshare/iface/client/SmartShareManagerClient$ListenerHandler;
    .locals 1
    .parameter

    .prologue
    .line 342
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->handler:Lcom/lge/smartshare/iface/client/SmartShareManagerClient$ListenerHandler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 337
    iput p1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->readyCode:I

    return-void
.end method

.method static synthetic access$3(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 338
    iput p1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->resultCode:I

    return-void
.end method

.method static synthetic access$4(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;Lcom/lge/smartshare/iface/aidl/ISmartShareManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->smartShareManager:Lcom/lge/smartshare/iface/aidl/ISmartShareManager;

    return-void
.end method

.method static synthetic access$5(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;)Lcom/lge/smartshare/iface/aidl/ISmartShareManager;
    .locals 1
    .parameter

    .prologue
    .line 331
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->smartShareManager:Lcom/lge/smartshare/iface/aidl/ISmartShareManager;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;)Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback;
    .locals 1
    .parameter

    .prologue
    .line 786
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->smartShareManagerCallback:Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;)I
    .locals 1
    .parameter

    .prologue
    .line 1176
    invoke-direct {p0}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->getPlayerId()I

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lcom/lge/smartshare/iface/client/SmartShareManagerClient;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 335
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->context:Landroid/content/Context;

    return-object v0
.end method

.method private addCheckDuplicationInit(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 576
    iget-object v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->duplicationHashListInit:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 577
    .local v0, result:Z
    iget-object v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->duplicationHashListInit:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->getUniqueString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    return v0
.end method

.method private bindService(Landroid/content/Context;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 1028
    if-nez p1, :cond_0

    .line 1029
    sget-object v1, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    const-string v2, "bindService invalid parameter"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/lge/smartshare/iface/client/SmartShareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1051
    :goto_0
    return v0

    .line 1033
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lge/smartshare/iface/aidl/ISmartShareManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1034
    const-string v2, "com.lge.smartshare.iface.aidl.extra.version"

    const v3, 0x1a5f2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1038
    :try_start_0
    iget-object v2, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1043
    :goto_1
    if-eqz v1, :cond_1

    .line 1044
    sget-object v2, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bindService success context:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1045
    iput-boolean v5, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->isBind:Z

    :goto_2
    move v0, v1

    .line 1051
    goto :goto_0

    .line 1039
    :catch_0
    move-exception v1

    .line 1040
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v0

    goto :goto_1

    .line 1047
    :cond_1
    sget-object v2, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    const-string v3, "bindService fail"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/lge/smartshare/iface/client/SmartShareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1048
    iput-boolean v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->isBind:Z

    goto :goto_2
.end method

.method public static getInstance()Lcom/lge/smartshare/iface/client/SmartShareManagerClient;
    .locals 1

    .prologue
    .line 372
    sget-object v0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->smartShareManagerClient:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    return-object v0
.end method

.method private getPlayerId()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1177
    iget v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->playerId:I

    if-lez v0, :cond_0

    .line 1178
    iget v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->playerId:I

    .line 1193
    :goto_0
    return v0

    .line 1181
    :cond_0
    iget-boolean v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->isBind:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->smartShareManager:Lcom/lge/smartshare/iface/aidl/ISmartShareManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->packageName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1182
    :cond_1
    sget-object v0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    const-string v1, "getPlayerId not ready"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1183
    const/4 v0, -0x6

    goto :goto_0

    .line 1186
    :cond_2
    sget-object v0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    const-string v1, "getPlayerId"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1189
    :try_start_0
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->smartShareManager:Lcom/lge/smartshare/iface/aidl/ISmartShareManager;

    iget-object v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager;->getPlayerId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->playerId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1193
    :goto_1
    iget v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->playerId:I

    goto :goto_0

    .line 1190
    :catch_0
    move-exception v0

    .line 1191
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static getUniqueString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initialize(Landroid/content/Context;I)Z
    .locals 3
    .parameter "context"
    .parameter "logLevel"

    .prologue
    .line 428
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->packageName:Ljava/lang/String;

    .line 429
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->playerId:I

    .line 430
    iput-object p1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->context:Landroid/content/Context;

    .line 432
    sget-object v1, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->listenerTable:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 434
    iget-object v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->packageName:Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, strArray:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SmartShareManagerClient_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    .line 439
    :cond_0
    invoke-direct {p0, p1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->regiterHomeCloudBroadcast(Landroid/content/Context;)V

    .line 441
    invoke-direct {p0, p1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->bindService(Landroid/content/Context;)Z

    move-result v1

    return v1
.end method

.method private varargs onDlnaListener(I[Ljava/lang/Object;)V
    .locals 3
    .parameter "type"
    .parameter "objList"

    .prologue
    .line 646
    iget-object v2, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->messageLock:Ljava/lang/Object;

    monitor-enter v2

    .line 647
    :try_start_0
    iget-object v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->handler:Lcom/lge/smartshare/iface/client/SmartShareManagerClient$ListenerHandler;

    if-nez v1, :cond_0

    .line 648
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 649
    .local v0, message:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 650
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 651
    iget-object v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->tempMessageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 652
    monitor-exit v2

    .line 657
    .end local v0           #message:Landroid/os/Message;
    :goto_0
    return-void

    .line 646
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    iget-object v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->handler:Lcom/lge/smartshare/iface/client/SmartShareManagerClient$ListenerHandler;

    iget-object v2, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->handler:Lcom/lge/smartshare/iface/client/SmartShareManagerClient$ListenerHandler;

    invoke-virtual {v2, p1, p2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$ListenerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$ListenerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 646
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static onDlnaListenerMessage(ILjava/lang/Object;)V
    .locals 8
    .parameter "type"
    .parameter "objListElement"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 660
    move-object v3, p1

    check-cast v3, [Ljava/lang/Object;

    .line 661
    .local v3, objList:[Ljava/lang/Object;
    sget-object v4, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->listenerTable:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, enumer:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_0

    .line 781
    :goto_1
    return-void

    .line 663
    :cond_0
    const/4 v2, 0x0

    .line 667
    .local v2, listener:Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;
    :try_start_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #listener:Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;
    check-cast v2, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    .restart local v2       #listener:Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 677
    :sswitch_0
    aget-object v4, v3, v6

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onCheckSupprotContent(Z)V

    goto :goto_0

    .line 669
    .end local v2           #listener:Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;
    :catch_0
    move-exception v0

    .line 671
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 680
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #listener:Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;
    :sswitch_1
    aget-object v4, v3, v6

    check-cast v4, Ljava/lang/String;

    aget-object v5, v3, v7

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4, v5}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onReceiveRendererIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 683
    :sswitch_2
    aget-object v4, v3, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onPlay(I)V

    goto :goto_0

    .line 686
    :sswitch_3
    aget-object v4, v3, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onStop(I)V

    goto :goto_0

    .line 689
    :sswitch_4
    aget-object v4, v3, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onPause(I)V

    goto :goto_0

    .line 692
    :sswitch_5
    aget-object v4, v3, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onSeek(I)V

    goto :goto_0

    .line 695
    :sswitch_6
    aget-object v4, v3, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v3, v7

    check-cast v4, Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;

    invoke-virtual {v2, v5, v4}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onGetVolume(ILcom/lge/smartshare/iface/aidl/DataVolumeInfo;)V

    goto :goto_0

    .line 698
    :sswitch_7
    aget-object v4, v3, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onSetVolume(I)V

    goto :goto_0

    .line 701
    :sswitch_8
    aget-object v4, v3, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v3, v7

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v5, v4}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onReady(II)V

    goto/16 :goto_0

    .line 704
    :sswitch_9
    aget-object v4, v3, v6

    check-cast v4, Lcom/lge/smartshare/iface/aidl/DataRenderer;

    invoke-virtual {v2, v4}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onRendererAdded(Lcom/lge/smartshare/iface/aidl/DataRenderer;)V

    goto/16 :goto_0

    .line 707
    :sswitch_a
    aget-object v4, v3, v6

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onRendererRemoved(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 710
    :sswitch_b
    invoke-virtual {v2}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onLostSelectedRenderer()V

    goto/16 :goto_0

    .line 713
    :sswitch_c
    aget-object v4, v3, v6

    check-cast v4, Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;

    invoke-virtual {v2, v4}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onPlayerStatusUpdate(Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;)V

    goto/16 :goto_0

    .line 716
    :sswitch_d
    invoke-virtual {v2}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onCompletion()V

    goto/16 :goto_0

    .line 719
    :sswitch_e
    invoke-virtual {v2}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onBadConnection()V

    goto/16 :goto_0

    .line 722
    :sswitch_f
    invoke-virtual {v2}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onGetBuaKeyStart()V

    goto/16 :goto_0

    .line 725
    :sswitch_10
    invoke-virtual {v2}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onGetBuaKeyEnd()V

    goto/16 :goto_0

    .line 728
    :sswitch_11
    aget-object v4, v3, v6

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onInitialized(Z)V

    goto/16 :goto_0

    .line 731
    :sswitch_12
    aget-object v4, v3, v6

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onTerminated(Z)V

    goto/16 :goto_0

    .line 734
    :sswitch_13
    aget-object v4, v3, v6

    check-cast v4, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    invoke-virtual {v2, v4}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onWFDAdded(Lcom/lge/smartshare/iface/aidl/DataWFDDevice;)V

    goto/16 :goto_0

    .line 737
    :sswitch_14
    aget-object v4, v3, v6

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onWFDRemoved(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 740
    :sswitch_15
    aget-object v4, v3, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onWFDInitCompleted(I)V

    goto/16 :goto_0

    .line 743
    :sswitch_16
    aget-object v4, v3, v6

    check-cast v4, Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;

    invoke-virtual {v2, v4}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onRendererUsageChanged(Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;)V

    goto/16 :goto_0

    .line 747
    :sswitch_17
    aget-object v4, v3, v6

    check-cast v4, Ljava/lang/String;

    aget-object v5, v3, v7

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onHomecloudRAServerAdded(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 750
    :sswitch_18
    aget-object v4, v3, v6

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onHomecloudRAServerRemoved(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 753
    :sswitch_19
    invoke-virtual {v2}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onHomecloudConnecting()V

    goto/16 :goto_0

    .line 756
    :sswitch_1a
    invoke-virtual {v2}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onHomecloudConnected()V

    goto/16 :goto_0

    .line 759
    :sswitch_1b
    invoke-virtual {v2}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onHomecloudDisconnecting()V

    goto/16 :goto_0

    .line 762
    :sswitch_1c
    aget-object v4, v3, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onHomecloudDisconnected(I)V

    goto/16 :goto_0

    .line 765
    :sswitch_1d
    aget-object v4, v3, v6

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onHomecloudShowInfoChanged([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 768
    :sswitch_1e
    aget-object v4, v3, v6

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onHomecloudUseMobileNetworkChanged(Z)V

    goto/16 :goto_0

    .line 771
    :sswitch_1f
    invoke-virtual {v2}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onHomecloudCreateAccount()V

    goto/16 :goto_0

    .line 774
    :sswitch_20
    invoke-virtual {v2}, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;->onHomecloudDeleteAccount()V

    goto/16 :goto_0

    .line 675
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
        0x67 -> :sswitch_a
        0x68 -> :sswitch_b
        0x69 -> :sswitch_c
        0x6a -> :sswitch_d
        0x6b -> :sswitch_e
        0x6c -> :sswitch_f
        0x6d -> :sswitch_10
        0x12d -> :sswitch_11
        0x12e -> :sswitch_12
        0x191 -> :sswitch_13
        0x192 -> :sswitch_14
        0x193 -> :sswitch_15
        0x1f5 -> :sswitch_16
        0x259 -> :sswitch_17
        0x25a -> :sswitch_18
        0x25b -> :sswitch_19
        0x25c -> :sswitch_1a
        0x25d -> :sswitch_1b
        0x25e -> :sswitch_1c
        0x25f -> :sswitch_1d
        0x260 -> :sswitch_1e
        0x261 -> :sswitch_1f
        0x262 -> :sswitch_20
    .end sparse-switch
.end method

.method private printCheckDuplicationInit()V
    .locals 4

    .prologue
    .line 595
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Init Hashlist num: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->duplicationHashListInit:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->duplicationHashListInit:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    sget-object v0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 600
    return-void

    .line 596
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 597
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private refreshWFDDevice(Z)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, -0x6

    const/4 v3, 0x0

    .line 1950
    iget-boolean v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->isBind:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->smartShareManager:Lcom/lge/smartshare/iface/aidl/ISmartShareManager;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1951
    :cond_0
    sget-object v1, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    const-string v2, "refreshWFDDevice not ready"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/lge/smartshare/iface/client/SmartShareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1968
    :goto_0
    return v0

    .line 1955
    :cond_1
    iget v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->readyCode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 1956
    sget-object v1, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    const-string v2, "refreshWFDDevice already started"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/lge/smartshare/iface/client/SmartShareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1960
    :cond_2
    sget-object v0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refreshWFDDevice isForce: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1963
    :try_start_0
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->smartShareManager:Lcom/lge/smartshare/iface/aidl/ISmartShareManager;

    invoke-interface {v0, p1}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager;->refreshWFDDevice(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1964
    :catch_0
    move-exception v0

    .line 1965
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1968
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static registerListener(Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 614
    if-nez p0, :cond_0

    .line 615
    sget-object v0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    const-string v1, "registerListener null parameter"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 616
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 619
    :cond_0
    sget-object v0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerListener: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 621
    sget-object v0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->listenerTable:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    return-void
.end method

.method private regiterHomeCloudBroadcast(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 2368
    if-nez p1, :cond_0

    .line 2369
    sget-object v0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    const-string v1, "regiterHomeCloudBroadcast null parameter"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2374
    :goto_0
    return-void

    .line 2373
    :cond_0
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->homecloudReceiver:Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;

    invoke-static {p1, v0}, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF;->regiterHomeCloudBroadcast(Landroid/content/Context;Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->homecloudBroadcastReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method private removeCheckDuplicationInit(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->duplicationHashListInit:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->getUniqueString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 584
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->duplicationHashListInit:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private terminate(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 554
    invoke-direct {p0, p1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->unregiterHomeCloudBroadcast(Landroid/content/Context;)V

    .line 556
    invoke-direct {p0, p1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->unbindService(Landroid/content/Context;)V

    .line 558
    iput-object v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->packageName:Ljava/lang/String;

    .line 559
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->playerId:I

    .line 560
    iput-object v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->context:Landroid/content/Context;

    .line 562
    sget-object v0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->listenerTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 564
    const/4 v0, 0x1

    return v0
.end method

.method private unbindService(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1062
    if-nez p1, :cond_1

    .line 1063
    sget-object v0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    const-string v1, "unbindService invalid parameter"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1099
    :cond_0
    :goto_0
    return-void

    .line 1067
    :cond_1
    sget-object v0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unbindService context:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1069
    iget-boolean v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->isBind:Z

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->smartShareManager:Lcom/lge/smartshare/iface/aidl/ISmartShareManager;

    if-eqz v0, :cond_2

    .line 1071
    const/4 v1, -0x1

    .line 1073
    :try_start_0
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->smartShareManager:Lcom/lge/smartshare/iface/aidl/ISmartShareManager;

    invoke-interface {v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager;->getManagerVersionCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1078
    :goto_1
    const v1, 0x1a5ea

    if-lt v0, v1, :cond_3

    .line 1080
    :try_start_1
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->smartShareManager:Lcom/lge/smartshare/iface/aidl/ISmartShareManager;

    iget-object v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->smartShareManagerCallback:Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback;

    invoke-interface {v0, v1, v2}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager;->unregisterWithCallback(Ljava/lang/String;Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1093
    :cond_2
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1097
    :goto_3
    iput-boolean v3, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->isBind:Z

    goto :goto_0

    .line 1074
    :catch_0
    move-exception v0

    .line 1075
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_1

    .line 1081
    :catch_1
    move-exception v0

    .line 1082
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1086
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->smartShareManager:Lcom/lge/smartshare/iface/aidl/ISmartShareManager;

    iget-object v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager;->unregister(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 1087
    :catch_2
    move-exception v0

    .line 1088
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1094
    :catch_3
    move-exception v0

    .line 1095
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static unregisterListener(Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 632
    if-nez p0, :cond_0

    .line 633
    sget-object v0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    const-string v1, "unregisterListener null parameter"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 634
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 637
    :cond_0
    sget-object v0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unregisterListener: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    sget-object v0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->listenerTable:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;

    .line 640
    if-nez v0, :cond_1

    .line 641
    sget-object v0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unregisterListener invalid listener: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 643
    :cond_1
    return-void
.end method

.method private unregiterHomeCloudBroadcast(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 2377
    if-nez p1, :cond_0

    .line 2378
    sget-object v0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    const-string v1, "unregiterHomeCloudBroadcast null parameter"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2383
    :goto_0
    return-void

    .line 2382
    :cond_0
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->homecloudBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p1, v0}, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF;->unregiterHomeCloudBroadcast(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method


# virtual methods
.method public getWFDDevices()[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1915
    iget-boolean v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->isBind:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->smartShareManager:Lcom/lge/smartshare/iface/aidl/ISmartShareManager;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1916
    :cond_0
    sget-object v1, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    const-string v2, "getWFDDevices not ready"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/lge/smartshare/iface/client/SmartShareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1928
    :goto_0
    return-object v0

    .line 1920
    :cond_1
    sget-object v1, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    const-string v2, "getWFDDevices"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1924
    :try_start_0
    iget-object v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->smartShareManager:Lcom/lge/smartshare/iface/aidl/ISmartShareManager;

    invoke-interface {v1}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager;->getWFDDevices()[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1925
    :catch_0
    move-exception v1

    .line 1926
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public initWFD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x6

    const/4 v4, 0x0

    .line 1977
    iget-boolean v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->isBind:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->smartShareManager:Lcom/lge/smartshare/iface/aidl/ISmartShareManager;

    if-nez v1, :cond_1

    .line 1978
    :cond_0
    sget-object v1, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    const-string v2, "initWFD not ready"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/lge/smartshare/iface/client/SmartShareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2001
    :goto_0
    return v0

    .line 1982
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_3

    .line 1983
    :cond_2
    sget-object v0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    const-string v1, "initWFD null parameter"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1984
    const/4 v0, -0x3

    goto :goto_0

    .line 1987
    :cond_3
    invoke-direct {p0}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->getPlayerId()I

    move-result v1

    .line 1988
    if-gez v1, :cond_4

    .line 1989
    sget-object v1, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    const-string v2, "initWFD getPlayerId fail"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/lge/smartshare/iface/client/SmartShareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1993
    :cond_4
    sget-object v0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initWFD id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,rtspSessionUri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,deviceFriendlyName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1996
    :try_start_0
    iget-object v0, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->smartShareManager:Lcom/lge/smartshare/iface/aidl/ISmartShareManager;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager;->initWFD(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1997
    :catch_0
    move-exception v0

    .line 1998
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2001
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public initialize(Landroid/app/Activity;I)Z
    .locals 4
    .parameter "activity"
    .parameter "logLevel"

    .prologue
    const/4 v0, 0x0

    .line 384
    invoke-static {p2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$LogLevel;->setLogLevel(I)V

    .line 386
    if-nez p1, :cond_0

    .line 387
    sget-object v1, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    const-string v2, "initialize activity invalid parameter"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/lge/smartshare/iface/client/SmartShareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 391
    :cond_0
    invoke-direct {p0, p1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->addCheckDuplicationInit(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 392
    sget-object v1, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initialize activity duplicated: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->getUniqueString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/lge/smartshare/iface/client/SmartShareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    invoke-direct {p0}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->printCheckDuplicationInit()V

    .line 399
    :goto_0
    return v0

    .line 397
    :cond_1
    sget-object v1, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initialize activity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->getUniqueString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,logLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->initialize(Landroid/content/Context;I)Z

    move-result v0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1123
    iget-object v2, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->packageName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1133
    :cond_0
    :goto_0
    return v0

    .line 1127
    :cond_1
    iget v2, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->readyCode:I

    if-eq v2, v1, :cond_2

    .line 1128
    iget v2, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->readyCode:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    .line 1129
    iget v2, p0, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->readyCode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    .line 1130
    goto :goto_0
.end method

.method public refreshWFDDevice()I
    .locals 1

    .prologue
    .line 1937
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->refreshWFDDevice(Z)I

    move-result v0

    return v0
.end method

.method public refreshWFDDeviceForce()I
    .locals 1

    .prologue
    .line 1946
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->refreshWFDDevice(Z)I

    move-result v0

    return v0
.end method

.method public terminate(Landroid/app/Activity;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 515
    if-nez p1, :cond_0

    .line 516
    sget-object v1, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    const-string v2, "terminate activity invalid parameter"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/lge/smartshare/iface/client/SmartShareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 520
    :cond_0
    invoke-direct {p0, p1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->removeCheckDuplicationInit(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 521
    sget-object v1, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "terminate activity duplicated: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->getUniqueString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/lge/smartshare/iface/client/SmartShareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    invoke-direct {p0}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->printCheckDuplicationInit()V

    .line 528
    :goto_0
    return v0

    .line 526
    :cond_1
    sget-object v1, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "terminate activity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->getUniqueString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/lge/smartshare/iface/client/SmartShareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->terminate(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method
