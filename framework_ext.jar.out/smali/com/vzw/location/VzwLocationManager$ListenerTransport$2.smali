.class Lcom/vzw/location/VzwLocationManager$ListenerTransport$2;
.super Landroid/os/Handler;
.source "VzwLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vzw/location/VzwLocationManager$ListenerTransport;-><init>(Lcom/vzw/location/VzwLocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vzw/location/VzwLocationManager$ListenerTransport;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwLocationManager$ListenerTransport;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport$2;->this$1:Lcom/vzw/location/VzwLocationManager$ListenerTransport;

    .line 62
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport$2;->this$1:Lcom/vzw/location/VzwLocationManager$ListenerTransport;

    #calls: Lcom/vzw/location/VzwLocationManager$ListenerTransport;->_handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->access$0(Lcom/vzw/location/VzwLocationManager$ListenerTransport;Landroid/os/Message;)V

    .line 66
    return-void
.end method
