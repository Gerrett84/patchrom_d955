.class Litectokyo/wiflus/service/SmartShareSwitchClient$1;
.super Landroid/os/Handler;
.source "SmartShareSwitchClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Litectokyo/wiflus/service/SmartShareSwitchClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;


# direct methods
.method constructor <init>(Litectokyo/wiflus/service/SmartShareSwitchClient;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$1;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    .line 82
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 88
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$1;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Litectokyo/wiflus/service/ClientEvent;

    #calls: Litectokyo/wiflus/service/SmartShareSwitchClient;->notifyToUI(Litectokyo/wiflus/service/ClientEvent;)V
    invoke-static {v1, v0}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$0(Litectokyo/wiflus/service/SmartShareSwitchClient;Litectokyo/wiflus/service/ClientEvent;)V

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$1;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$1;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #calls: Litectokyo/wiflus/service/SmartShareSwitchClient;->getCauseCode(Landroid/os/Message;)I
    invoke-static {v1, p1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$1(Litectokyo/wiflus/service/SmartShareSwitchClient;Landroid/os/Message;)I

    move-result v1

    #calls: Litectokyo/wiflus/service/SmartShareSwitchClient;->close(I)Z
    invoke-static {v0, v1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$2(Litectokyo/wiflus/service/SmartShareSwitchClient;I)Z

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
