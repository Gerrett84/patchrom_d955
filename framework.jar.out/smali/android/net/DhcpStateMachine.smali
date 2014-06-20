.class public Landroid/net/DhcpStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "DhcpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;,
        Landroid/net/DhcpStateMachine$RunningState;,
        Landroid/net/DhcpStateMachine$WaitBeforeStartState;,
        Landroid/net/DhcpStateMachine$StoppedState;,
        Landroid/net/DhcpStateMachine$DefaultState;,
        Landroid/net/DhcpStateMachine$DhcpAction;,
        Landroid/net/DhcpStateMachine$Injector;
    }
.end annotation


# static fields
.field private static final ACTION_DHCP_RENEW:Ljava/lang/String; = "android.net.wifi.DHCP_RENEW"

.field private static final BASE:I = 0x30000

.field public static final CMD_ON_QUIT:I = 0x30006

.field public static final CMD_POST_DHCP_ACTION:I = 0x30005

.field public static final CMD_PRE_DHCP_ACTION:I = 0x30004

.field public static final CMD_PRE_DHCP_ACTION_COMPLETE:I = 0x30007

.field public static final CMD_RENEW_DHCP:I = 0x30003

.field public static final CMD_START_DHCP:I = 0x30001

.field public static final CMD_STOP_DHCP:I = 0x30002

.field private static final DBG:Z = true

.field private static final DEFAULT_DHCP_BSSID:Ljava/lang/String; = "00:0a:eb"

.field private static final DEFAULT_DHCP_DNS1:Ljava/lang/String; = "8.8.8.8"

.field private static final DEFAULT_DHCP_DNS2:Ljava/lang/String; = "8.8.4.4"

.field private static final DEFAULT_DHCP_IPADDRESS:Ljava/lang/String; = "192.168.2."

.field private static final DEFAULT_DHCP_PREFIXLENGTH:I = 0x18

.field private static final DEFAULT_DHCP_SERVERADDRESS:Ljava/lang/String; = "192.168.2.1"

.field public static final DHCP_FAILURE:I = 0x2

.field private static final DHCP_RENEW:I = 0x0

.field public static final DHCP_SUCCESS:I = 0x1

.field private static final MIN_RENEWAL_TIME_SECS:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "DhcpStateMachine"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "DHCP"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/internal/util/StateMachine;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDhcpInfo:Landroid/net/DhcpInfoInternal;

.field private mDhcpInfoCacheList:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/DhcpInfoInternal;",
            ">;"
        }
    .end annotation
.end field

.field private mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mDhcpRenewalIntent:Landroid/app/PendingIntent;

.field private mInterfaceName:Ljava/lang/String;

.field private mRegisteredForPreDhcpNotification:Z

.field private mRunningState:Lcom/android/internal/util/State;

.field private mStoppedState:Lcom/android/internal/util/State;

.field private mWaitBeforeRenewalState:Lcom/android/internal/util/State;

.field private mWaitBeforeStartState:Lcom/android/internal/util/State;

.field private mWifiServiceExt:Lcom/lge/wifi_iface/WifiServiceExtIface;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "controller"
    .parameter "intf"

    .prologue
    const/4 v4, 0x0

    .line 161
    const-string v2, "DhcpStateMachine"

    invoke-direct {p0, v2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 126
    iput-boolean v4, p0, Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z

    .line 151
    new-instance v2, Landroid/net/DhcpStateMachine$DefaultState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$DefaultState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    .line 152
    new-instance v2, Landroid/net/DhcpStateMachine$StoppedState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$StoppedState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    .line 153
    new-instance v2, Landroid/net/DhcpStateMachine$WaitBeforeStartState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$WaitBeforeStartState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    .line 154
    new-instance v2, Landroid/net/DhcpStateMachine$RunningState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$RunningState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/State;

    .line 155
    new-instance v2, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    .line 163
    iput-object p1, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    .line 164
    iput-object p2, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    .line 165
    iput-object p3, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 167
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.DHCP_RENEW"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 169
    .local v0, dhcpRenewalIntent:Landroid/content/Intent;
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    .line 171
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 172
    .local v1, powerManager:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "DHCP"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 173
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 175
    new-instance v2, Landroid/net/DhcpStateMachine$1;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$1;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 198
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.DHCP_RENEW"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 201
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 202
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 203
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 204
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 206
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2}, Landroid/net/DhcpStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 209
    sget-boolean v2, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v2, :cond_0

    .line 210
    invoke-static {}, Lcom/lge/wifi_iface/WifiIfaceManager;->getWifiServiceExtIface()Lcom/lge/wifi_iface/WifiServiceExtIface;

    move-result-object v2

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mWifiServiceExt:Lcom/lge/wifi_iface/WifiServiceExtIface;

    .line 213
    :cond_0
    return-void
.end method

