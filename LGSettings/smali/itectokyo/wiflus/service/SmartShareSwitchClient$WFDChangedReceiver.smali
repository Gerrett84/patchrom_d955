.class Litectokyo/wiflus/service/SmartShareSwitchClient$WFDChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartShareSwitchClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Litectokyo/wiflus/service/SmartShareSwitchClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WFDChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;


# direct methods
.method private constructor <init>(Litectokyo/wiflus/service/SmartShareSwitchClient;)V
    .locals 0
    .parameter

    .prologue
    .line 1118
    iput-object p1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$WFDChangedReceiver;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Litectokyo/wiflus/service/SmartShareSwitchClient;Litectokyo/wiflus/service/SmartShareSwitchClient$WFDChangedReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1118
    invoke-direct {p0, p1}, Litectokyo/wiflus/service/SmartShareSwitchClient$WFDChangedReceiver;-><init>(Litectokyo/wiflus/service/SmartShareSwitchClient;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1121
    const-string v0, "SSBEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SsbEnabler WFDChangedReceiver action="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lge.systemservice.core.wfdmanager.WFD_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    iget-object v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient$WFDChangedReceiver;->this$0:Litectokyo/wiflus/service/SmartShareSwitchClient;

    const-string v1, "wfd_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Litectokyo/wiflus/service/SmartShareSwitchClient;->mWFDState:I
    invoke-static {v0, v1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->access$15(Litectokyo/wiflus/service/SmartShareSwitchClient;I)V

    .line 1126
    :cond_0
    return-void
.end method
