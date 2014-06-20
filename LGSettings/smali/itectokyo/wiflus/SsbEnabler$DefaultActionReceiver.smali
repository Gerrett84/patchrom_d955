.class Litectokyo/wiflus/SsbEnabler$DefaultActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SsbEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Litectokyo/wiflus/SsbEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultActionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Litectokyo/wiflus/SsbEnabler;


# direct methods
.method private constructor <init>(Litectokyo/wiflus/SsbEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 679
    iput-object p1, p0, Litectokyo/wiflus/SsbEnabler$DefaultActionReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Litectokyo/wiflus/SsbEnabler;Litectokyo/wiflus/SsbEnabler$DefaultActionReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 679
    invoke-direct {p0, p1}, Litectokyo/wiflus/SsbEnabler$DefaultActionReceiver;-><init>(Litectokyo/wiflus/SsbEnabler;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    .line 682
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 683
    .local v0, action:Ljava/lang/String;
    const-string v1, "SsbEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SsbEnabler DefaultActionReceiver action - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    sget-object v1, Litectokyo/wiflus/service/Broadcastor;->WIFLUS_SERVICE_STATE_CHANGED_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 685
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$DefaultActionReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    const-string v2, "EXTRA_WIFLUS_STATE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Litectokyo/wiflus/SsbEnabler;->mState:I
    invoke-static {v1, v2}, Litectokyo/wiflus/SsbEnabler;->access$22(Litectokyo/wiflus/SsbEnabler;I)V

    .line 686
    const-string v1, "SsbEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SsbEnabler DefaultActionReceiver.WIFLUS_SERVICE_STATE_CHANGED_ACTION state="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler$DefaultActionReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mState:I
    invoke-static {v3}, Litectokyo/wiflus/SsbEnabler;->access$23(Litectokyo/wiflus/SsbEnabler;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$DefaultActionReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mState:I
    invoke-static {v1}, Litectokyo/wiflus/SsbEnabler;->access$23(Litectokyo/wiflus/SsbEnabler;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 689
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$DefaultActionReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mState:I
    invoke-static {v1}, Litectokyo/wiflus/SsbEnabler;->access$23(Litectokyo/wiflus/SsbEnabler;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$DefaultActionReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$DefaultActionReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mState:I
    invoke-static {v2}, Litectokyo/wiflus/SsbEnabler;->access$23(Litectokyo/wiflus/SsbEnabler;)I

    move-result v2

    #calls: Litectokyo/wiflus/SsbEnabler;->setWiflusState(I)V
    invoke-static {v1, v2}, Litectokyo/wiflus/SsbEnabler;->access$24(Litectokyo/wiflus/SsbEnabler;I)V

    .line 693
    const-string v1, "SsbEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "EXTRA_WIFLUS_STATE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler$DefaultActionReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mState:I
    invoke-static {v3}, Litectokyo/wiflus/SsbEnabler;->access$23(Litectokyo/wiflus/SsbEnabler;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 694
    :cond_2
    sget-object v1, Litectokyo/wiflus/service/Broadcastor;->WIFLUS_ENGINE_STATE_CHANGED_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 695
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$DefaultActionReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    const-string v2, "EXTRA_ENGINE_STATE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Litectokyo/wiflus/SsbEnabler;->mState:I
    invoke-static {v1, v2}, Litectokyo/wiflus/SsbEnabler;->access$22(Litectokyo/wiflus/SsbEnabler;I)V

    .line 696
    const-string v1, "SsbEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SSbEnabler DefaultActionReceiver.WIFLUS_ENGINE_STATE_CHANGED_ACTION state="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler$DefaultActionReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mState:I
    invoke-static {v3}, Litectokyo/wiflus/SsbEnabler;->access$23(Litectokyo/wiflus/SsbEnabler;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$DefaultActionReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mState:I
    invoke-static {v1}, Litectokyo/wiflus/SsbEnabler;->access$23(Litectokyo/wiflus/SsbEnabler;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$DefaultActionReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mState:I
    invoke-static {v1}, Litectokyo/wiflus/SsbEnabler;->access$23(Litectokyo/wiflus/SsbEnabler;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 703
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$DefaultActionReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$DefaultActionReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mState:I
    invoke-static {v2}, Litectokyo/wiflus/SsbEnabler;->access$23(Litectokyo/wiflus/SsbEnabler;)I

    move-result v2

    #calls: Litectokyo/wiflus/SsbEnabler;->setWiflusState(I)V
    invoke-static {v1, v2}, Litectokyo/wiflus/SsbEnabler;->access$24(Litectokyo/wiflus/SsbEnabler;I)V

    .line 704
    const-string v1, "SsbEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "EXTRA_ENGINE_STATE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler$DefaultActionReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mState:I
    invoke-static {v3}, Litectokyo/wiflus/SsbEnabler;->access$23(Litectokyo/wiflus/SsbEnabler;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
