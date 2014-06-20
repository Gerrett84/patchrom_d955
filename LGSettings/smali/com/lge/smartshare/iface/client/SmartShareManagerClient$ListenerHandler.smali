.class Lcom/lge/smartshare/iface/client/SmartShareManagerClient$ListenerHandler;
.super Landroid/os/Handler;
.source "SmartShareManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/smartshare/iface/client/SmartShareManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/smartshare/iface/client/SmartShareManagerClient$ListenerHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient$ListenerHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 324
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #calls: Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->onDlnaListenerMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->access$12(ILjava/lang/Object;)V

    .line 325
    return-void
.end method
