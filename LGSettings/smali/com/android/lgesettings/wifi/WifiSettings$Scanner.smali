.class Lcom/android/lgesettings/wifi/WifiSettings$Scanner;
.super Landroid/os/Handler;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# instance fields
.field private mRetry:I

.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiSettings;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/wifi/WifiSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 2567
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2568
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->mRetry:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/wifi/WifiSettings;Lcom/android/lgesettings/wifi/WifiSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2567
    invoke-direct {p0, p1}, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;-><init>(Lcom/android/lgesettings/wifi/WifiSettings;)V

    return-void
.end method


# virtual methods
.method forceScan()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2577
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->removeMessages(I)V

    .line 2578
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->sendEmptyMessage(I)Z

    .line 2579
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2588
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->access$200(Lcom/android/lgesettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2589
    iput v3, p0, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->mRetry:I

    .line 2591
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1100(Lcom/android/lgesettings/wifi/WifiSettings;)Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v1

    instance-of v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    if-eqz v1, :cond_2

    .line 2592
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1100(Lcom/android/lgesettings/wifi/WifiSettings;)Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    invoke-virtual {v1, v4}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->updateProgressUi(Z)V

    .line 2651
    :cond_0
    :goto_0
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->sendEmptyMessageDelayed(IJ)Z

    .line 2652
    :cond_1
    :goto_1
    return-void

    .line 2600
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1100(Lcom/android/lgesettings/wifi/WifiSettings;)Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v1

    instance-of v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;

    if-eqz v1, :cond_3

    .line 2601
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1100(Lcom/android/lgesettings/wifi/WifiSettings;)Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;

    invoke-virtual {v1, v4}, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;->updateProgressUi(Z)V

    goto :goto_0

    .line 2610
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1100(Lcom/android/lgesettings/wifi/WifiSettings;)Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v1

    instance-of v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    if-eqz v1, :cond_0

    .line 2611
    invoke-static {}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2612
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1100(Lcom/android/lgesettings/wifi/WifiSettings;)Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    invoke-virtual {v1, v4}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->updateProgressUi(Z)V

    goto :goto_0

    .line 2616
    :cond_4
    iget v1, p0, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->mRetry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->mRetry:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 2618
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1100(Lcom/android/lgesettings/wifi/WifiSettings;)Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v1

    instance-of v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    if-eqz v1, :cond_6

    .line 2619
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1100(Lcom/android/lgesettings/wifi/WifiSettings;)Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    invoke-virtual {v1, v3}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->updateProgressUi(Z)V

    .line 2643
    :cond_5
    :goto_2
    iput v3, p0, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->mRetry:I

    .line 2644
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2645
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 2646
    const v1, 0x7f080293

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 2627
    .end local v0           #activity:Landroid/app/Activity;
    :cond_6
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1100(Lcom/android/lgesettings/wifi/WifiSettings;)Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v1

    instance-of v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;

    if-eqz v1, :cond_7

    .line 2628
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1100(Lcom/android/lgesettings/wifi/WifiSettings;)Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;

    invoke-virtual {v1, v3}, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;->updateProgressUi(Z)V

    goto :goto_2

    .line 2637
    :cond_7
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1100(Lcom/android/lgesettings/wifi/WifiSettings;)Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v1

    instance-of v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    if-eqz v1, :cond_5

    .line 2638
    invoke-static {}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2639
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1100(Lcom/android/lgesettings/wifi/WifiSettings;)Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    invoke-virtual {v1, v3}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->updateProgressUi(Z)V

    goto :goto_2
.end method

.method pause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2582
    iput v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->mRetry:I

    .line 2583
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->removeMessages(I)V

    .line 2584
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2571
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2572
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->sendEmptyMessage(I)Z

    .line 2574
    :cond_0
    return-void
.end method
