.class Lcom/android/lgesettings/DataUsageEnabler$10;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DataUsageEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DataUsageEnabler;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DataUsageEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageEnabler$10;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 556
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 559
    iget-object v7, p0, Lcom/android/lgesettings/DataUsageEnabler$10;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    #getter for: Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/lgesettings/DataUsageEnabler;->access$000(Lcom/android/lgesettings/DataUsageEnabler;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_4

    move v3, v5

    .line 561
    .local v3, isAirplaneMode:Z
    :goto_0
    iget-object v7, p0, Lcom/android/lgesettings/DataUsageEnabler$10;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    #getter for: Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/lgesettings/DataUsageEnabler;->access$000(Lcom/android/lgesettings/DataUsageEnabler;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/lgesettings/DataUsageEnabler;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    .line 563
    .local v2, hasReadyMobile:Z
    if-eq v5, v3, :cond_0

    if-nez v2, :cond_5

    .line 565
    :cond_0
    iget-object v7, p0, Lcom/android/lgesettings/DataUsageEnabler$10;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    #getter for: Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v7}, Lcom/android/lgesettings/DataUsageEnabler;->access$100(Lcom/android/lgesettings/DataUsageEnabler;)Landroid/widget/Switch;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 566
    iget-object v7, p0, Lcom/android/lgesettings/DataUsageEnabler$10;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    #getter for: Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v7}, Lcom/android/lgesettings/DataUsageEnabler;->access$100(Lcom/android/lgesettings/DataUsageEnabler;)Landroid/widget/Switch;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 590
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/lgesettings/DataUsageEnabler$10;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    #calls: Lcom/android/lgesettings/DataUsageEnabler;->isDataRoamingDisableSwitch()V
    invoke-static {v7}, Lcom/android/lgesettings/DataUsageEnabler;->access$200(Lcom/android/lgesettings/DataUsageEnabler;)V

    .line 594
    .end local v2           #hasReadyMobile:Z
    .end local v3           #isAirplaneMode:Z
    :cond_2
    const-string v7, "android.intent.action.PHONE_STATE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 595
    const-string v7, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 596
    iget-object v7, p0, Lcom/android/lgesettings/DataUsageEnabler$10;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    #getter for: Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/lgesettings/DataUsageEnabler;->access$000(Lcom/android/lgesettings/DataUsageEnabler;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_7

    move v3, v5

    .line 597
    .restart local v3       #isAirplaneMode:Z
    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 598
    .local v4, tm:Landroid/telephony/TelephonyManager;
    const-string v6, "ACTION_PHONE_STATE_CHANGED :: DCM "

    invoke-static {v6}, Lcom/android/lgesettings/SLog;->i(Ljava/lang/String;)V

    .line 599
    if-eqz v4, :cond_3

    if-nez v3, :cond_3

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    if-nez v6, :cond_3

    .line 602
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_PHONE_STATE_CHANGED :: tm.getCallState() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/lgesettings/SLog;->i(Ljava/lang/String;)V

    .line 603
    iget-object v6, p0, Lcom/android/lgesettings/DataUsageEnabler$10;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    #getter for: Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v6}, Lcom/android/lgesettings/DataUsageEnabler;->access$100(Lcom/android/lgesettings/DataUsageEnabler;)Landroid/widget/Switch;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 604
    iget-object v6, p0, Lcom/android/lgesettings/DataUsageEnabler$10;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    #getter for: Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v6}, Lcom/android/lgesettings/DataUsageEnabler;->access$100(Lcom/android/lgesettings/DataUsageEnabler;)Landroid/widget/Switch;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 610
    .end local v3           #isAirplaneMode:Z
    .end local v4           #tm:Landroid/telephony/TelephonyManager;
    :cond_3
    return-void

    :cond_4
    move v3, v6

    .line 559
    goto/16 :goto_0

    .line 569
    .restart local v2       #hasReadyMobile:Z
    .restart local v3       #isAirplaneMode:Z
    :cond_5
    sget-boolean v7, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v7, :cond_6

    .line 570
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/lge/mdm/LGMDMManager;->getEnforceMobileNetworkEnabled(Landroid/content/ComponentName;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/lge/mdm/LGMDMManager;->getAllowMobileNetwork(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 578
    :cond_6
    iget-object v7, p0, Lcom/android/lgesettings/DataUsageEnabler$10;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    #getter for: Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v7}, Lcom/android/lgesettings/DataUsageEnabler;->access$100(Lcom/android/lgesettings/DataUsageEnabler;)Landroid/widget/Switch;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 580
    const/4 v1, 0x0

    .line 582
    .local v1, dataSavedState:I
    :try_start_0
    iget-object v7, p0, Lcom/android/lgesettings/DataUsageEnabler$10;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    #getter for: Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/lgesettings/DataUsageEnabler;->access$000(Lcom/android/lgesettings/DataUsageEnabler;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "mobile_data"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 586
    :goto_3
    if-ne v5, v1, :cond_1

    .line 587
    iget-object v7, p0, Lcom/android/lgesettings/DataUsageEnabler$10;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    #calls: Lcom/android/lgesettings/DataUsageEnabler;->setMobileDataEnabled(Z)V
    invoke-static {v7, v5}, Lcom/android/lgesettings/DataUsageEnabler;->access$400(Lcom/android/lgesettings/DataUsageEnabler;Z)V

    goto/16 :goto_1

    .end local v1           #dataSavedState:I
    .end local v2           #hasReadyMobile:Z
    .end local v3           #isAirplaneMode:Z
    :cond_7
    move v3, v6

    .line 596
    goto :goto_2

    .line 583
    .restart local v1       #dataSavedState:I
    .restart local v2       #hasReadyMobile:Z
    .restart local v3       #isAirplaneMode:Z
    :catch_0
    move-exception v7

    goto :goto_3
.end method