.method private AddDhcpInfoCache(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)V
    .locals 7
    .parameter "key"
    .parameter "addDhcpInfo"

    .prologue
    .line 842
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mDhcpInfoCacheList:Landroid/util/LruCache;

    invoke-virtual {v4}, Landroid/util/LruCache;->size()I

    move-result v2

    .line 844
    .local v2, nCacheSize:I
    const/16 v4, 0x41

    if-lt v2, v4, :cond_0

    .line 845
    const-string v4, "DhcpStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mDhcpInfoCacheList count is full - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mDhcpInfoCacheList:Landroid/util/LruCache;

    invoke-virtual {v4}, Landroid/util/LruCache;->evictAll()V

    .line 847
    const/4 v2, 0x0

    .line 850
    :cond_0
    new-instance v0, Landroid/net/DhcpInfoInternal;

    invoke-direct {v0}, Landroid/net/DhcpInfoInternal;-><init>()V

    .line 851
    .local v0, RealAddDhcpInfo:Landroid/net/DhcpInfoInternal;
    iget-object v4, p2, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    iput-object v4, v0, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    .line 852
    iget v4, p2, Landroid/net/DhcpInfoInternal;->prefixLength:I

    iput v4, v0, Landroid/net/DhcpInfoInternal;->prefixLength:I

    .line 854
    invoke-virtual {p2}, Landroid/net/DhcpInfoInternal;->getRoutes()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 855
    .local v3, route:Landroid/net/RouteInfo;
    invoke-virtual {v0, v3}, Landroid/net/DhcpInfoInternal;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_0

    .line 857
    .end local v3           #route:Landroid/net/RouteInfo;
    :cond_1
    iget-object v4, p2, Landroid/net/DhcpInfoInternal;->dns1:Ljava/lang/String;

    iput-object v4, v0, Landroid/net/DhcpInfoInternal;->dns1:Ljava/lang/String;

    .line 858
    iget-object v4, p2, Landroid/net/DhcpInfoInternal;->dns2:Ljava/lang/String;

    iput-object v4, v0, Landroid/net/DhcpInfoInternal;->dns2:Ljava/lang/String;

    .line 859
    iget-object v4, p2, Landroid/net/DhcpInfoInternal;->serverAddress:Ljava/lang/String;

    iput-object v4, v0, Landroid/net/DhcpInfoInternal;->serverAddress:Ljava/lang/String;

    .line 860
    iget v4, p2, Landroid/net/DhcpInfoInternal;->leaseDuration:I

    iput v4, v0, Landroid/net/DhcpInfoInternal;->leaseDuration:I

    .line 861
    iget-object v4, p2, Landroid/net/DhcpInfoInternal;->domainName:Ljava/lang/String;

    iput-object v4, v0, Landroid/net/DhcpInfoInternal;->domainName:Ljava/lang/String;

    .line 863
    const-string v4, "DhcpStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add DhcpInfoInternal: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/DhcpInfoInternal;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mDhcpInfoCacheList:Landroid/util/LruCache;

    invoke-virtual {v4, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    return-void
.end method

.method private AddDhcpInfoCache(Landroid/net/DhcpInfoInternal;)Z
    .locals 13
    .parameter "addDhcpInfo"

    .prologue
    .line 747
    iget-object v10, p0, Landroid/net/DhcpStateMachine;->mDhcpInfoCacheList:Landroid/util/LruCache;

    if-nez v10, :cond_0

    .line 748
    const/4 v2, 0x1

    .line 837
    :goto_0
    return v2

    .line 752
    :cond_0
    const/4 v2, 0x0

    .line 753
    .local v2, bShouldSendDhcpAction:Z
    const/4 v1, 0x0

    .line 755
    .local v1, bAutoIPSetWhenDhcpRenew:Z
    iget-object v10, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "wifi"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    .line 756
    .local v9, wifiMngr:Landroid/net/wifi/WifiManager;
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 757
    .local v3, currentWifiInfo:Landroid/net/wifi/WifiInfo;
    if-nez v3, :cond_1

    .line 758
    const/4 v2, 0x1

    goto :goto_0

    .line 761
    :cond_1
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    .line 762
    .local v5, strBssid:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    .line 763
    .local v7, strSsid:Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 765
    :cond_2
    const-string v10, "DhcpStateMachine"

    const-string v11, "[bssid + ssid] hash key is null. Return."

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const/4 v2, 0x1

    goto :goto_0

    .line 769
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 771
    .local v4, key:Ljava/lang/String;
    const-string v10, "DhcpStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[bssid + ssid] hash key :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v10, p0, Landroid/net/DhcpStateMachine;->mDhcpInfoCacheList:Landroid/util/LruCache;

    invoke-virtual {v10, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/DhcpInfoInternal;

    .line 778
    .local v0, DhcpInfoCache:Landroid/net/DhcpInfoInternal;
    if-eqz v0, :cond_a

    .line 779
    invoke-virtual {v0}, Landroid/net/DhcpInfoInternal;->toString()Ljava/lang/String;

    move-result-object v6

    .line 780
    .local v6, strDhcpInfoCache:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/DhcpInfoInternal;->toString()Ljava/lang/String;

    move-result-object v8

    .line 783
    .local v8, straddDhcpInfo:Ljava/lang/String;
    iget-object v10, p1, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-direct {p0, v10}, Landroid/net/DhcpStateMachine;->getIpAddressToInt(Ljava/lang/String;)I

    move-result v10

    const v11, 0xffff

    and-int/2addr v10, v11

    const v11, 0xfea9

    if-ne v10, v11, :cond_7

    .line 784
    invoke-direct {p0}, Landroid/net/DhcpStateMachine;->getDLNAEnabled()Z

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4

    .line 785
    const/4 v1, 0x1

    .line 787
    :cond_4
    const-string v10, "DhcpStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AUTOIP is not allowed for dhcp cache. bAutoIPSetWhenDhcpRenew == "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_5
    :goto_1
    const/4 v10, 0x1

    if-ne v2, v10, :cond_9

    .line 804
    const-string v10, "DhcpStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Updated DhcpInfoInternal 1: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const-string v10, "DhcpStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Updated DhcpInfoInternal 2: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    .end local v6           #strDhcpInfoCache:Ljava/lang/String;
    .end local v8           #straddDhcpInfo:Ljava/lang/String;
    :goto_2
    if-nez v1, :cond_6

    iget-object v10, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    if-eqz v10, :cond_6

    invoke-virtual {p0}, Landroid/net/DhcpStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v10

    iget-object v11, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    if-eq v10, v11, :cond_6

    .line 827
    const-string v10, "DhcpStateMachine"

    const-string v11, "Current State is not mWaitBeforeStartState. So bShouldSendDhcpAction must be true"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const/4 v2, 0x1

    .line 834
    :cond_6
    const-string v10, "DhcpStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bShouldSendDhcpAction Result: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 790
    .restart local v6       #strDhcpInfoCache:Ljava/lang/String;
    .restart local v8       #straddDhcpInfo:Ljava/lang/String;
    :cond_7
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 791
    iget-object v10, p0, Landroid/net/DhcpStateMachine;->mDhcpInfoCacheList:Landroid/util/LruCache;

    invoke-virtual {v10, v4}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 793
    const-string v10, "DhcpStateMachine"

    const-string v11, "[bssid + ssid] hash key is removed."

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-direct {p0, v0, p1}, Landroid/net/DhcpStateMachine;->setInterfaceDownUpWithDhcpInfo(Landroid/net/DhcpInfoInternal;Landroid/net/DhcpInfoInternal;)Z

    .line 796
    invoke-direct {p0, v4, p1}, Landroid/net/DhcpStateMachine;->AddDhcpInfoCache(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)V

    .line 798
    :cond_8
    const/4 v2, 0x1

    goto :goto_1

    .line 811
    :cond_9
    const-string v10, "DhcpStateMachine"

    const-string v11, "Don\'t need to update mDhcpInfoCacheList"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 817
    .end local v6           #strDhcpInfoCache:Ljava/lang/String;
    .end local v8           #straddDhcpInfo:Ljava/lang/String;
    :cond_a
    iget-object v10, p1, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-direct {p0, v10}, Landroid/net/DhcpStateMachine;->getIpAddressToInt(Ljava/lang/String;)I

    move-result v10

    const v11, 0xffff

    and-int/2addr v10, v11

    const v11, 0xfea9

    if-ne v10, v11, :cond_b

    .line 818
    const-string v10, "DhcpStateMachine"

    const-string v11, "AUTOIP is not allowed for dhcp cache. bShouldSendDhcpAction == TRUE"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :goto_3
    const/4 v2, 0x1

    goto :goto_2

    .line 820
    :cond_b
    invoke-direct {p0, v4, p1}, Landroid/net/DhcpStateMachine;->AddDhcpInfoCache(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)V

    goto :goto_3
.end method

.method private CheckDhcpDirectory()Z
    .locals 8

    .prologue
    .line 595
    new-instance v1, Ljava/io/File;

    const-string v5, "/data/misc/dhcp"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 596
    .local v1, dhcpDir:Ljava/io/File;
    const/4 v0, 0x1

    .line 598
    .local v0, bRet:Z
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 600
    const-string v5, "DhcpStateMachine"

    const-string v6, "CheckDhcpDirectory : /data/misc/dhcp is not exist."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v5, 0x0

    .line 628
    :goto_0
    return v5

    .line 605
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 606
    .local v2, files:[Ljava/io/File;
    const/4 v4, 0x0

    .line 607
    .local v4, numFiles:I
    if-eqz v2, :cond_1

    .line 608
    array-length v4, v2

    .line 612
    :cond_1
    const-string v5, "DhcpStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CheckDhcpDirectory [Lease File Count] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/16 v5, 0x46

    if-le v4, v5, :cond_4

    .line 616
    const/4 v0, 0x0

    .line 618
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 619
    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".lease2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 620
    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 618
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 625
    :cond_3
    const-string v5, "DhcpStateMachine"

    const-string v6, "CheckDhcpDirectory : Deleted /data/misc/dhcp/dhcpcd-*.lease2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3           #i:I
    :cond_4
    move v5, v0

    .line 628
    goto :goto_0
.end method

.method private CheckSustainCurrentDhcpInfoCache(Landroid/net/DhcpStateMachine$DhcpAction;)Z
    .locals 11
    .parameter "dhcpAction"

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 905
    sget-object v8, Landroid/net/DhcpStateMachine$DhcpAction;->START:Landroid/net/DhcpStateMachine$DhcpAction;

    if-eq p1, v8, :cond_1

    .line 907
    const-string v8, "DhcpStateMachine"

    const-string v9, "Don\'t need to check [bssid + ssid] hash key, dhcpAction != DhcpAction.START."

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    .line 970
    :cond_0
    :goto_0
    return v1

    .line 912
    :cond_1
    invoke-direct {p0}, Landroid/net/DhcpStateMachine;->getSustainFailedDhcpInfoCacheDisabled()Z

    move-result v8

    if-ne v8, v10, :cond_2

    .line 914
    const-string v8, "DhcpStateMachine"

    const-string v9, "getSustainFailedDhcpInfoCacheDisabled == true"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    .line 916
    goto :goto_0

    .line 919
    :cond_2
    iget-object v8, p0, Landroid/net/DhcpStateMachine;->mDhcpInfoCacheList:Landroid/util/LruCache;

    if-nez v8, :cond_3

    move v1, v7

    .line 920
    goto :goto_0

    .line 923
    :cond_3
    iget-object v8, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 924
    .local v6, wifiMngr:Landroid/net/wifi/WifiManager;
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 925
    .local v2, currentWifiInfo:Landroid/net/wifi/WifiInfo;
    if-nez v2, :cond_4

    move v1, v7

    .line 926
    goto :goto_0

    .line 929
    :cond_4
    const/4 v1, 0x0

    .line 931
    .local v1, bCheckSustainCurrentDhcpInfoCache:Z
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    .line 932
    .local v4, strBssid:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    .line 933
    .local v5, strSsid:Ljava/lang/String;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 935
    :cond_5
    const-string v8, "DhcpStateMachine"

    const-string v9, "[CheckSustainCurrentDhcpInfoCache][bssid + ssid] hash key is null. Return."

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    .line 937
    goto :goto_0

    .line 939
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 941
    .local v3, key:Ljava/lang/String;
    const-string v7, "DhcpStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[CheckSustainCurrentDhcpInfoCache][bssid + ssid] hash key :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v7, p0, Landroid/net/DhcpStateMachine;->mDhcpInfoCacheList:Landroid/util/LruCache;

    invoke-virtual {v7, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/DhcpInfoInternal;

    .line 948
    .local v0, DhcpInfoCache:Landroid/net/DhcpInfoInternal;
    if-eqz v0, :cond_7

    .line 950
    const-string v7, "DhcpStateMachine"

    const-string v8, "[CheckSustainCurrentDhcpInfoCache] bCheckSustainCurrentDhcpInfoCache set TRUE"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const/4 v1, 0x1

    .line 955
    const-string v7, "DhcpStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[] DHCP failed on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v7, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 959
    :cond_7
    invoke-direct {p0, v4, v3}, Landroid/net/DhcpStateMachine;->checkSustainWithDefaultDhcpInfo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v10, :cond_0

    .line 960
    const-string v7, "DhcpStateMachine"

    const-string v8, "[checkSustainWithDefaultDhcpInfo] bCheckSustainCurrentDhcpInfoCache set TRUE"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const/4 v1, 0x1

    .line 964
    const-string v7, "DhcpStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[DEFAULT] DHCP failed on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v7, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private RemoveDhcpInfoCache()V
    .locals 8

    .prologue
    .line 869
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mDhcpInfoCacheList:Landroid/util/LruCache;

    if-nez v5, :cond_1

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 873
    :cond_1
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 874
    .local v4, wifiMngr:Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 875
    .local v0, currentWifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 880
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 881
    .local v2, strBssid:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 882
    .local v3, strSsid:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 884
    :cond_2
    const-string v5, "DhcpStateMachine"

    const-string v6, "[bssid + ssid] hash key is null. Return."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 888
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 890
    .local v1, key:Ljava/lang/String;
    const-string v5, "DhcpStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[bssid + ssid] hash key :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mDhcpInfoCacheList:Landroid/util/LruCache;

    invoke-virtual {v5, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 897
    const-string v5, "DhcpStateMachine"

    const-string v6, "[bssid + ssid] hash key is removed."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ReplaceDhcpLeaseFileWithBackupLeaseFile()V
    .locals 7

    .prologue
    .line 637
    const-string v4, "dhcp.ap.macaddress"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 639
    .local v3, wifiMngr:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 640
    .local v0, currentWifiInfo:Landroid/net/wifi/WifiInfo;
    if-nez v0, :cond_0

    .line 657
    :goto_0
    return-void

    .line 644
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    .line 645
    .local v1, strBssid:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 646
    .local v2, strSsid:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 648
    :cond_1
    const-string v4, "DhcpStateMachine"

    const-string v5, "[bssid + ssid] is null. Return."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 652
    :cond_2
    const-string v4, "DhcpStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dhcp.ap.macaddress = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const-string v4, "dhcp.ap.macaddress"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private StoreDhcpBackupLeaseFileWithCurrentLeaseFile()V
    .locals 2

    .prologue
    .line 632
    const-string v0, "dhcp.ap.macaddress"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-direct {p0}, Landroid/net/DhcpStateMachine;->CheckDhcpDirectory()Z

    .line 634
    return-void
.end method

.method static synthetic access$000(Landroid/net/DhcpStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/DhcpStateMachine;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/DhcpStateMachine;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/net/DhcpStateMachine;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/DhcpStateMachine;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/DhcpStateMachine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/DhcpStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z

    return v0
.end method

.method static synthetic access$500(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/StateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$800(Landroid/net/DhcpStateMachine;Landroid/net/DhcpStateMachine$DhcpAction;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/net/DhcpStateMachine;->runDhcp(Landroid/net/DhcpStateMachine$DhcpAction;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method private checkSustainWithDefaultDhcpInfo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 23
    .parameter "strBssid"
    .parameter "key"

    .prologue
    .line 997
    const/4 v14, 0x0

    .line 998
    .local v14, result:Z
    const-string v17, "00:0a:eb"

    .line 999
    .local v17, strDefaultDhcpBssid:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1000
    .local v15, sbIpAddress:Ljava/lang/StringBuffer;
    const-string v16, "192.168.2.1"

    .line 1001
    .local v16, serverAddress:Ljava/lang/String;
    const/16 v12, 0x18

    .line 1005
    .local v12, prefixLength:I
    const-string v19, "dhcp.failinfo.defaultdhcp"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1006
    .local v18, strDefaultDhcpInfo:Ljava/lang/String;
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1008
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 1009
    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1012
    .local v6, data:[Ljava/lang/String;
    array-length v0, v6

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 1014
    const-string v19, "DhcpStateMachine"

    const-string v20, "Set Default DhcpInfoInternal from properties"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    const/16 v19, 0x0

    aget-object v19, v6, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .line 1018
    new-instance v15, Ljava/lang/StringBuffer;

    .end local v15           #sbIpAddress:Ljava/lang/StringBuffer;
    const/16 v19, 0x1

    aget-object v19, v6, v19

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1019
    .restart local v15       #sbIpAddress:Ljava/lang/StringBuffer;
    new-instance v19, Ljava/util/Random;

    invoke-direct/range {v19 .. v19}, Ljava/util/Random;-><init>()V

    const/16 v20, 0x4f

    invoke-virtual/range {v19 .. v20}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    add-int/lit8 v19, v19, 0x79

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1021
    const/16 v19, 0x2

    aget-object v16, v6, v19

    .line 1023
    const/16 v19, 0x3

    :try_start_0
    aget-object v19, v6, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v12

    .line 1029
    .end local v6           #data:[Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_1

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v19

    if-nez v19, :cond_2

    .line 1030
    :cond_1
    const/16 v19, 0x0

    .line 1083
    :goto_1
    return v19

    .line 1033
    :cond_2
    if-nez v15, :cond_3

    .line 1034
    new-instance v15, Ljava/lang/StringBuffer;

    .end local v15           #sbIpAddress:Ljava/lang/StringBuffer;
    const-string v19, "192.168.2."

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1035
    .restart local v15       #sbIpAddress:Ljava/lang/StringBuffer;
    new-instance v19, Ljava/util/Random;

    invoke-direct/range {v19 .. v19}, Ljava/util/Random;-><init>()V

    const/16 v20, 0x4f

    invoke-virtual/range {v19 .. v20}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    add-int/lit8 v19, v19, 0x79

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1039
    :cond_3
    new-instance v4, Landroid/net/DhcpInfoInternal;

    invoke-direct {v4}, Landroid/net/DhcpInfoInternal;-><init>()V

    .line 1040
    .local v4, DefaultAddDhcpInfo:Landroid/net/DhcpInfoInternal;
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v4, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    .line 1041
    iput v12, v4, Landroid/net/DhcpInfoInternal;->prefixLength:I

    .line 1042
    const-string v19, "8.8.8.8"

    move-object/from16 v0, v19

    iput-object v0, v4, Landroid/net/DhcpInfoInternal;->dns1:Ljava/lang/String;

    .line 1043
    const-string v19, "8.8.4.4"

    move-object/from16 v0, v19

    iput-object v0, v4, Landroid/net/DhcpInfoInternal;->dns2:Ljava/lang/String;

    .line 1044
    move-object/from16 v0, v16

    iput-object v0, v4, Landroid/net/DhcpInfoInternal;->serverAddress:Ljava/lang/String;

    .line 1045
    const v19, 0x15180

    move/from16 v0, v19

    iput v0, v4, Landroid/net/DhcpInfoInternal;->leaseDuration:I

    .line 1047
    iget-object v0, v4, Landroid/net/DhcpInfoInternal;->serverAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    .line 1048
    .local v8, ia:Ljava/net/InetAddress;
    if-eqz v8, :cond_4

    .line 1049
    new-instance v19, Landroid/net/RouteInfo;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/net/DhcpInfoInternal;->addRoute(Landroid/net/RouteInfo;)V

    .line 1052
    :cond_4
    const-string/jumbo v19, "network_management"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 1053
    .local v5, b:Landroid/os/IBinder;
    invoke-static {v5}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v11

    .line 1054
    .local v11, netd:Landroid/os/INetworkManagementService;
    if-eqz v11, :cond_6

    .line 1055
    new-instance v9, Landroid/net/InterfaceConfiguration;

    invoke-direct {v9}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 1056
    .local v9, ifcg:Landroid/net/InterfaceConfiguration;
    invoke-virtual {v4}, Landroid/net/DhcpInfoInternal;->makeLinkAddress()Landroid/net/LinkAddress;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 1057
    invoke-virtual {v9}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 1060
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v11, v0, v9}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 1061
    const-string v19, "DhcpStateMachine"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "checkSustainWithDefaultDhcpInfo: IP configuration succeeded: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Landroid/net/DhcpInfoInternal;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Landroid/net/DhcpStateMachine;->AddDhcpInfoCache(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    move-object/from16 v19, v0

    const v20, 0x30005

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 1067
    .local v10, msg:Landroid/os/Message;
    if-eqz v10, :cond_5

    .line 1068
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 1072
    :goto_2
    const/4 v14, 0x1

    .end local v9           #ifcg:Landroid/net/InterfaceConfiguration;
    .end local v10           #msg:Landroid/os/Message;
    :goto_3
    move/from16 v19, v14

    .line 1083
    goto/16 :goto_1

    .line 1070
    .restart local v9       #ifcg:Landroid/net/InterfaceConfiguration;
    .restart local v10       #msg:Landroid/os/Message;
    :cond_5
    const-string v19, "DhcpStateMachine"

    const-string v20, "checkSustainWithDefaultDhcpInfo: msg is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1074
    .end local v10           #msg:Landroid/os/Message;
    :catch_0
    move-exception v13

    .line 1075
    .local v13, re:Landroid/os/RemoteException;
    const-string v19, "DhcpStateMachine"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "checkSustainWithDefaultDhcpInfo: IP configuration failed: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1076
    .end local v13           #re:Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 1077
    .local v7, e:Ljava/lang/IllegalStateException;
    const-string v19, "DhcpStateMachine"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "checkSustainWithDefaultDhcpInfo: IP configuration failed: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1080
    .end local v7           #e:Ljava/lang/IllegalStateException;
    .end local v9           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_6
    const-string v19, "DhcpStateMachine"

    const-string v20, "checkSustainWithDefaultDhcpInfo: netd is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1024
    .end local v4           #DefaultAddDhcpInfo:Landroid/net/DhcpInfoInternal;
    .end local v5           #b:Landroid/os/IBinder;
    .end local v8           #ia:Ljava/net/InetAddress;
    .end local v11           #netd:Landroid/os/INetworkManagementService;
    .restart local v6       #data:[Ljava/lang/String;
    :catch_2
    move-exception v19

    goto/16 :goto_0
.end method

.method private getDLNAEnabled()Z
    .locals 3

    .prologue
    .line 570
    const/4 v0, 0x0

    .line 571
    .local v0, bRet:Z
    const-string v2, "dhcp.dlna.using"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 573
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 574
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 575
    const/4 v0, 0x1

    .line 579
    :cond_0
    return v0
.end method

.method private getIpAddressToInt(Ljava/lang/String;)I
    .locals 3
    .parameter "addrString"

    .prologue
    const/4 v1, 0x0

    .line 583
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 591
    :cond_0
    :goto_0
    return v1

    .line 587
    :cond_1
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 588
    .local v0, addr:Ljava/net/InetAddress;
    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/net/Inet6Address;

    if-nez v2, :cond_0

    .line 591
    invoke-static {v0}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/InetAddress;)I

    move-result v1

    goto :goto_0
.end method

.method private getSustainFailedDhcpInfoCacheDisabled()Z
    .locals 3

    .prologue
    .line 974
    const/4 v0, 0x0

    .line 975
    .local v0, bRet:Z
    const-string v2, "dhcp.failinfo.notuse"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 977
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 978
    const-string v2, "YES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 979
    const/4 v0, 0x1

    .line 983
    :cond_0
    return v0
.end method

.method public static makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/DhcpStateMachine;
    .locals 1
    .parameter "context"
    .parameter "controller"
    .parameter "intf"

    .prologue
    .line 217
    new-instance v0, Landroid/net/DhcpStateMachine;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/DhcpStateMachine;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V

    .line 218
    .local v0, dsm:Landroid/net/DhcpStateMachine;
    invoke-virtual {v0}, Landroid/net/DhcpStateMachine;->start()V

    .line 219
    return-object v0
.end method

.method private runDhcp(Landroid/net/DhcpStateMachine$DhcpAction;)Z
    .locals 12
    .parameter "dhcpAction"

    .prologue
    .line 438
    const/4 v5, 0x0

    .line 439
    .local v5, success:Z
    new-instance v1, Landroid/net/DhcpInfoInternal;

    invoke-direct {v1}, Landroid/net/DhcpInfoInternal;-><init>()V

    .line 440
    .local v1, dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    const/4 v0, 0x0

    .line 443
    .local v0, IsWEPSec:Z
    sget-boolean v6, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/net/DhcpStateMachine;->mWifiServiceExt:Lcom/lge/wifi_iface/WifiServiceExtIface;

    if-eqz v6, :cond_0

    .line 444
    iget-object v6, p0, Landroid/net/DhcpStateMachine;->mWifiServiceExt:Lcom/lge/wifi_iface/WifiServiceExtIface;

    invoke-interface {v6}, Lcom/lge/wifi_iface/WifiServiceExtIface;->IsWEPSecurity()Z

    move-result v0

    .line 451
    :cond_0
    sget-boolean v6, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v6, :cond_1

    .line 452
    iget-object v6, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-nez v6, :cond_1

    .line 453
    const-string v6, "DhcpStateMachine"

    const-string v7, "DHCP Start wake lock is acquired."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v6, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 458
    :cond_1
    sget-object v6, Landroid/net/DhcpStateMachine$DhcpAction;->START:Landroid/net/DhcpStateMachine$DhcpAction;

    if-ne p1, v6, :cond_9

    .line 460
    iget-object v6, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    .line 461
    const-string v6, "DhcpStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DHCP request on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    sget-boolean v6, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v6, :cond_2

    .line 464
    invoke-direct {p0}, Landroid/net/DhcpStateMachine;->ReplaceDhcpLeaseFileWithBackupLeaseFile()V

    .line 467
    :cond_2
    iget-object v6, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v6, v1}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z

    move-result v5

    .line 468
    iput-object v1, p0, Landroid/net/DhcpStateMachine;->mDhcpInfo:Landroid/net/DhcpInfoInternal;

    .line 475
    :cond_3
    :goto_0
    invoke-static {v1}, Landroid/net/DhcpStateMachine$Injector;->checkDhcpInfoInternal(Landroid/net/DhcpInfoInternal;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 476
    const-string v6, "DhcpStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DHCP succeeded on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->useWifiDLNA()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 484
    invoke-direct {p0}, Landroid/net/DhcpStateMachine;->getDLNAEnabled()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    iget-object v6, v1, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-direct {p0, v6}, Landroid/net/DhcpStateMachine;->getIpAddressToInt(Ljava/lang/String;)I

    move-result v6

    const v7, 0xffff

    and-int/2addr v6, v7

    const v7, 0xfea9

    if-ne v6, v7, :cond_4

    .line 485
    iget-object v6, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.net.wifi.AUTOIP_CONNECTION_NOTIFICATION"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 486
    const v6, 0xa8c00

    iput v6, v1, Landroid/net/DhcpInfoInternal;->leaseDuration:I

    .line 487
    const-string v6, "DhcpStateMachine"

    const-string v7, "AUTOIP is allowed for DLNA"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_4
    iget v6, v1, Landroid/net/DhcpInfoInternal;->leaseDuration:I

    int-to-long v2, v6

    .line 495
    .local v2, leaseDuration:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-ltz v6, :cond_6

    .line 498
    const-wide/16 v6, 0x12c

    cmp-long v6, v2, v6

    if-gez v6, :cond_5

    .line 499
    const-wide/16 v2, 0x12c

    .line 504
    :cond_5
    iget-object v6, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x1e0

    mul-long/2addr v10, v2

    add-long/2addr v8, v10

    iget-object v10, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 511
    :cond_6
    sget-boolean v6, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v6, :cond_a

    .line 513
    invoke-direct {p0}, Landroid/net/DhcpStateMachine;->StoreDhcpBackupLeaseFileWithCurrentLeaseFile()V

    .line 517
    invoke-direct {p0, v1}, Landroid/net/DhcpStateMachine;->AddDhcpInfoCache(Landroid/net/DhcpInfoInternal;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 518
    iget-object v6, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    const v7, 0x30005

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 519
    .local v4, msg:Landroid/os/Message;
    if-eqz v4, :cond_7

    .line 520
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 555
    .end local v2           #leaseDuration:J
    .end local v4           #msg:Landroid/os/Message;
    :cond_7
    :goto_1
    sget-boolean v6, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v6, :cond_8

    .line 556
    iget-object v6, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 557
    const-string v6, "DhcpStateMachine"

    const-string v7, "DHCP Start/Renew wake lock is released."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v6, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 561
    :cond_8
    return v5

    .line 469
    :cond_9
    sget-object v6, Landroid/net/DhcpStateMachine$DhcpAction;->RENEW:Landroid/net/DhcpStateMachine$DhcpAction;

    if-ne p1, v6, :cond_3

    .line 470
    const-string v6, "DhcpStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DHCP renewal on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v6, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v6, v1}, Landroid/net/NetworkUtils;->runDhcpRenew(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z

    move-result v5

    .line 472
    iget-object v6, p0, Landroid/net/DhcpStateMachine;->mDhcpInfo:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v1, v6}, Landroid/net/DhcpInfoInternal;->updateFromDhcpRequest(Landroid/net/DhcpInfoInternal;)V

    goto/16 :goto_0

    .line 525
    .restart local v2       #leaseDuration:J
    :cond_a
    iget-object v6, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    const v7, 0x30005

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 526
    .restart local v4       #msg:Landroid/os/Message;
    if-eqz v4, :cond_7

    .line 527
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 533
    .end local v2           #leaseDuration:J
    .end local v4           #msg:Landroid/os/Message;
    :cond_b
    sget-boolean v6, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v6, :cond_c

    const-string v6, "KR"

    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 534
    if-nez v0, :cond_c

    .line 535
    invoke-direct {p0, p1}, Landroid/net/DhcpStateMachine;->CheckSustainCurrentDhcpInfoCache(Landroid/net/DhcpStateMachine$DhcpAction;)Z

    move-result v5

    .line 539
    :cond_c
    if-nez v5, :cond_7

    .line 541
    const-string v6, "DhcpStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DHCP failed on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v6, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    .line 544
    invoke-direct {p0}, Landroid/net/DhcpStateMachine;->RemoveDhcpInfoCache()V

    .line 546
    iget-object v6, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    const-string/jumbo v7, "p2p"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_d

    sget-object v6, Landroid/net/DhcpStateMachine$DhcpAction;->RENEW:Landroid/net/DhcpStateMachine$DhcpAction;

    if-eq p1, v6, :cond_7

    .line 547
    :cond_d
    iget-object v6, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    const v7, 0x30005

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1
.end method

.method private setInterfaceDownUpWithDhcpInfo(Landroid/net/DhcpInfoInternal;Landroid/net/DhcpInfoInternal;)Z
    .locals 9
    .parameter "DhcpInfoOLD"
    .parameter "DhcpInfoNEW"

    .prologue
    .line 1089
    const/4 v5, 0x0

    .line 1091
    .local v5, result:Z
    iget-object v6, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/net/DhcpStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v6

    iget-object v7, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/net/DhcpStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v6

    iget-object v7, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    if-eq v6, v7, :cond_0

    .line 1094
    const-string v6, "DhcpStateMachine"

    const-string v7, "Don\'t need to do setInterfaceDownUpWithDhcpInfo, Current State is not mWaitBeforeStartState."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    const/4 v6, 0x0

    .line 1119
    :goto_0
    return v6

    .line 1099
    :cond_0
    const-string/jumbo v6, "network_management"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1100
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    .line 1101
    .local v3, netd:Landroid/os/INetworkManagementService;
    if-eqz v3, :cond_1

    .line 1102
    new-instance v2, Landroid/net/InterfaceConfiguration;

    invoke-direct {v2}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 1103
    .local v2, ifcg:Landroid/net/InterfaceConfiguration;
    invoke-virtual {p2}, Landroid/net/DhcpInfoInternal;->makeLinkAddress()Landroid/net/LinkAddress;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 1107
    :try_start_0
    iget-object v6, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v3, v6, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 1108
    const-string v6, "DhcpStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setInterfaceDownUpWithDhcpInfo: IP configuration succeeded: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/net/DhcpInfoInternal;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1109
    const/4 v5, 0x1

    .end local v2           #ifcg:Landroid/net/InterfaceConfiguration;
    :goto_1
    move v6, v5

    .line 1119
    goto :goto_0

    .line 1110
    .restart local v2       #ifcg:Landroid/net/InterfaceConfiguration;
    :catch_0
    move-exception v4

    .line 1111
    .local v4, re:Landroid/os/RemoteException;
    const-string v6, "DhcpStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setInterfaceDownUpWithDhcpInfo: IP configuration failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1112
    .end local v4           #re:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1113
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v6, "DhcpStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setInterfaceDownUpWithDhcpInfo: IP configuration failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1116
    .end local v1           #e:Ljava/lang/IllegalStateException;
    .end local v2           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_1
    const-string v6, "DhcpStateMachine"

    const-string/jumbo v7, "setInterfaceDownUpWithDhcpInfo: netd is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public CheckDhcpInfoCacheList(Landroid/util/LruCache;)Z
    .locals 21
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/DhcpInfoInternal;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 663
    .local p1, dhcpInfoCacheList:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Landroid/net/DhcpInfoInternal;>;"
    const/4 v15, 0x0

    .line 664
    .local v15, valid:Z
    const/4 v4, 0x0

    .line 666
    .local v4, DhcpInfoCache:Landroid/net/DhcpInfoInternal;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/net/DhcpStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/net/DhcpStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 669
    const-string v17, "DhcpStateMachine"

    const-string v18, "Don\'t need to check [bssid + ssid] hash key, Current State is not mWaitBeforeStartState."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/16 v17, 0x0

    .line 743
    :goto_0
    return v17

    .line 674
    :cond_0
    if-nez p1, :cond_1

    .line 675
    new-instance p1, Landroid/util/LruCache;

    .end local p1           #dhcpInfoCacheList:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Landroid/net/DhcpInfoInternal;>;"
    const/16 v17, 0x41

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    .line 677
    .restart local p1       #dhcpInfoCacheList:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Landroid/net/DhcpInfoInternal;>;"
    const-string v17, "DhcpStateMachine"

    const-string/jumbo v18, "setDhcpInfoCacheList Error : dhcpInfoCacheList is NULL "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/DhcpStateMachine;->mDhcpInfoCacheList:Landroid/util/LruCache;

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DhcpStateMachine;->mDhcpInfoCacheList:Landroid/util/LruCache;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    .line 684
    const-string v17, "DhcpStateMachine"

    const-string v18, "Fatal Error! mDhcpInfoCacheList is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const/16 v17, 0x0

    goto :goto_0

    .line 689
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "wifi"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/WifiManager;

    .line 690
    .local v16, wifiMngr:Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .line 691
    .local v6, currentWifiInfo:Landroid/net/wifi/WifiInfo;
    if-nez v6, :cond_3

    .line 692
    const/16 v17, 0x0

    goto :goto_0

    .line 695
    :cond_3
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v13

    .line 696
    .local v13, strBssid:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v14

    .line 697
    .local v14, strSsid:Ljava/lang/String;
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_4

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 698
    :cond_4
    const/16 v17, 0x0

    goto :goto_0

    .line 701
    :cond_5
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 703
    .local v9, key:Ljava/lang/String;
    const-string v17, "DhcpStateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[bssid + ssid] hash key :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DhcpStateMachine;->mDhcpInfoCacheList:Landroid/util/LruCache;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #DhcpInfoCache:Landroid/net/DhcpInfoInternal;
    check-cast v4, Landroid/net/DhcpInfoInternal;

    .line 708
    .restart local v4       #DhcpInfoCache:Landroid/net/DhcpInfoInternal;
    if-eqz v4, :cond_8

    .line 709
    const-string/jumbo v17, "network_management"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 710
    .local v5, b:Landroid/os/IBinder;
    invoke-static {v5}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v11

    .line 711
    .local v11, netd:Landroid/os/INetworkManagementService;
    new-instance v8, Landroid/net/InterfaceConfiguration;

    invoke-direct {v8}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 714
    .local v8, ifcg:Landroid/net/InterfaceConfiguration;
    invoke-virtual {v4}, Landroid/net/DhcpInfoInternal;->makeLinkAddress()Landroid/net/LinkAddress;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 715
    invoke-virtual {v8}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 716
    if-eqz v11, :cond_7

    .line 718
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v11, v0, v8}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 720
    const-string v17, "DhcpStateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CheckDhcpInfoCacheList: IP configuration succeeded: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Landroid/net/DhcpInfoInternal;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    move-object/from16 v17, v0

    const v18, 0x30005

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 723
    .local v10, msg:Landroid/os/Message;
    if-eqz v10, :cond_6

    .line 724
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 726
    :cond_6
    const/4 v15, 0x1

    .end local v5           #b:Landroid/os/IBinder;
    .end local v8           #ifcg:Landroid/net/InterfaceConfiguration;
    .end local v10           #msg:Landroid/os/Message;
    .end local v11           #netd:Landroid/os/INetworkManagementService;
    :cond_7
    :goto_1
    move/from16 v17, v15

    .line 743
    goto/16 :goto_0

    .line 727
    .restart local v5       #b:Landroid/os/IBinder;
    .restart local v8       #ifcg:Landroid/net/InterfaceConfiguration;
    .restart local v11       #netd:Landroid/os/INetworkManagementService;
    :catch_0
    move-exception v12

    .line 729
    .local v12, re:Landroid/os/RemoteException;
    const-string v17, "DhcpStateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CheckDhcpInfoCacheList: IP configuration failed: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 731
    .end local v12           #re:Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 733
    .local v7, e:Ljava/lang/IllegalStateException;
    const-string v17, "DhcpStateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CheckDhcpInfoCacheList: IP configuration failed: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 740
    .end local v5           #b:Landroid/os/IBinder;
    .end local v7           #e:Ljava/lang/IllegalStateException;
    .end local v8           #ifcg:Landroid/net/InterfaceConfiguration;
    .end local v11           #netd:Landroid/os/INetworkManagementService;
    :cond_8
    const-string v17, "DhcpStateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[bssid + ssid] hash key :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is not exist."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public doQuit()V
    .locals 0

    .prologue
    .line 241
    invoke-virtual {p0}, Landroid/net/DhcpStateMachine;->quit()V

    .line 242
    return-void
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    const v1, 0x30006

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 246
    return-void
.end method

.method public registerForPreDhcpNotification()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z

    .line 233
    return-void
.end method
