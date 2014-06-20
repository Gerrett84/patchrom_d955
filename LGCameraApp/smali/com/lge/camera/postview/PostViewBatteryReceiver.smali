.class public Lcom/lge/camera/postview/PostViewBatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PostViewBatteryReceiver.java"


# instance fields
.field private mGet:Lcom/lge/camera/postview/ReceiverFunction;


# direct methods
.method public constructor <init>(Lcom/lge/camera/postview/ReceiverFunction;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewBatteryReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    .line 15
    iput-object p1, p0, Lcom/lge/camera/postview/PostViewBatteryReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    .line 16
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 23
    const-string v3, "level"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 24
    .local v1, charged:I
    if-eq v1, v4, :cond_0

    if-gt v1, v6, :cond_0

    .line 25
    invoke-static {v5}, Lcom/lge/camera/util/CheckStatusManager;->setEnterCheckComplete(Z)V

    .line 26
    iget-object v3, p0, Lcom/lge/camera/postview/PostViewBatteryReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    if-eqz v3, :cond_0

    .line 27
    iget-object v3, p0, Lcom/lge/camera/postview/PostViewBatteryReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    invoke-interface {v3}, Lcom/lge/camera/postview/ReceiverFunction;->finish()V

    .line 39
    .end local v1           #charged:I
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    const-string v3, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    const-string v3, "level"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 32
    .local v2, level:I
    if-eq v2, v4, :cond_0

    if-gt v2, v6, :cond_0

    .line 33
    invoke-static {v5}, Lcom/lge/camera/util/CheckStatusManager;->setEnterCheckComplete(Z)V

    .line 34
    iget-object v3, p0, Lcom/lge/camera/postview/PostViewBatteryReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    if-eqz v3, :cond_0

    .line 35
    iget-object v3, p0, Lcom/lge/camera/postview/PostViewBatteryReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    invoke-interface {v3}, Lcom/lge/camera/postview/ReceiverFunction;->finish()V

    goto :goto_0
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewBatteryReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewBatteryReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    .line 45
    :cond_0
    return-void
.end method
