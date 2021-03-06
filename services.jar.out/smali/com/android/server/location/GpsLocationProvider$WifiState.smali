.class Lcom/android/server/location/GpsLocationProvider$WifiState;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiState"
.end annotation


# static fields
.field private static final WIFI_STATE_CLOSED:I = 0x0

.field private static final WIFI_STATE_CLOSING:I = 0x3

.field private static final WIFI_STATE_OPEN:I = 0x2

.field private static final WIFI_STATE_OPENING:I = 0x1


# instance fields
.field private currentNetId:I

.field private currentSSID:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private originalNetId:I

.field private originalNetworkPreference:I

.field private originalSSID:Ljava/lang/String;

.field private reportFailOnClosed:Z

.field private state:I

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 2559
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2548
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I

    .line 2549
    iput-object v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentSSID:Ljava/lang/String;

    .line 2550
    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentNetId:I

    .line 2551
    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetId:I

    .line 2552
    iput-object v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalSSID:Ljava/lang/String;

    .line 2553
    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetworkPreference:I

    .line 2555
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->reportFailOnClosed:Z

    .line 2557
    iput-object v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2560
    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2561
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/location/GpsLocationProvider$WifiState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2542
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/location/GpsLocationProvider$WifiState;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2542
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/location/GpsLocationProvider$WifiState;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/location/GpsLocationProvider$WifiState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2542
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentSSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/location/GpsLocationProvider$WifiState;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/location/GpsLocationProvider$WifiState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2542
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalSSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/location/GpsLocationProvider$WifiState;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/location/GpsLocationProvider$WifiState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2542
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$WifiState;->handleFailure()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/location/GpsLocationProvider$WifiState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2542
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$WifiState;->handleSuccess()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/location/GpsLocationProvider$WifiState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2542
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetId:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/server/location/GpsLocationProvider$WifiState;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2542
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetId:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/location/GpsLocationProvider$WifiState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2542
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetworkPreference:I

    return v0
.end method

