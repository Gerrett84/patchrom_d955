.class Lcom/lge/camera/controller/QuickButtonController$1;
.super Ljava/lang/Object;
.source "QuickButtonController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/QuickButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickButtonController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickButtonController;)V
    .locals 0
    .parameter

    .prologue
    .line 626
    iput-object p1, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 628
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    #calls: Lcom/lge/camera/controller/QuickButtonController;->checkOnClick()Z
    invoke-static {v0}, Lcom/lge/camera/controller/QuickButtonController;->access$000(Lcom/lge/camera/controller/QuickButtonController;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    const/4 v6, 0x0

    .line 633
    .local v6, bundle:Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 830
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    #getter for: Lcom/lge/camera/controller/QuickButtonController;->mButtonAnim:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/lge/camera/controller/QuickButtonController;->access$600(Lcom/lge/camera/controller/QuickButtonController;)Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_3

    .line 831
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v1, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    #setter for: Lcom/lge/camera/controller/QuickButtonController;->mButtonAnim:Landroid/view/animation/Animation;
    invoke-static {v0, v1}, Lcom/lge/camera/controller/QuickButtonController;->access$602(Lcom/lge/camera/controller/QuickButtonController;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 833
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    #getter for: Lcom/lge/camera/controller/QuickButtonController;->mButtonAnim:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/lge/camera/controller/QuickButtonController;->access$600(Lcom/lge/camera/controller/QuickButtonController;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 635
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/QuickButtonController$1$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/QuickButtonController$1$1;-><init>(Lcom/lge/camera/controller/QuickButtonController$1;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 646
    :pswitch_1
    const-string v0, "off"

    iget-object v1, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_flash"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 647
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_flash"

    const-string v2, "torch"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 652
    :goto_2
    new-instance v6, Landroid/os/Bundle;

    .end local v6           #bundle:Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 653
    .restart local v6       #bundle:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 654
    const-string v0, "fromQuickButton"

    invoke-virtual {v6, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 656
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.setting.SetFlashMode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v6}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 657
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    #calls: Lcom/lge/camera/controller/QuickButtonController;->setQuickButtonResources(I)V
    invoke-static {v0, v4}, Lcom/lge/camera/controller/QuickButtonController;->access$100(Lcom/lge/camera/controller/QuickButtonController;I)V

    goto :goto_1

    .line 649
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_flash"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 661
    :pswitch_2
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getIAFlashStatus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 662
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setIAFlashStatus(Z)V

    .line 666
    :goto_3
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    const/4 v1, 0x6

    #calls: Lcom/lge/camera/controller/QuickButtonController;->setQuickButtonResources(I)V
    invoke-static {v0, v1}, Lcom/lge/camera/controller/QuickButtonController;->access$100(Lcom/lge/camera/controller/QuickButtonController;I)V

    goto/16 :goto_1

    .line 664
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->setIAFlashStatus(Z)V

    goto :goto_3

    .line 670
    :pswitch_3
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHeadsetstate()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 671
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    #calls: Lcom/lge/camera/controller/QuickButtonController;->setQuickButtonResources(I)V
    invoke-static {v0, v2}, Lcom/lge/camera/controller/QuickButtonController;->access$100(Lcom/lge/camera/controller/QuickButtonController;I)V

    goto/16 :goto_1

    .line 678
    :pswitch_4
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getObjectTrackingState()I

    move-result v0

    if-eqz v0, :cond_2

    .line 679
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-interface/range {v0 .. v5}, Lcom/lge/camera/ControllerFunction;->startObjectTrackingFocus(IIIII)V

    goto/16 :goto_1

    .line 684
    :pswitch_5
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    #getter for: Lcom/lge/camera/controller/QuickButtonController;->blockObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lge/camera/controller/QuickButtonController;->access$200(Lcom/lge/camera/controller/QuickButtonController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 685
    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setCheckToggleTime(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 686
    const-string v0, "on"

    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_smart_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 687
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_smart_mode"

    const-string v3, "off"

    invoke-interface {v0, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 688
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setIAFlashStatus(Z)V

    .line 689
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.setting.SetFlashMode"

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 694
    :goto_4
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.setting.SetSmartCameraMode"

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    const/4 v2, 0x4

    #calls: Lcom/lge/camera/controller/QuickButtonController;->setQuickButtonResources(I)V
    invoke-static {v0, v2}, Lcom/lge/camera/controller/QuickButtonController;->access$100(Lcom/lge/camera/controller/QuickButtonController;I)V

    .line 696
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/lge/camera/ControllerFunction;->setCheckClickTime(J)V

    .line 700
    monitor-exit v1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 691
    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_smart_mode"

    const-string v3, "on"

    invoke-interface {v0, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4

    .line 698
    :cond_8
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 704
    :pswitch_6
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    #getter for: Lcom/lge/camera/controller/QuickButtonController;->blockObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lge/camera/controller/QuickButtonController;->access$200(Lcom/lge/camera/controller/QuickButtonController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 705
    :try_start_2
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setCheckToggleTime(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 706
    const-string v0, "back"

    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_swap"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 707
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_swap"

    const-string v3, "front"

    invoke-interface {v0, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 711
    :goto_5
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 712
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 713
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/lge/camera/controller/QuickButtonController;->setQuickButtonForcedDisable(Z)V

    .line 714
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->setAllMenuEnable(ZZ)V

    .line 716
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 717
    .end local v6           #bundle:Landroid/os/Bundle;
    .local v7, bundle:Landroid/os/Bundle;
    :try_start_3
    const-string v0, "subMenuClicked"

    const/4 v2, 0x1

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 718
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.SwapCamera"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v7, v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 719
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/lge/camera/ControllerFunction;->setCheckClickTime(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-object v6, v7

    .line 721
    .end local v7           #bundle:Landroid/os/Bundle;
    .restart local v6       #bundle:Landroid/os/Bundle;
    :cond_9
    :try_start_4
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :goto_6
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 709
    :cond_a
    :try_start_5
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_swap"

    const-string v3, "back"

    invoke-interface {v0, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    .line 725
    :pswitch_7
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    #calls: Lcom/lge/camera/controller/QuickButtonController;->checkSettingMenu()V
    invoke-static {v0}, Lcom/lge/camera/controller/QuickButtonController;->access$300(Lcom/lge/camera/controller/QuickButtonController;)V

    .line 726
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    #getter for: Lcom/lge/camera/controller/QuickButtonController;->blockObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lge/camera/controller/QuickButtonController;->access$200(Lcom/lge/camera/controller/QuickButtonController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 727
    :try_start_6
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setCheckToggleTime(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 728
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ShowModeMenu"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 729
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/lge/camera/ControllerFunction;->setCheckClickTime(J)V

    .line 731
    :cond_b
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 735
    :pswitch_8
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    #calls: Lcom/lge/camera/controller/QuickButtonController;->checkSettingMenu()V
    invoke-static {v0}, Lcom/lge/camera/controller/QuickButtonController;->access$300(Lcom/lge/camera/controller/QuickButtonController;)V

    .line 736
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    if-eqz v0, :cond_c

    .line 737
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    .line 738
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_c

    .line 739
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setClearFocusAnimation()V

    .line 740
    const-string v0, "face_tracking"

    iget-object v1, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "manual"

    iget-object v1, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 742
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showFocus()Z

    .line 746
    :cond_c
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.DisplaySettingMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 750
    :pswitch_9
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    #getter for: Lcom/lge/camera/controller/QuickButtonController;->blockObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lge/camera/controller/QuickButtonController;->access$200(Lcom/lge/camera/controller/QuickButtonController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 751
    :try_start_7
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setCheckToggleTime(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 752
    const-string v0, "back"

    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_swap"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 753
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_swap"

    const-string v3, "front"

    invoke-interface {v0, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 758
    :goto_7
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isDualCameraActive()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 761
    :cond_d
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.HidePIPResizeHandler"

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 765
    :cond_e
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 766
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-ne v0, v4, :cond_10

    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 767
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    #calls: Lcom/lge/camera/controller/QuickButtonController;->doSwapForEffectsRecording()V
    invoke-static {v0}, Lcom/lge/camera/controller/QuickButtonController;->access$400(Lcom/lge/camera/controller/QuickButtonController;)V

    .line 768
    monitor-exit v1

    goto/16 :goto_0

    .line 793
    :catchall_3
    move-exception v0

    :goto_8
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 755
    :cond_f
    :try_start_8
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_swap"

    const-string v3, "back"

    invoke-interface {v0, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_7

    .line 772
    :cond_10
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 774
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isEffectsCameraActive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 777
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    #calls: Lcom/lge/camera/controller/QuickButtonController;->doSwapForEffectsCamera()V
    invoke-static {v0}, Lcom/lge/camera/controller/QuickButtonController;->access$500(Lcom/lge/camera/controller/QuickButtonController;)V

    .line 778
    monitor-exit v1

    goto/16 :goto_0

    .line 783
    :cond_11
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 784
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 785
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/lge/camera/controller/QuickButtonController;->setQuickButtonForcedDisable(Z)V

    .line 786
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->setAllMenuEnable(ZZ)V

    .line 788
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 789
    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v7       #bundle:Landroid/os/Bundle;
    :try_start_9
    const-string v0, "subMenuClicked"

    const/4 v2, 0x1

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 790
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.SwapCamera"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v7, v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 791
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/lge/camera/ControllerFunction;->setCheckClickTime(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object v6, v7

    .line 793
    .end local v7           #bundle:Landroid/os/Bundle;
    .restart local v6       #bundle:Landroid/os/Bundle;
    :cond_12
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/16 :goto_0

    .line 797
    :pswitch_a
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_flash"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 798
    .local v8, flash:Ljava/lang/String;
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportedVideoFlashAuto()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 800
    :cond_13
    const-string v0, "off"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 801
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_flash"

    const-string v2, "on"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 815
    :goto_9
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-ne v0, v4, :cond_19

    .line 816
    new-instance v6, Landroid/os/Bundle;

    .end local v6           #bundle:Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 817
    .restart local v6       #bundle:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    if-ne v0, v3, :cond_14

    .line 818
    const-string v0, "fromQuickButton"

    invoke-virtual {v6, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 820
    :cond_14
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.setting.SetFlashMode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v6}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 824
    :goto_a
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    const/16 v1, 0xa

    #calls: Lcom/lge/camera/controller/QuickButtonController;->setQuickButtonResources(I)V
    invoke-static {v0, v1}, Lcom/lge/camera/controller/QuickButtonController;->access$100(Lcom/lge/camera/controller/QuickButtonController;I)V

    goto/16 :goto_0

    .line 802
    :cond_15
    const-string v0, "on"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 803
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_flash"

    const-string v2, "auto"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_9

    .line 805
    :cond_16
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_flash"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_9

    .line 808
    :cond_17
    const-string v0, "off"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 809
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_flash"

    const-string v2, "on"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_9

    .line 811
    :cond_18
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_flash"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_9

    .line 822
    :cond_19
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.setting.SetFlashMode"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    goto :goto_a

    .line 793
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v8           #flash:Ljava/lang/String;
    .restart local v7       #bundle:Landroid/os/Bundle;
    :catchall_4
    move-exception v0

    move-object v6, v7

    .end local v7           #bundle:Landroid/os/Bundle;
    .restart local v6       #bundle:Landroid/os/Bundle;
    goto/16 :goto_8

    .line 721
    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v7       #bundle:Landroid/os/Bundle;
    :catchall_5
    move-exception v0

    move-object v6, v7

    .end local v7           #bundle:Landroid/os/Bundle;
    .restart local v6       #bundle:Landroid/os/Bundle;
    goto/16 :goto_6

    .line 633
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
