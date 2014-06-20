.class Lcom/android/lgesettings/DataUsageSummary$7;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1500
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageSummary$7;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 11
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const-wide/16 v9, 0x7d0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1503
    iget-object v4, p0, Lcom/android/lgesettings/DataUsageSummary$7;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mBinding:Z
    invoke-static {v4}, Lcom/android/lgesettings/DataUsageSummary;->access$600(Lcom/android/lgesettings/DataUsageSummary;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1602
    :cond_0
    :goto_0
    return-void

    .line 1505
    :cond_1
    move v2, p2

    .line 1507
    .local v2, dataEnabled:Z
    iget-object v4, p0, Lcom/android/lgesettings/DataUsageSummary$7;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    invoke-virtual {v4}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/lgesettings/DataUsageSummary;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1508
    invoke-static {v2}, Lcom/android/lgesettings/DataUsageSummary;->access$702(Z)Z

    .line 1513
    :cond_2
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v4, :cond_3

    .line 1514
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/lge/mdm/LGMDMManager;->getEnforceMobileNetworkEnabled(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/lge/mdm/LGMDMManager;->getAllowMobileNetwork(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1521
    :cond_3
    iget-object v4, p0, Lcom/android/lgesettings/DataUsageSummary$7;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/lgesettings/DataUsageSummary;->access$800(Lcom/android/lgesettings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v1

    .line 1522
    .local v1, currentTab:Ljava/lang/String;
    const-string v4, "mobile"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1523
    if-eqz v2, :cond_a

    .line 1524
    const-string v4, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eq v5, v4, :cond_4

    const-string v4, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eq v5, v4, :cond_4

    const-string v4, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eq v5, v4, :cond_4

    const-string v4, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v5, v4, :cond_6

    .line 1528
    :cond_4
    #calls: Lcom/android/lgesettings/DataUsageSummary;->setConfirmDialogShowed(Z)V
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageSummary;->access$200(Z)V

    .line 1529
    iget-object v4, p0, Lcom/android/lgesettings/DataUsageSummary$7;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    invoke-static {v4}, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataEnableFragment;->show(Lcom/android/lgesettings/DataUsageSummary;)V

    .line 1569
    :goto_1
    sget-boolean v4, Lcom/android/lgesettings/DataUsageSummary;->aboidBlink:Z

    if-nez v4, :cond_c

    .line 1570
    sput-boolean v5, Lcom/android/lgesettings/DataUsageSummary;->aboidBlink:Z

    .line 1571
    sget-object v4, Lcom/android/lgesettings/DataUsageSummary;->task:Ljava/util/TimerTask;

    invoke-virtual {v4}, Ljava/util/TimerTask;->cancel()Z

    .line 1572
    sget-object v4, Lcom/android/lgesettings/DataUsageSummary;->timer:Ljava/util/Timer;

    invoke-virtual {v4}, Ljava/util/Timer;->purge()I

    .line 1573
    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    sput-object v4, Lcom/android/lgesettings/DataUsageSummary;->timer:Ljava/util/Timer;

    .line 1574
    new-instance v4, Lcom/android/lgesettings/DataUsageSummary$7$1;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/DataUsageSummary$7$1;-><init>(Lcom/android/lgesettings/DataUsageSummary$7;)V

    sput-object v4, Lcom/android/lgesettings/DataUsageSummary;->task:Ljava/util/TimerTask;

    .line 1579
    sget-object v4, Lcom/android/lgesettings/DataUsageSummary;->timer:Ljava/util/Timer;

    sget-object v7, Lcom/android/lgesettings/DataUsageSummary;->task:Ljava/util/TimerTask;

    invoke-virtual {v4, v7, v9, v10}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1593
    :goto_2
    const-string v4, "TLF"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1594
    sput-boolean v6, Lcom/android/lgesettings/DataUsageSummary;->aboidBlink:Z

    .line 1598
    :cond_5
    #calls: Lcom/android/lgesettings/DataUsageSummary;->isConfirmDialogShowed()Z
    invoke-static {}, Lcom/android/lgesettings/DataUsageSummary;->access$1200()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1600
    iget-object v4, p0, Lcom/android/lgesettings/DataUsageSummary$7;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #calls: Lcom/android/lgesettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v4, v5}, Lcom/android/lgesettings/DataUsageSummary;->access$100(Lcom/android/lgesettings/DataUsageSummary;Z)V

    goto/16 :goto_0

    .line 1531
    :cond_6
    const-string v4, "TLF"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1532
    iget-object v4, p0, Lcom/android/lgesettings/DataUsageSummary$7;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #calls: Lcom/android/lgesettings/DataUsageSummary;->isRememberOptionChecked()Z
    invoke-static {v4}, Lcom/android/lgesettings/DataUsageSummary;->access$900(Lcom/android/lgesettings/DataUsageSummary;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1533
    iget-object v4, p0, Lcom/android/lgesettings/DataUsageSummary$7;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #calls: Lcom/android/lgesettings/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v4, v5}, Lcom/android/lgesettings/DataUsageSummary;->access$1000(Lcom/android/lgesettings/DataUsageSummary;Z)V

    .line 1534
    iget-object v4, p0, Lcom/android/lgesettings/DataUsageSummary$7;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    iget-object v4, v4, Lcom/android/lgesettings/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "preferred_data_network_mode"

    iget-object v4, p0, Lcom/android/lgesettings/DataUsageSummary$7;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #calls: Lcom/android/lgesettings/DataUsageSummary;->isMobileDataEnabled()Z
    invoke-static {v4}, Lcom/android/lgesettings/DataUsageSummary;->access$1100(Lcom/android/lgesettings/DataUsageSummary;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    :goto_3
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    move v4, v6

    goto :goto_3

    .line 1539
    :cond_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1540
    .local v0, connectionDialogIntent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1541
    const-string v4, "com.lge.android.connectionmanager.widget"

    const-string v7, "com.lge.android.connectionmanager.widget.DialogActivity"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1545
    :try_start_0
    iget-object v4, p0, Lcom/android/lgesettings/DataUsageSummary$7;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    iget-object v4, v4, Lcom/android/lgesettings/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1547
    :catch_0
    move-exception v3

    .line 1549
    .local v3, e:Landroid/content/ActivityNotFoundException;
    iget-object v4, p0, Lcom/android/lgesettings/DataUsageSummary$7;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #calls: Lcom/android/lgesettings/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v4, v5}, Lcom/android/lgesettings/DataUsageSummary;->access$1000(Lcom/android/lgesettings/DataUsageSummary;Z)V

    goto/16 :goto_1

    .line 1554
    .end local v0           #connectionDialogIntent:Landroid/content/Intent;
    .end local v3           #e:Landroid/content/ActivityNotFoundException;
    :cond_9
    iget-object v4, p0, Lcom/android/lgesettings/DataUsageSummary$7;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #calls: Lcom/android/lgesettings/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v4, v5}, Lcom/android/lgesettings/DataUsageSummary;->access$1000(Lcom/android/lgesettings/DataUsageSummary;Z)V

    goto/16 :goto_1

    .line 1560
    :cond_a
    const-string v4, "TLF"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1561
    iget-object v4, p0, Lcom/android/lgesettings/DataUsageSummary$7;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #calls: Lcom/android/lgesettings/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v4, v6}, Lcom/android/lgesettings/DataUsageSummary;->access$1000(Lcom/android/lgesettings/DataUsageSummary;Z)V

    goto/16 :goto_1

    .line 1563
    :cond_b
    #calls: Lcom/android/lgesettings/DataUsageSummary;->setConfirmDialogShowed(Z)V
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageSummary;->access$200(Z)V

    .line 1564
    iget-object v4, p0, Lcom/android/lgesettings/DataUsageSummary$7;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    invoke-static {v4}, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment;->show(Lcom/android/lgesettings/DataUsageSummary;)V

    goto/16 :goto_1

    .line 1582
    :cond_c
    sget-object v4, Lcom/android/lgesettings/DataUsageSummary;->task:Ljava/util/TimerTask;

    invoke-virtual {v4}, Ljava/util/TimerTask;->cancel()Z

    .line 1583
    sget-object v4, Lcom/android/lgesettings/DataUsageSummary;->timer:Ljava/util/Timer;

    invoke-virtual {v4}, Ljava/util/Timer;->purge()I

    .line 1584
    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    sput-object v4, Lcom/android/lgesettings/DataUsageSummary;->timer:Ljava/util/Timer;

    .line 1585
    new-instance v4, Lcom/android/lgesettings/DataUsageSummary$7$2;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/DataUsageSummary$7$2;-><init>(Lcom/android/lgesettings/DataUsageSummary$7;)V

    sput-object v4, Lcom/android/lgesettings/DataUsageSummary;->task:Ljava/util/TimerTask;

    .line 1590
    sget-object v4, Lcom/android/lgesettings/DataUsageSummary;->timer:Ljava/util/Timer;

    sget-object v7, Lcom/android/lgesettings/DataUsageSummary;->task:Ljava/util/TimerTask;

    invoke-virtual {v4, v7, v9, v10}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_2
.end method
