.class public Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PostViewMediaBroadCastReceiver.java"


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

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    .line 15
    iput-object p1, p0, Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    .line 16
    return-void
.end method

.method private doMediaMounted()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/postview/ReceiverFunction;->setSDCardSetting(Z)V

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, action:Ljava/lang/String;
    :try_start_0
    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 25
    :cond_0
    const/4 v2, 0x0

    sput-boolean v2, Lcom/lge/camera/properties/CameraConstants;->MEDIA_RECEIVER_FINISHED:Z

    .line 26
    iget-object v2, p0, Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    if-eqz v2, :cond_1

    .line 27
    iget-object v2, p0, Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    invoke-interface {v2}, Lcom/lge/camera/postview/ReceiverFunction;->finish()V

    .line 35
    :cond_1
    :goto_0
    return-void

    .line 29
    :cond_2
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    invoke-direct {p0}, Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;->doMediaMounted()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 32
    :catch_0
    move-exception v1

    .line 33
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "PostViewMediaBroadCastReceiver Exception : "

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    .line 47
    :cond_0
    return-void
.end method
