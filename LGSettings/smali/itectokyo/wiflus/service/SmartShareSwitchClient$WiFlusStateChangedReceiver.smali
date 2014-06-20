.class Litectokyo/wiflus/service/SmartShareSwitchClient$WiFlusStateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartShareSwitchClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Litectokyo/wiflus/service/SmartShareSwitchClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WiFlusStateChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;


# direct methods
.method private constructor <init>(Litectokyo/wiflus/service/SmartShareSwitchClient;)V
    .locals 0
    .parameter

    .prologue
    .line 1130
    iput-object p1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$WiFlusStateChangedReceiver;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Litectokyo/wiflus/service/SmartShareSwitchClient;Litectokyo/wiflus/service/SmartShareSwitchClient$WiFlusStateChangedReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1130
    invoke-direct {p0, p1}, Litectokyo/wiflus/service/SmartShareSwitchClient$WiFlusStateChangedReceiver;-><init>(Litectokyo/wiflus/service/SmartShareSwitchClient;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 1133
    const-string v3, "SSBEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SmartShareSwitchClient.WiFlusStateChangedReceiver action="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Litectokyo/wiflus/service/Broadcastor;->WIFLUS_SERVICE_STATE_CHANGED_ACTION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1135
    const-string v3, "EXTRA_WIFLUS_STATE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1136
    .local v2, state:I
    if-nez v2, :cond_0

    .line 1137
    iget-object v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$WiFlusStateChangedReceiver;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$WiFlusStateChangedReceiver;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7, v6, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1144
    .end local v2           #state:I
    :cond_0
    :goto_0
    return-void

    .line 1139
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Litectokyo/wiflus/service/Broadcastor;->WIFLUS_SERVICE_WANT_UNBIND_ACTION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1140
    const-string v3, "EXTRA_APPID"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1141
    .local v0, appId:I
    const-string v3, "EXTRA_UNBIND_CAUSE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1142
    .local v1, cause:I
    iget-object v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$WiFlusStateChangedReceiver;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$WiFlusStateChangedReceiver;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    #getter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
