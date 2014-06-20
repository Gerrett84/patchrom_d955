.class Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;
.super Lcom/vzw/location/IVzwGpsStatusListener$Stub;
.source "VzwLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VzwGpsStatusListenerTransport"
.end annotation


# instance fields
.field private final mGpsHandler:Landroid/os/Handler;

.field private final mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

.field final synthetic this$0:Lcom/vzw/location/VzwLocationManager;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwLocationManager;Lcom/vzw/location/VzwGpsStatus$Listener;)V
    .locals 2
    .parameter
    .parameter "listener"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    .line 142
    invoke-direct {p0}, Lcom/vzw/location/IVzwGpsStatusListener$Stub;-><init>()V

    .line 198
    new-instance v0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport$1;-><init>(Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    .line 143
    iput-object p2, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    return-void
.end method

.method static synthetic access$0(Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;)Lcom/vzw/location/VzwGpsStatus$Listener;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;)Lcom/vzw/location/VzwLocationManager;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    return-object v0
.end method


# virtual methods
.method public onGpsDeviceStatusChanged(Lcom/vzw/location/VzwGpsDeviceStatus;)V
    .locals 3
    .parameter "deviceStatus"

    .prologue
    const/16 v2, 0x19

    .line 184
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    #getter for: Lcom/vzw/location/VzwLocationManager;->mGpsDeviceStatus:Lcom/vzw/location/VzwGpsDeviceStatus;
    invoke-static {v1}, Lcom/vzw/location/VzwLocationManager;->access$1(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsDeviceStatus;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/vzw/location/VzwGpsDeviceStatus;->set(Lcom/vzw/location/VzwGpsDeviceStatus;)V

    .line 187
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 188
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 190
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 191
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 196
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onGpsStatusChanged(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 147
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    if-eqz v1, :cond_0

    .line 148
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 149
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 150
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 152
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onSatStatusChanged(II[I[I[I[I[I)V
    .locals 9
    .parameter "svCount"
    .parameter "svInViewCount"
    .parameter "prn"
    .parameter "prnInView"
    .parameter "elevInView"
    .parameter "aziminView"
    .parameter "snrInView"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    #getter for: Lcom/vzw/location/VzwLocationManager;->mGpsStatus:Lcom/vzw/location/VzwGpsStatus;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManager;->access$0(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsStatus;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/vzw/location/VzwGpsStatus;->setStatus(II[I[I[I[I[I)V

    .line 174
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    .line 175
    .local v8, msg:Landroid/os/Message;
    const/16 v0, 0x9

    iput v0, v8, Landroid/os/Message;->what:I

    .line 177
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 180
    .end local v8           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onSvStatusChanged(II[I[I[F[F[F)V
    .locals 9
    .parameter "svCount"
    .parameter "svInViewCount"
    .parameter "prn"
    .parameter "prnInView"
    .parameter "elevInView"
    .parameter "aziminView"
    .parameter "snrInView"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    #getter for: Lcom/vzw/location/VzwLocationManager;->mGpsStatus:Lcom/vzw/location/VzwGpsStatus;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManager;->access$0(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsStatus;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/vzw/location/VzwGpsStatus;->setStatus(II[I[I[F[F[F)V

    .line 159
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    .line 160
    .local v8, msg:Landroid/os/Message;
    const/16 v0, 0x9

    iput v0, v8, Landroid/os/Message;->what:I

    .line 162
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 163
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 165
    .end local v8           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method
