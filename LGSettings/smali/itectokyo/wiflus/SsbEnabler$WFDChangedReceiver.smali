.class Litectokyo/wiflus/SsbEnabler$WFDChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SsbEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Litectokyo/wiflus/SsbEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WFDChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Litectokyo/wiflus/SsbEnabler;


# direct methods
.method private constructor <init>(Litectokyo/wiflus/SsbEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 796
    iput-object p1, p0, Litectokyo/wiflus/SsbEnabler$WFDChangedReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Litectokyo/wiflus/SsbEnabler;Litectokyo/wiflus/SsbEnabler$WFDChangedReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 796
    invoke-direct {p0, p1}, Litectokyo/wiflus/SsbEnabler$WFDChangedReceiver;-><init>(Litectokyo/wiflus/SsbEnabler;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 799
    const-string v0, "SsbEnabler"

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

    .line 801
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lge.systemservice.core.wfdmanager.WFD_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler$WFDChangedReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    const-string v1, "wfd_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Litectokyo/wiflus/SsbEnabler;->mWFDState:I
    invoke-static {v0, v1}, Litectokyo/wiflus/SsbEnabler;->access$33(Litectokyo/wiflus/SsbEnabler;I)V

    .line 804
    :cond_0
    return-void
.end method
