.class public Lcom/lge/camera/postview/PostViewScreenOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PostViewScreenOffReceiver.java"


# instance fields
.field private mGet:Lcom/lge/camera/postview/ReceiverFunction;


# direct methods
.method public constructor <init>(Lcom/lge/camera/postview/ReceiverFunction;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewScreenOffReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    .line 11
    iput-object p1, p0, Lcom/lge/camera/postview/PostViewScreenOffReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    .line 12
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewScreenOffReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewScreenOffReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    invoke-interface {v0}, Lcom/lge/camera/postview/ReceiverFunction;->finish()V

    .line 19
    :cond_0
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewScreenOffReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    if-eqz v0, :cond_0

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewScreenOffReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    .line 25
    :cond_0
    return-void
.end method