.method static synthetic access$3502(Lcom/android/server/location/GpsLocationProvider$WifiState;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2542
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetworkPreference:I

    return p1
.end method

.method static synthetic access$3600(Lcom/android/server/location/GpsLocationProvider$WifiState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2542
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentNetId:I

    return v0
.end method

.method static synthetic access$3602(Lcom/android/server/location/GpsLocationProvider$WifiState;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2542
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentNetId:I

    return p1
.end method

.method static synthetic access$4000(Lcom/android/server/location/GpsLocationProvider$WifiState;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2542
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$WifiState;->restoreOriginalWifiSettings(Z)V

    return-void
.end method

.method private handleFailure()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2686
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I

    if-ne v0, v2, :cond_2

    .line 2687
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GpsLocationProvider"

    const-string v1, "handleFailure for WIFI_STATE_OPENING"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider$WifiState;->restoreOriginalWifiSettings(Z)V

    .line 2696
    :cond_1
    :goto_0
    return-void

    .line 2689
    :cond_2
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 2690
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "GpsLocationProvider"

    const-string v1, "handleFailure for WIFI_STATE_CLOSING"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I

    .line 2692
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v1, 0x4

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed(I)V
    invoke-static {v0, v1}, Lcom/android/server/location/GpsLocationProvider;->access$5600(Lcom/android/server/location/GpsLocationProvider;I)V

    goto :goto_0

    .line 2694
    :cond_4
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GpsLocationProvider"

    const-string v1, "handleFailure invalid case"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleSuccess()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 2655
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2656
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GpsLocationProvider"

    const-string v1, "handleSuccess for WIFI_STATE_OPENING"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const-string v1, "dummy-apn"

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(ILjava/lang/String;I)V
    invoke-static {v0, v2, v1, v3}, Lcom/android/server/location/GpsLocationProvider;->access$5800(Lcom/android/server/location/GpsLocationProvider;ILjava/lang/String;I)V

    .line 2659
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I

    .line 2660
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->getAGpsConnectionInfo(I)Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    invoke-static {v0, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5900(Lcom/android/server/location/GpsLocationProvider;I)Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    move-result-object v0

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0, v5}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1602(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 2679
    :cond_1
    :goto_0
    return-void

    .line 2661
    :cond_2
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 2662
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "GpsLocationProvider"

    const-string v1, "handleSuccess for WIFI_STATE_CLOSING"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->reportFailOnClosed:Z

    if-eqz v0, :cond_4

    .line 2664
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->reportFailOnClosed:Z

    .line 2665
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed(I)V
    invoke-static {v0, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5600(Lcom/android/server/location/GpsLocationProvider;I)V

    .line 2669
    :goto_1
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I

    .line 2670
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->getAGpsConnectionInfo(I)Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    invoke-static {v0, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5900(Lcom/android/server/location/GpsLocationProvider;I)Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    move-result-object v0

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0, v3}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1602(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 2671
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentNetId:I

    .line 2672
    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentSSID:Ljava/lang/String;

    .line 2673
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetId:I

    .line 2674
    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalSSID:Ljava/lang/String;

    .line 2675
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetworkPreference:I

    goto :goto_0

    .line 2667
    :cond_4
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_closed(I)V
    invoke-static {v0, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5700(Lcom/android/server/location/GpsLocationProvider;I)V

    goto :goto_1

    .line 2677
    :cond_5
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GpsLocationProvider"

    const-string v1, "handleSuccess invalid case"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreOriginalNetworkPreference()V
    .locals 2

    .prologue
    .line 2564
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$5500(Lcom/android/server/location/GpsLocationProvider;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetworkPreference:I

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setNetworkPreference(I)V

    .line 2565
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetworkPreference:I

    .line 2566
    return-void
.end method

.method private restoreOriginalWifiSettings(Z)V
    .locals 5
    .parameter "ReportFailOnClosed"

    .prologue
    const/4 v4, 0x4

    .line 2574
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GpsLocationProvider"

    const-string v2, "restoreOriginalWifiSettings"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    :cond_0
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "originalNetId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    :cond_1
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentNetId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentNetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    :cond_2
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportFailOnClosed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->reportFailOnClosed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    :cond_3
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->reportFailOnClosed:Z

    .line 2583
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$5500(Lcom/android/server/location/GpsLocationProvider;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getNetworkPreference()I

    move-result v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetworkPreference:I

    if-ne v1, v2, :cond_b

    .line 2584
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "GpsLocationProvider"

    const-string v2, "current network preference same as original. do nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    :cond_4
    :goto_0
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentNetId:I

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetId:I

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    .line 2597
    :cond_5
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "GpsLocationProvider"

    const-string v2, "currentNetId == originalNetId or original was not connected. don\'t touch netId."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    :cond_6
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I

    .line 2600
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->reportFailOnClosed:Z

    if-eqz v1, :cond_e

    .line 2604
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentNetId:I

    if-ltz v1, :cond_8

    .line 2605
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removing currentNetId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentNetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    :cond_7
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentNetId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result v0

    .line 2607
    .local v0, b:Z
    if-eqz v0, :cond_d

    .line 2608
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "GpsLocationProvider"

    const-string v2, "successfully removed current AP"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    .end local v0           #b:Z
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed(I)V
    invoke-static {v1, v4}, Lcom/android/server/location/GpsLocationProvider;->access$5600(Lcom/android/server/location/GpsLocationProvider;I)V

    .line 2646
    :cond_9
    :goto_2
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "GpsLocationProvider"

    const-string v2, "restoreOriginalWifiSettings end"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    :cond_a
    return-void

    .line 2586
    :cond_b
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "GpsLocationProvider"

    const-string v2, "restoring original Network Preference..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    :cond_c
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$WifiState;->restoreOriginalNetworkPreference()V

    goto :goto_0

    .line 2610
    .restart local v0       #b:Z
    :cond_d
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: removeNetwork returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2615
    .end local v0           #b:Z
    :cond_e
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_closed(I)V
    invoke-static {v1, v4}, Lcom/android/server/location/GpsLocationProvider;->access$5700(Lcom/android/server/location/GpsLocationProvider;I)V

    goto :goto_2

    .line 2618
    :cond_f
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I

    .line 2619
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentNetId:I

    if-ltz v1, :cond_10

    .line 2630
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentNetId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result v0

    .line 2631
    .restart local v0       #b:Z
    if-eqz v0, :cond_12

    .line 2632
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "GpsLocationProvider"

    const-string v2, "successfully removed current AP"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    .end local v0           #b:Z
    :cond_10
    :goto_3
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "GpsLocationProvider"

    const-string v2, "restoring original network..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    :cond_11
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v0

    .line 2640
    .restart local v0       #b:Z
    if-eqz v0, :cond_13

    .line 2641
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableNetwork returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2634
    :cond_12
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: removeNetwork returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2643
    :cond_13
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: enableNetwork returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
