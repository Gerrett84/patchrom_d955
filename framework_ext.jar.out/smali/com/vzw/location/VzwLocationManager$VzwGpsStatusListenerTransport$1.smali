.class Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport$1;
.super Landroid/os/Handler;
.source "VzwLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport$1;->this$1:Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;

    .line 198
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport$1;->this$1:Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;

    #getter for: Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->access$1(Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;)Lcom/vzw/location/VzwLocationManager;

    move-result-object v0

    #getter for: Lcom/vzw/location/VzwLocationManager;->mGpsStatus:Lcom/vzw/location/VzwGpsStatus;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManager;->access$0(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsStatus;

    move-result-object v1

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport$1;->this$1:Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;

    #getter for: Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->access$0(Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;)Lcom/vzw/location/VzwGpsStatus$Listener;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v2}, Lcom/vzw/location/VzwGpsStatus$Listener;->onGpsStatusChanged(I)V

    .line 201
    monitor-exit v1

    .line 204
    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
