.class Litectokyo/wiflus/SsbEnabler$2;
.super Ljava/lang/Object;
.source "SsbEnabler.java"

# interfaces
.implements Litectokyo/wiflus/service/OnWiFlusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Litectokyo/wiflus/SsbEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Litectokyo/wiflus/SsbEnabler;


# direct methods
.method constructor <init>(Litectokyo/wiflus/SsbEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Litectokyo/wiflus/SsbEnabler$2;->this$0:Litectokyo/wiflus/SsbEnabler;

    .line 470
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Litectokyo/wiflus/service/ClientEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 513
    invoke-virtual {p1}, Litectokyo/wiflus/service/ClientEvent;->getEventId()I

    move-result v0

    .line 514
    .local v0, eventId:I
    const-string v1, "SsbEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SSbEnabler onEvent.onEvent ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/16 v1, 0x8f

    if-eq v0, v1, :cond_0

    .line 520
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onInitialized(Litectokyo/wiflus/service/ClientEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 473
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Litectokyo/wiflus/service/ClientEvent;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 474
    .local v0, err:I
    const-string v1, "SsbEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SSbEnabler onInitialized err = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler$2;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mIsUserStart:Z
    invoke-static {v3}, Litectokyo/wiflus/SsbEnabler;->access$9(Litectokyo/wiflus/SsbEnabler;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v1, "SsbEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mIsUserStart = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler$2;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mIsUserStart:Z
    invoke-static {v3}, Litectokyo/wiflus/SsbEnabler;->access$9(Litectokyo/wiflus/SsbEnabler;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler$2;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mStandbyTime:I
    invoke-static {v3}, Litectokyo/wiflus/SsbEnabler;->access$15(Litectokyo/wiflus/SsbEnabler;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler$2;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mNowNetwork:I
    invoke-static {v3}, Litectokyo/wiflus/SsbEnabler;->access$16(Litectokyo/wiflus/SsbEnabler;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$2;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mSmartShareSwitchClient:Litectokyo/wiflus/service/SmartShareSwitchClient;
    invoke-static {v1}, Litectokyo/wiflus/SsbEnabler;->access$17(Litectokyo/wiflus/SsbEnabler;)Litectokyo/wiflus/service/SmartShareSwitchClient;

    move-result-object v1

    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$2;->this$0:Litectokyo/wiflus/SsbEnabler;

    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler$2;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mStandbyTime:I
    invoke-static {v3}, Litectokyo/wiflus/SsbEnabler;->access$15(Litectokyo/wiflus/SsbEnabler;)I

    move-result v3

    #calls: Litectokyo/wiflus/SsbEnabler;->min2sec(I)I
    invoke-static {v2, v3}, Litectokyo/wiflus/SsbEnabler;->access$18(Litectokyo/wiflus/SsbEnabler;I)I

    move-result v2

    invoke-virtual {v1, v2}, Litectokyo/wiflus/service/SmartShareSwitchClient;->setStandbyTime(I)Z

    .line 479
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$2;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mIsUserStart:Z
    invoke-static {v1}, Litectokyo/wiflus/SsbEnabler;->access$9(Litectokyo/wiflus/SsbEnabler;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    const-string v1, "SsbEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mIsUserStart = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler$2;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mIsUserStart:Z
    invoke-static {v3}, Litectokyo/wiflus/SsbEnabler;->access$9(Litectokyo/wiflus/SsbEnabler;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler$2;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mStandbyTime:I
    invoke-static {v3}, Litectokyo/wiflus/SsbEnabler;->access$15(Litectokyo/wiflus/SsbEnabler;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler$2;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mNowNetwork:I
    invoke-static {v3}, Litectokyo/wiflus/SsbEnabler;->access$16(Litectokyo/wiflus/SsbEnabler;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$2;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mSmartShareSwitchClient:Litectokyo/wiflus/service/SmartShareSwitchClient;
    invoke-static {v1}, Litectokyo/wiflus/SsbEnabler;->access$17(Litectokyo/wiflus/SsbEnabler;)Litectokyo/wiflus/service/SmartShareSwitchClient;

    move-result-object v1

    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$2;->this$0:Litectokyo/wiflus/SsbEnabler;

    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler$2;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mStandbyTime:I
    invoke-static {v3}, Litectokyo/wiflus/SsbEnabler;->access$15(Litectokyo/wiflus/SsbEnabler;)I

    move-result v3

    #calls: Litectokyo/wiflus/SsbEnabler;->min2sec(I)I
    invoke-static {v2, v3}, Litectokyo/wiflus/SsbEnabler;->access$18(Litectokyo/wiflus/SsbEnabler;I)I

    move-result v2

    invoke-virtual {v1, v2}, Litectokyo/wiflus/service/SmartShareSwitchClient;->setStandbyTime(I)Z

    .line 483
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$2;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mNowNetwork:I
    invoke-static {v1}, Litectokyo/wiflus/SsbEnabler;->access$16(Litectokyo/wiflus/SsbEnabler;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 500
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 485
    :pswitch_0
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$2;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mSmartShareSwitchClient:Litectokyo/wiflus/service/SmartShareSwitchClient;
    invoke-static {v1}, Litectokyo/wiflus/SsbEnabler;->access$17(Litectokyo/wiflus/SsbEnabler;)Litectokyo/wiflus/service/SmartShareSwitchClient;

    move-result-object v2

    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$2;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mWiFiConfigs:Ljava/util/List;
    invoke-static {v1}, Litectokyo/wiflus/SsbEnabler;->access$19(Litectokyo/wiflus/SsbEnabler;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler$2;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mCurWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Litectokyo/wiflus/SsbEnabler;->access$20(Litectokyo/wiflus/SsbEnabler;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v2, v4, v1, v3}, Litectokyo/wiflus/service/SmartShareSwitchClient;->setRecoveryWiFiInfo(ZLjava/util/ArrayList;Landroid/net/wifi/WifiInfo;)Z

    goto :goto_0

    .line 488
    :pswitch_1
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$2;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mSmartShareSwitchClient:Litectokyo/wiflus/service/SmartShareSwitchClient;
    invoke-static {v1}, Litectokyo/wiflus/SsbEnabler;->access$17(Litectokyo/wiflus/SsbEnabler;)Litectokyo/wiflus/service/SmartShareSwitchClient;

    move-result-object v1

    invoke-virtual {v1, v4}, Litectokyo/wiflus/service/SmartShareSwitchClient;->setRecoveryHotspotInfo(Z)Z

    goto :goto_0

    .line 491
    :pswitch_2
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$2;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mSmartShareSwitchClient:Litectokyo/wiflus/service/SmartShareSwitchClient;
    invoke-static {v1}, Litectokyo/wiflus/SsbEnabler;->access$17(Litectokyo/wiflus/SsbEnabler;)Litectokyo/wiflus/service/SmartShareSwitchClient;

    move-result-object v1

    invoke-virtual {v1, v4}, Litectokyo/wiflus/service/SmartShareSwitchClient;->setRecoveryWiFiDirectInfo(Z)Z

    goto :goto_0

    .line 483
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTerminated(Litectokyo/wiflus/service/ClientEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 505
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Litectokyo/wiflus/service/ClientEvent;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 506
    .local v0, err:I
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$2;->this$0:Litectokyo/wiflus/SsbEnabler;

    #setter for: Litectokyo/wiflus/SsbEnabler;->mIsUserStart:Z
    invoke-static {v1, v4}, Litectokyo/wiflus/SsbEnabler;->access$21(Litectokyo/wiflus/SsbEnabler;Z)V

    .line 507
    const-string v1, "SsbEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SSbEnabler onTerminated err = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return v4
.end method
