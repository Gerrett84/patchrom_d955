.class public Lcom/android/internal/atfwd/AtQcpwrdnCmdHandler;
.super Lcom/android/internal/atfwd/AtCmdBaseHandler;
.source "AtQcpwrdnCmdHandler.java"

# interfaces
.implements Lcom/android/internal/atfwd/AtCmdHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "AtQcpwrdnCmdHandler"


# instance fields
.field private mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/internal/atfwd/AtCmdBaseHandler;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/atfwd/AtQcpwrdnCmdHandler;->mHandler:Landroid/os/Handler;

    .line 45
    iput-object p1, p0, Lcom/android/internal/atfwd/AtQcpwrdnCmdHandler;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/atfwd/AtQcpwrdnCmdHandler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/atfwd/AtQcpwrdnCmdHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "$QCPWRDN"

    return-object v0
.end method

.method public handleCommand(Lcom/android/internal/atfwd/AtCmd;)Lcom/android/internal/atfwd/AtCmdResponse;
    .locals 4
    .parameter "cmd"

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, ret:Lcom/android/internal/atfwd/AtCmdResponse;
    invoke-virtual {p1}, Lcom/android/internal/atfwd/AtCmd;->getTokens()[Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, tokens:[Ljava/lang/String;
    const-string v2, "AtQcpwrdnCmdHandler"

    const-string v3, "$QCPWRDN command processing entry"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    array-length v2, v1

    if-lez v2, :cond_0

    .line 62
    new-instance v0, Lcom/android/internal/atfwd/AtCmdResponse;

    .end local v0           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    const/4 v2, 0x0

    const-string v3, "+CME ERROR: 1"

    invoke-direct {v0, v2, v3}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .line 79
    .restart local v0       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    :goto_0
    return-object v0

    .line 64
    :cond_0
    const-string v2, "AtQcpwrdnCmdHandler"

    const-string v3, "Initiating Shutdown process"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v2, p0, Lcom/android/internal/atfwd/AtQcpwrdnCmdHandler;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/atfwd/AtQcpwrdnCmdHandler$1;

    invoke-direct {v3, p0}, Lcom/android/internal/atfwd/AtQcpwrdnCmdHandler$1;-><init>(Lcom/android/internal/atfwd/AtQcpwrdnCmdHandler;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    const-string v2, "AtQcpwrdnCmdHandler"

    const-string v3, "Initiated Shutdown process"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Lcom/android/internal/atfwd/AtCmdResponse;

    .end local v0           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .restart local v0       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto :goto_0
.end method
