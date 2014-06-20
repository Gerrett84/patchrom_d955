.class public Lcom/android/internal/telephony/LGDataRecovery;
.super Landroid/os/Handler;
.source "LGDataRecovery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LGDataRecovery$ThreadPingToDnsServer;,
        Lcom/android/internal/telephony/LGDataRecovery$ThreadIPtable;,
        Lcom/android/internal/telephony/LGDataRecovery$ThreadNetinfo;,
        Lcom/android/internal/telephony/LGDataRecovery$DataLogFormatter;,
        Lcom/android/internal/telephony/LGDataRecovery$RouteInfoWithIface;,
        Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;,
        Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;,
        Lcom/android/internal/telephony/LGDataRecovery$DnsFailInfo;,
        Lcom/android/internal/telephony/LGDataRecovery$NetdObserverEx;,
        Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;,
        Lcom/android/internal/telephony/LGDataRecovery$LinkState;,
        Lcom/android/internal/telephony/LGDataRecovery$RecoverySignType;,
        Lcom/android/internal/telephony/LGDataRecovery$DataStallSympton;,
        Lcom/android/internal/telephony/LGDataRecovery$RecoveryRoutine;
    }
.end annotation


# static fields
.field private static final AGGRESSIVE_DELAY_IN_MS:I = 0xea60

.field private static final CONNECTION_COMPLETE_CHECK_TIMER:I = 0x2710

.field protected static final CONN_COMPLETE_CHECK_ALARM_TAG_EXTRA:Ljava/lang/String; = "conn.check.alram.tag"

.field protected static final DATA_STALL_ALARM_TAG_EXTRA:Ljava/lang/String; = "data.stall.alram.tag"

.field protected static final DEFAULT_DUMP:Ljava/lang/String; = "lgdatadump.log"

.field protected static final DNSFAIL_DUMP:Ljava/lang/String; = "dnsfailhistory.log"

.field protected static final DNS_PROPERTY:Ljava/lang/String; = "net.dns1"

.field private static final EAI_ADDRFAMILY:I = 0x1

.field private static final EAI_AGAIN:I = 0x2

.field private static final EAI_BADFLAGS:I = 0x3

.field private static final EAI_BADHINTS:I = 0xc

.field private static final EAI_FAIL:I = 0x4

.field private static final EAI_FAMILY:I = 0x5

.field private static final EAI_MEMORY:I = 0x6

.field private static final EAI_NODATA:I = 0x7

.field private static final EAI_NONAME:I = 0x8

.field private static final EAI_OVERFLOW:I = 0xe

.field private static final EAI_PROTOCOL:I = 0xd

.field private static final EAI_SERVICE:I = 0x9

.field private static final EAI_SOCKTYPE:I = 0xa

.field private static final EAI_SYSTEM:I = 0xb

.field private static final EVENT_BASE:I = 0x42064

.field private static final EVENT_CONN_CHECK_ALARM_EXPIRED:I = 0x4206b

.field private static final EVENT_DATA_CONNECTION_ATTACHED:I = 0x4206e

.field private static final EVENT_DATA_CONNECTION_DETACHED:I = 0x4206f

.field private static final EVENT_DATA_SATE_CONNECTED:I = 0x42067

.field private static final EVENT_DATA_SATE_DISCONNECTED:I = 0x42068

.field private static final EVENT_DNS_FAIL_OBSERVED:I = 0x42069

.field private static final EVENT_GET_MODEM_PACKET_COUNT_DONE:I = 0x42072

.field private static final EVENT_PS_RESTRICT_DISABLED:I = 0x42071

.field private static final EVENT_PS_RESTRICT_ENABLED:I = 0x42070

.field private static final EVENT_SCREEN_OFF:I = 0x42066

.field private static final EVENT_SCREEN_ON:I = 0x42065

.field private static final EVENT_STALL_ALARM_EXPIRED:I = 0x4206a

.field private static final EVENT_VOICE_CALL_ENDED:I = 0x4206c

.field private static final EVENT_VOICE_CALL_STARTED:I = 0x4206d

.field private static final INTENT_IMS_CALL_STATE:Ljava/lang/String; = "com.lge.ims.action.CALL_STATE"

.field private static final INTENT_LGDATA_CONN_COMPLETE_CHECK_ALARM:Ljava/lang/String; = "com.lge.internal.telephony.lge-data-conn-check-alarm"

.field private static final INTENT_LGDATA_PULL_LOG:Ljava/lang/String; = "lg-data-pulllog"

.field private static final INTENT_LGDATA_STALL_ALARM:Ljava/lang/String; = "com.lge.internal.telephony.lge-data-stall-alarm"

.field protected static final IPTABLES_DUMP:Ljava/lang/String; = "iptablesinfo.log"

.field protected static final LGDR_LOG:Ljava/lang/String; = "LGDataRecoveryLog.log"

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final MIN_TIME_DNS_STATCHECK:I = 0x6

.field protected static final NETINFO_DUMP:Ljava/lang/String; = "netinfo.log"

.field protected static final NETSTAT_LOG:Ljava/lang/String; = "netstat.log"

.field private static final NON_AGGRESSIVE_DELAY_IN_MS:I = 0x57e40

.field private static final NUMBER_SENT_PACKETS_OF_HANG:I = 0xa

.field protected static final ROUTE_INFO_URI:Ljava/lang/String; = "/proc/net/route"

.field protected static final STALL_INFO_FILE:Ljava/lang/String; = "datastallinfo.log"

.field protected static final SUSPECTED_SYMPTON_FOR_DATA_STALL:Ljava/lang/String; = "setting.lge-data-suspected-sympton"

.field protected static final V6ROUTE_INFO_URI:Ljava/lang/String; = "/proc/net/ipv6_route"

.field protected static final WIFI_INTERFACE:Ljava/lang/String; = "wlan0"

.field private static mCP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

.field private static mCpResponseFailCount:I

.field private static mCpResponseFlag:Z

.field private static sStatsService:Landroid/net/INetworkStatsService;


# instance fields
.field private DATA_STALL_NOT_SUSPECTED:Z

.field private final DBG:Z

.field private final DBG2:Z

.field isScreenOn:Z

.field private lastStatForDnsFail:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

.field private mConnectionInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCpResponseHandler:Landroid/os/Handler;

.field private mCpResponseHandlerThread:Landroid/os/HandlerThread;

.field private mDataStallAlarmIntent:Landroid/app/PendingIntent;

.field protected mDataStallAlarmTag:I

.field private mIMScall:Z

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPsRestricted:Z

.field private mIsWifiConnected:Z

.field private mNMService:Landroid/os/INetworkManagementService;

.field private mNetdObserverEx:Lcom/android/internal/telephony/LGDataRecovery$NetdObserverEx;

.field private mNumOfDnsFailNoConn:I

.field mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mTime1stDnsfailNoConn:J

.field private mVoicecall:Z

.field private modemVendor:Ljava/lang/String;

.field private supportCPtrafficstat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    sput-object v1, Lcom/android/internal/telephony/LGDataRecovery;->sStatsService:Landroid/net/INetworkStatsService;

    .line 82
    sput-object v1, Lcom/android/internal/telephony/LGDataRecovery;->mCP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    .line 83
    sput-boolean v0, Lcom/android/internal/telephony/LGDataRecovery;->mCpResponseFlag:Z

    .line 84
    sput v0, Lcom/android/internal/telephony/LGDataRecovery;->mCpResponseFailCount:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 6
    .parameter "phone"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 838
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 65
    iput-boolean v5, p0, Lcom/android/internal/telephony/LGDataRecovery;->DBG:Z

    .line 66
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGDataRecovery;->DBG2:Z

    .line 69
    iput-object v3, p0, Lcom/android/internal/telephony/LGDataRecovery;->mNetdObserverEx:Lcom/android/internal/telephony/LGDataRecovery$NetdObserverEx;

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    .line 72
    iput-boolean v5, p0, Lcom/android/internal/telephony/LGDataRecovery;->supportCPtrafficstat:Z

    .line 73
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGDataRecovery;->mIsWifiConnected:Z

    .line 74
    iput-object v3, p0, Lcom/android/internal/telephony/LGDataRecovery;->lastStatForDnsFail:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    .line 75
    iput v4, p0, Lcom/android/internal/telephony/LGDataRecovery;->mNumOfDnsFailNoConn:I

    .line 76
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/telephony/LGDataRecovery;->mTime1stDnsfailNoConn:J

    .line 77
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGDataRecovery;->mIsPsRestricted:Z

    .line 78
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGDataRecovery;->mVoicecall:Z

    .line 79
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGDataRecovery;->mIMScall:Z

    .line 80
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGDataRecovery;->DATA_STALL_NOT_SUSPECTED:Z

    .line 87
    iput-object v3, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 88
    iput-boolean v5, p0, Lcom/android/internal/telephony/LGDataRecovery;->isScreenOn:Z

    .line 90
    iput-object v3, p0, Lcom/android/internal/telephony/LGDataRecovery;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 91
    const-string v1, "QCT"

    iput-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery;->modemVendor:Ljava/lang/String;

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/android/internal/telephony/LGDataRecovery;->mDataStallAlarmTag:I

    .line 190
    new-instance v1, Lcom/android/internal/telephony/LGDataRecovery$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/LGDataRecovery$1;-><init>(Lcom/android/internal/telephony/LGDataRecovery;)V

    iput-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 840
    iput-object p1, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 843
    new-instance v1, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;-><init>(Lcom/android/internal/telephony/LGDataRecovery;)V

    sput-object v1, Lcom/android/internal/telephony/LGDataRecovery;->mCP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    .line 845
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "mCpResponseHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery;->mCpResponseHandlerThread:Landroid/os/HandlerThread;

    .line 846
    iget-boolean v1, p0, Lcom/android/internal/telephony/LGDataRecovery;->supportCPtrafficstat:Z

    if-eqz v1, :cond_0

    .line 847
    iget-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery;->mCpResponseHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 849
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/LGDataRecovery$2;

    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mCpResponseHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/LGDataRecovery$2;-><init>(Lcom/android/internal/telephony/LGDataRecovery;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery;->mCpResponseHandler:Landroid/os/Handler;

    .line 868
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 869
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 870
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 871
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 872
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 873
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 874
    const-string v1, "com.lge.internal.telephony.lge-data-stall-alarm"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 875
    const-string v1, "com.lge.internal.telephony.lge-data-conn-check-alarm"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 876
    const-string v1, "lg-data-pulllog"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 877
    const-string v1, "com.lge.ims.action.CALL_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 878
    iget-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 880
    iget-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 882
    iget-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    const v2, 0x4206c

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 883
    iget-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    const v2, 0x4206d

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 886
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 888
    iget-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    const v2, 0x4206e

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 890
    iget-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    const v2, 0x4206f

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 892
    iget-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    const v2, 0x42070

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 894
    iget-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    const v2, 0x42071

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 898
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGDataRecovery;->startNetdListener()V

    .line 900
    const-string v1, "LGDataRecovery has created."

    invoke-static {v1}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 902
    return-void
.end method

.method private Dumpinfo(JI)V
    .locals 10
    .parameter "Id"
    .parameter "symton"

    .prologue
    const/4 v9, 0x0

    .line 1630
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "yyyy-MM-dd kk:mm:ss"

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Symton: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "lgdatadump.log"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    const-string v5, "<-- ConnectionInfos -->"

    const-string v6, "lgdatadump.log"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    iget-object v5, p0, Lcom/android/internal/telephony/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;

    .line 1634
    .local v1, conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    invoke-virtual {v1}, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "lgdatadump.log"

    invoke-static {v5, v6, v9}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1637
    .end local v1           #conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    :cond_0
    const-string v5, "<-- ip rule show -->"

    const-string v6, "lgdatadump.log"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    const-string v5, "ip rule show"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/LGDataRecovery;->getShellCmdResult(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1639
    .local v4, line:Ljava/lang/String;
    const-string v5, "lgdatadump.log"

    invoke-static {v4, v5, v9}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 1642
    .end local v4           #line:Ljava/lang/String;
    :cond_1
    const-string v5, "<-- netcfg -->"

    const-string v6, "lgdatadump.log"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    const-string v5, "netcfg"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/LGDataRecovery;->getShellCmdResult(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1644
    .restart local v4       #line:Ljava/lang/String;
    const-string v5, "lgdatadump.log"

    invoke-static {v4, v5, v9}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 1647
    .end local v4           #line:Ljava/lang/String;
    :cond_2
    const-string v5, "<-- proc/net/route -->"

    const-string v6, "lgdatadump.log"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    const-string v5, "proc/net/route"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LGDataRecovery;->getFileSystemInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1649
    .restart local v4       #line:Ljava/lang/String;
    const-string v5, "lgdatadump.log"

    invoke-static {v4, v5, v9}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 1652
    .end local v4           #line:Ljava/lang/String;
    :cond_3
    const-string v5, "<-- proc/net/route by API -->"

    const-string v6, "lgdatadump.log"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    invoke-direct {p0}, Lcom/android/internal/telephony/LGDataRecovery;->loggingRouteInfos()V

    .line 1655
    const-string v5, "<-- proc/net/dev -->"

    const-string v6, "lgdatadump.log"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    const-string v5, "proc/net/dev"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LGDataRecovery;->getFileSystemInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1657
    .restart local v4       #line:Ljava/lang/String;
    const-string v5, "lgdatadump.log"

    invoke-static {v4, v5, v9}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    .line 1659
    .end local v4           #line:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGDataRecovery;->findDefaultConnInfo()Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;

    move-result-object v1

    .line 1660
    .restart local v1       #conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    if-eqz v1, :cond_5

    .line 1661
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<-- proc/net/xt_quota/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "lgdatadump.log"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "proc/net/xt_quota/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LGDataRecovery;->getFileSystemInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1664
    .restart local v4       #line:Ljava/lang/String;
    const-string v5, "lgdatadump.log"

    invoke-static {v4, v5, v9}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    .line 1674
    .end local v4           #line:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x2

    if-ne p3, v5, :cond_7

    .line 1675
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "yyyy-MM-dd kk:mm:ss"

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Symton: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "iptablesinfo.log"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    iget-object v5, p0, Lcom/android/internal/telephony/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;

    if-nez v5, :cond_6

    .line 1678
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1679
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;

    .line 1683
    .end local v0           #b:Landroid/os/IBinder;
    :cond_6
    :try_start_0
    const-string v5, "\n"

    const-string v6, "iptablesinfo.log"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1684
    const-string v5, "<-- iptables -L -->"

    const-string v6, "iptablesinfo.log"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    iget-object v5, p0, Lcom/android/internal/telephony/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;

    const-string v6, "iptables -L"

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->runShellCommand(Ljava/lang/String;)V

    .line 1686
    const-string v5, "<-- iptables -t nat -L -->"

    const-string v6, "iptablesinfo.log"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    iget-object v5, p0, Lcom/android/internal/telephony/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;

    const-string v6, "iptables -t nat -L"

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->runShellCommand(Ljava/lang/String;)V

    .line 1688
    const-string v5, "<-- iptables -t mangle -L -->"

    const-string v6, "iptablesinfo.log"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    iget-object v5, p0, Lcom/android/internal/telephony/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;

    const-string v6, "iptables -t mangle -L"

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->runShellCommand(Ljava/lang/String;)V

    .line 1690
    const-string v5, "<-- iptables -t raw -L -->"

    const-string v6, "iptablesinfo.log"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    iget-object v5, p0, Lcom/android/internal/telephony/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;

    const-string v6, "iptables -t raw -L"

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->runShellCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1697
    :cond_7
    :goto_6
    return-void

    .line 1693
    :catch_0
    move-exception v2

    .line 1694
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "failed for logging iptables"

    invoke-static {v5}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_6
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/LGDataRecovery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/internal/telephony/LGDataRecovery;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/LGDataRecovery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/internal/telephony/LGDataRecovery;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/LGDataRecovery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/internal/telephony/LGDataRecovery;->mIMScall:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/LGDataRecovery;)Landroid/os/INetworkManagementService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/LGDataRecovery;Landroid/os/INetworkManagementService;)Landroid/os/INetworkManagementService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/internal/telephony/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;

    return-object p1
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/LGDataRecovery;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/internal/telephony/LGDataRecovery;->loggingRouteInfos()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/LGDataRecovery;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGDataRecovery;->getShellCmdResult(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/LGDataRecovery;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGDataRecovery;->isActive(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private doRecovery()V
    .locals 2

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/android/internal/telephony/LGDataRecovery;->getRecoveryAction()I

    move-result v0

    .line 746
    .local v0, action:I
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 747
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGDataRecovery;->putRecoveryAction(I)V

    .line 749
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGDataRecovery;->doRecovery(I)V

    .line 750
    return-void
.end method

.method private doRecovery(I)V
    .locals 6
    .parameter "action"

    .prologue
    const/4 v5, 0x2

    .line 753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doRecovery action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 754
    packed-switch p1, :pswitch_data_0

    .line 798
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doRecovery: Invalid recoveryAction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 756
    :pswitch_0
    const-string v2, "RECOVERY_ACTION:: PING_CHECK"

    const-string v3, "datastallinfo.log"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;

    .line 758
    .local v0, conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    iget-object v2, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    sget-object v3, Lcom/android/internal/telephony/LGDataRecovery$LinkState;->LINKUP:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->FState:Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;

    sget-object v3, Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;->CONNECTED:Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;

    if-ne v2, v3, :cond_0

    .line 760
    iget v2, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->recoverySign:I

    if-ne v2, v5, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 761
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " RECOVERY_ACTION:: PING_CHECK with APN : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 762
    new-instance v2, Lcom/android/internal/telephony/LGDataRecovery$ThreadPingToDnsServer;

    iget-object v3, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/LGDataRecovery$ThreadPingToDnsServer;-><init>(Lcom/android/internal/telephony/LGDataRecovery;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/telephony/LGDataRecovery$ThreadPingToDnsServer;->start()V

    goto :goto_0

    .line 768
    .end local v0           #conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :pswitch_1
    const-string v2, "RECOVERY_ACTION:: CLEANUP_CONN"

    const-string v3, "datastallinfo.log"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;

    .line 770
    .restart local v0       #conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    iget-object v2, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    sget-object v3, Lcom/android/internal/telephony/LGDataRecovery$LinkState;->LINKUP:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->FState:Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;

    sget-object v3, Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;->CONNECTED:Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;

    if-ne v2, v3, :cond_1

    .line 772
    iget v2, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->recoverySign:I

    if-ne v2, v5, :cond_1

    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " RECOVERY_ACTION:: CLEANUP_CONN with APN : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 774
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v3, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->cleanUpConnection(Ljava/lang/String;Z)V

    goto :goto_1

    .line 780
    .end local v0           #conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mVoicecall:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mIMScall:Z

    if-eqz v2, :cond_4

    .line 781
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "voice or mIMS call exist, Do not RADIO OFF mVoicecall:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/LGDataRecovery;->mVoicecall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " /mIMScall:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/LGDataRecovery;->mIMScall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGDataRecovery;->putRecoveryAction(I)V

    .line 802
    :cond_3
    :goto_2
    return-void

    .line 784
    :cond_4
    const-string v2, "RECOVERY_ACTION:: RADIO_OFFON"

    const-string v3, "datastallinfo.log"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker;->restartRadio()V

    goto :goto_2

    .line 789
    :pswitch_3
    const-string v2, "RECOVERY_ACTION:: DCT_RESTART"

    const-string v3, "datastallinfo.log"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 792
    :pswitch_4
    const-string v2, "RECOVERY_ACTION:: RILD_RESTART"

    const-string v3, "datastallinfo.log"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 795
    :pswitch_5
    const-string v2, "RECOVERY_ACTION:: MODEM_RESTART"

    const-string v3, "datastallinfo.log"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 754
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private doStallCheckwithPktCnt()V
    .locals 13

    .prologue
    .line 642
    const/4 v2, 0x0

    .line 643
    .local v2, stallsympton:I
    iget-object v9, p0, Lcom/android/internal/telephony/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;

    .line 644
    .local v0, conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    iget-object v9, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    sget-object v10, Lcom/android/internal/telephony/LGDataRecovery$LinkState;->LINKUP:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    if-ne v9, v10, :cond_a

    iget-object v9, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->FState:Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;

    sget-object v10, Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;->CONNECTED:Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;

    if-ne v9, v10, :cond_a

    .line 645
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " StallCheck iface = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " APN = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 646
    iget-object v9, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/LGDataRecovery;->isActive(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 647
    const/4 v9, 0x1

    iput v9, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->recoverySign:I

    .line 648
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGDataRecovery;->updateTrafficStatforAP(Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;)V

    .line 649
    iget-boolean v9, p0, Lcom/android/internal/telephony/LGDataRecovery;->supportCPtrafficstat:Z

    if-eqz v9, :cond_1

    .line 650
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGDataRecovery;->updateTrafficStatforCP(Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;)V

    .line 652
    :cond_1
    iget-object v9, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->CurrStatAP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v9, v9, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->systime:J

    iget-object v11, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->PrevStatAP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v11, v11, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->systime:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    div-long v3, v9, v11

    .line 653
    .local v3, timegap:J
    const-wide/16 v9, 0x32

    cmp-long v9, v3, v9

    if-lez v9, :cond_0

    .line 654
    iget-object v9, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->CurrStatAP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v9, v9, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->txCnt:J

    iget-object v11, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->PrevStatAP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v11, v11, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->txCnt:J

    sub-long v5, v9, v11

    .line 655
    .local v5, txincreaseAP:J
    iget-object v9, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v9, v9, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->txCnt:J

    iget-object v11, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->PrevStatModem:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v11, v11, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->txCnt:J

    sub-long v7, v9, v11

    .line 656
    .local v7, txincreaseCP:J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] txincreaseAP : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    txincreaseCP : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 657
    iget v9, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->sentSinceLastRecv:I

    if-eqz v9, :cond_0

    .line 660
    iget v9, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->sentSinceLastRecv:I

    const/16 v10, 0xa

    if-le v9, v10, :cond_0

    .line 661
    iget-boolean v9, p0, Lcom/android/internal/telephony/LGDataRecovery;->supportCPtrafficstat:Z

    if-eqz v9, :cond_7

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-ltz v9, :cond_7

    .line 662
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_2

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_2

    .line 664
    const-string v9, "TX_INCREASE_BOTH_AP_CP but no Rx. It can be a problem of network or radio. QXDM log required."

    invoke-static {v9}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 665
    iget-object v9, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    const-string v10, "default"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 666
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "STALL_SYPTOM "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " :: TX_INCREASE_BOTH_AP_CP but no Rx QXDM log required"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "datastallinfo.log"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const/4 v2, 0x7

    .line 668
    const/4 v9, 0x2

    iput v9, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->recoverySign:I

    goto/16 :goto_0

    .line 672
    :cond_2
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_4

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-nez v9, :cond_4

    .line 674
    const/4 v9, 0x4

    if-ge v2, v9, :cond_3

    .line 675
    const/4 v2, 0x4

    .line 677
    :cond_3
    const/4 v9, 0x2

    iput v9, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->recoverySign:I

    .line 678
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "STALL_SYPTOM "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " :: ONLY_AP_TX_INCREASE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "datastallinfo.log"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 681
    :cond_4
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-nez v9, :cond_6

    .line 682
    iget-object v9, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    const-string v10, "ims"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 683
    const/4 v9, 0x2

    if-ge v2, v9, :cond_5

    .line 684
    const/4 v2, 0x2

    .line 686
    :cond_5
    const/4 v9, 0x2

    iput v9, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->recoverySign:I

    .line 687
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "STALL_SYPTOM "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " :: NO_AP_TX_INCREASE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "datastallinfo.log"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 690
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " only CP Tx Cnt increase. QCT APP may work do not recovery"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 694
    :cond_7
    const/4 v9, 0x3

    if-ge v2, v9, :cond_8

    .line 695
    const/4 v2, 0x3

    .line 697
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "STALL_SYPTOM "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " :: ONLY_TX_INCREASE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "datastallinfo.log"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 703
    .end local v3           #timegap:J
    .end local v5           #txincreaseAP:J
    .end local v7           #txincreaseCP:J
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " conn with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not Active change LState to DOWN WARNING!!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 704
    sget-object v9, Lcom/android/internal/telephony/LGDataRecovery$LinkState;->LINKDOWN:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    iput-object v9, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    .line 705
    const/4 v9, 0x1

    iput v9, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->recoverySign:I

    goto/16 :goto_0

    .line 708
    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " ConnInfo for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  Lstate : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  FState :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->FState:Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 709
    const/4 v9, 0x1

    iput v9, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->recoverySign:I

    goto/16 :goto_0

    .line 712
    .end local v0           #conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doStallCheckwithPktCnt stallsympton = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 713
    if-nez v2, :cond_d

    .line 714
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/LGDataRecovery;->putRecoveryAction(I)V

    .line 729
    :cond_c
    :goto_1
    return-void

    .line 716
    :cond_d
    const-string v9, "AME"

    const-string v10, "ro.build.target_region"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    const-string v9, "ESA"

    const-string v10, "ro.build.target_region"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    const-string v9, "CN"

    const-string v10, "ro.build.target_country"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    :cond_e
    const/4 v9, 0x7

    if-ne v2, v9, :cond_f

    .line 720
    const-string v9, "MISSION Hey, Dude! please recover me when network/radio path is the problem"

    invoke-static {v9}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 721
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/LGDataRecovery;->doRecovery(I)V

    goto :goto_1

    .line 723
    :cond_f
    const/4 v9, 0x2

    if-lt v2, v9, :cond_c

    .line 724
    const-string v9, "recovery needed"

    invoke-static {v9}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 725
    invoke-direct {p0}, Lcom/android/internal/telephony/LGDataRecovery;->doRecovery()V

    goto :goto_1
.end method

.method private getRecoveryAction()I
    .locals 4

    .prologue
    .line 732
    iget-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "radio.data.stall.recovery.action"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 734
    .local v0, action:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecoveryAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 735
    return v0
.end method

.method private getShellCmdResult(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1900
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1901
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    .line 1904
    .local v9, runtime:Ljava/lang/Runtime;
    const/4 v3, 0x0

    .line 1905
    .local v3, is:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 1906
    .local v4, isr:Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 1909
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v9, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    .line 1910
    .local v8, process:Ljava/lang/Process;
    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1911
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    .line 1912
    .end local v4           #isr:Ljava/io/InputStreamReader;
    .local v5, isr:Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b

    .line 1915
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, line:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 1916
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1921
    .end local v6           #line:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v4, v5

    .line 1922
    .end local v5           #isr:Ljava/io/InputStreamReader;
    .end local v8           #process:Ljava/lang/Process;
    .local v2, e:Ljava/lang/Exception;
    .restart local v4       #isr:Ljava/io/InputStreamReader;
    :goto_1
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error getting i/o stream. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1924
    if-eqz v0, :cond_0

    .line 1926
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1931
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 1933
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 1938
    :cond_1
    :goto_3
    if-eqz v3, :cond_2

    .line 1940
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 1947
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    :goto_4
    return-object v7

    .line 1924
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #isr:Ljava/io/InputStreamReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #isr:Ljava/io/InputStreamReader;
    .restart local v6       #line:Ljava/lang/String;
    .restart local v8       #process:Ljava/lang/Process;
    :cond_3
    if-eqz v1, :cond_4

    .line 1926
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 1931
    :cond_4
    :goto_5
    if-eqz v5, :cond_5

    .line 1933
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 1938
    :cond_5
    :goto_6
    if-eqz v3, :cond_6

    .line 1940
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    :cond_6
    :goto_7
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v4, v5

    .line 1945
    .end local v5           #isr:Ljava/io/InputStreamReader;
    .restart local v4       #isr:Ljava/io/InputStreamReader;
    goto :goto_4

    .line 1924
    .end local v6           #line:Ljava/lang/String;
    .end local v8           #process:Ljava/lang/Process;
    :catchall_0
    move-exception v10

    :goto_8
    if-eqz v0, :cond_7

    .line 1926
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 1931
    :cond_7
    :goto_9
    if-eqz v4, :cond_8

    .line 1933
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 1938
    :cond_8
    :goto_a
    if-eqz v3, :cond_9

    .line 1940
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 1924
    :cond_9
    :goto_b
    throw v10

    .line 1927
    :catch_1
    move-exception v11

    goto :goto_9

    .line 1934
    :catch_2
    move-exception v11

    goto :goto_a

    .line 1941
    :catch_3
    move-exception v11

    goto :goto_b

    .line 1927
    .restart local v2       #e:Ljava/lang/Exception;
    :catch_4
    move-exception v10

    goto :goto_2

    .line 1934
    :catch_5
    move-exception v10

    goto :goto_3

    .line 1941
    :catch_6
    move-exception v10

    goto :goto_4

    .line 1927
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #isr:Ljava/io/InputStreamReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #isr:Ljava/io/InputStreamReader;
    .restart local v6       #line:Ljava/lang/String;
    .restart local v8       #process:Ljava/lang/Process;
    :catch_7
    move-exception v10

    goto :goto_5

    .line 1934
    :catch_8
    move-exception v10

    goto :goto_6

    .line 1941
    :catch_9
    move-exception v10

    goto :goto_7

    .line 1924
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v6           #line:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5           #isr:Ljava/io/InputStreamReader;
    .restart local v4       #isr:Ljava/io/InputStreamReader;
    goto :goto_8

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #isr:Ljava/io/InputStreamReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #isr:Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5           #isr:Ljava/io/InputStreamReader;
    .restart local v4       #isr:Ljava/io/InputStreamReader;
    goto :goto_8

    .line 1921
    .end local v8           #process:Ljava/lang/Process;
    :catch_a
    move-exception v2

    goto :goto_1

    .end local v4           #isr:Ljava/io/InputStreamReader;
    .restart local v5       #isr:Ljava/io/InputStreamReader;
    .restart local v8       #process:Ljava/lang/Process;
    :catch_b
    move-exception v2

    move-object v4, v5

    .end local v5           #isr:Ljava/io/InputStreamReader;
    .restart local v4       #isr:Ljava/io/InputStreamReader;
    goto :goto_1
.end method

.method private hasDefaultRouteInfo(Ljava/lang/String;)Z
    .locals 10
    .parameter "iface"

    .prologue
    .line 1500
    iget-object v8, p0, Lcom/android/internal/telephony/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;

    if-nez v8, :cond_0

    .line 1501
    const-string v8, "network_management"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1502
    .local v1, b:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;

    .line 1506
    .end local v1           #b:Landroid/os/IBinder;
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v8, p1}, Landroid/os/INetworkManagementService;->getRoutes(Ljava/lang/String;)[Landroid/net/RouteInfo;

    move-result-object v7

    .line 1508
    .local v7, routeInfos:[Landroid/net/RouteInfo;
    move-object v0, v7

    .local v0, arr$:[Landroid/net/RouteInfo;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v6, v0, v4

    .line 1510
    .local v6, ri:Landroid/net/RouteInfo;
    invoke-virtual {v6}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 1512
    .local v2, dstAddr:Ljava/net/InetAddress;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasDefaultRouteInfo iface: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,dstAddr: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1515
    const-string v8, "0.0.0.0"

    invoke-static {v8}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "::"

    invoke-static {v8}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_2

    .line 1517
    :cond_1
    const/4 v8, 0x1

    .line 1524
    .end local v0           #arr$:[Landroid/net/RouteInfo;
    .end local v2           #dstAddr:Ljava/net/InetAddress;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #ri:Landroid/net/RouteInfo;
    .end local v7           #routeInfos:[Landroid/net/RouteInfo;
    :goto_1
    return v8

    .line 1508
    .restart local v0       #arr$:[Landroid/net/RouteInfo;
    .restart local v2       #dstAddr:Ljava/net/InetAddress;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #ri:Landroid/net/RouteInfo;
    .restart local v7       #routeInfos:[Landroid/net/RouteInfo;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1520
    .end local v0           #arr$:[Landroid/net/RouteInfo;
    .end local v2           #dstAddr:Ljava/net/InetAddress;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #ri:Landroid/net/RouteInfo;
    .end local v7           #routeInfos:[Landroid/net/RouteInfo;
    :catch_0
    move-exception v3

    .line 1521
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "fail to get routeInfo."

    invoke-static {v8}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1523
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasDefaultRouteInfo iface: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , return false "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1524
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private isActive(Ljava/lang/String;)Z
    .locals 5
    .parameter "iface"

    .prologue
    const/4 v2, 0x0

    .line 1529
    const/4 v1, 0x0

    .line 1530
    .local v1, netInterface:Ljava/net/NetworkInterface;
    if-nez p1, :cond_0

    .line 1532
    const-string v3, "iface is null"

    invoke-static {v3}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1548
    :goto_0
    return v2

    .line 1537
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 1538
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iface ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is Active"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1541
    const/4 v2, 0x1

    goto :goto_0

    .line 1543
    :catch_0
    move-exception v0

    .line 1544
    .local v0, ex:Ljava/net/SocketException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not obtain network interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1547
    .end local v0           #ex:Ljava/net/SocketException;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iface ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is not Active"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isDataStallAlarmNeeded()Z
    .locals 4

    .prologue
    .line 458
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 459
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;

    .line 460
    .local v0, conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    iget-object v2, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    sget-object v3, Lcom/android/internal/telephony/LGDataRecovery$LinkState;->LINKUP:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->FState:Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;

    sget-object v3, Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;->CONNECTED:Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;

    if-ne v2, v3, :cond_0

    .line 461
    const-string v2, "There is at least one connInfo connected."

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 462
    const/4 v2, 0x1

    .line 466
    .end local v0           #conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1850
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DataMonitoring] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    return-void
.end method

.method private static logF(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "msg"
    .parameter "fileName"

    .prologue
    .line 1855
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1856
    return-void
.end method

.method private static declared-synchronized logF(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter "msg"
    .parameter "fileName"
    .parameter "timestamp"

    .prologue
    .line 1859
    const-class v5, Lcom/android/internal/telephony/LGDataRecovery;

    monitor-enter v5

    const/4 v1, 0x0

    .line 1863
    .local v1, fh:Ljava/util/logging/FileHandler;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/data/com.android.phone/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1866
    .local v3, name:Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/util/logging/FileHandler;

    const v4, 0x1e8480

    const/4 v6, 0x4

    const/4 v7, 0x1

    invoke-direct {v2, v3, v4, v6, v7}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1867
    .end local v1           #fh:Ljava/util/logging/FileHandler;
    .local v2, fh:Ljava/util/logging/FileHandler;
    :try_start_2
    new-instance v4, Lcom/android/internal/telephony/LGDataRecovery$DataLogFormatter;

    invoke-direct {v4, p2}, Lcom/android/internal/telephony/LGDataRecovery$DataLogFormatter;-><init>(Z)V

    invoke-virtual {v2, v4}, Ljava/util/logging/FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 1868
    new-instance v4, Ljava/util/logging/LogRecord;

    sget-object v6, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-direct {v4, v6, p0}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/logging/FileHandler;->publish(Ljava/util/logging/LogRecord;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1877
    if-eqz v2, :cond_0

    .line 1878
    :try_start_3
    invoke-virtual {v2}, Ljava/util/logging/FileHandler;->flush()V

    .line 1879
    invoke-virtual {v2}, Ljava/util/logging/FileHandler;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_0
    move-object v1, v2

    .line 1882
    .end local v2           #fh:Ljava/util/logging/FileHandler;
    .restart local v1       #fh:Ljava/util/logging/FileHandler;
    :cond_1
    :goto_0
    monitor-exit v5

    return-void

    .line 1870
    :catch_0
    move-exception v0

    .line 1871
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_4
    const-string v4, "GSM"

    const-string v6, "[DataMonitoring] Can not open log file."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1877
    if-eqz v1, :cond_1

    .line 1878
    :try_start_5
    invoke-virtual {v1}, Ljava/util/logging/FileHandler;->flush()V

    .line 1879
    invoke-virtual {v1}, Ljava/util/logging/FileHandler;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1859
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #name:Ljava/lang/String;
    :catchall_0
    move-exception v4

    :goto_2
    monitor-exit v5

    throw v4

    .line 1877
    .restart local v3       #name:Ljava/lang/String;
    :catchall_1
    move-exception v4

    :goto_3
    if-eqz v1, :cond_2

    .line 1878
    :try_start_6
    invoke-virtual {v1}, Ljava/util/logging/FileHandler;->flush()V

    .line 1879
    invoke-virtual {v1}, Ljava/util/logging/FileHandler;->close()V

    .line 1877
    :cond_2
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v1           #fh:Ljava/util/logging/FileHandler;
    .restart local v2       #fh:Ljava/util/logging/FileHandler;
    :catchall_2
    move-exception v4

    move-object v1, v2

    .end local v2           #fh:Ljava/util/logging/FileHandler;
    .restart local v1       #fh:Ljava/util/logging/FileHandler;
    goto :goto_3

    .line 1870
    .end local v1           #fh:Ljava/util/logging/FileHandler;
    .restart local v2       #fh:Ljava/util/logging/FileHandler;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #fh:Ljava/util/logging/FileHandler;
    .restart local v1       #fh:Ljava/util/logging/FileHandler;
    goto :goto_1

    .line 1859
    .end local v1           #fh:Ljava/util/logging/FileHandler;
    .restart local v2       #fh:Ljava/util/logging/FileHandler;
    :catchall_3
    move-exception v4

    move-object v1, v2

    .end local v2           #fh:Ljava/util/logging/FileHandler;
    .restart local v1       #fh:Ljava/util/logging/FileHandler;
    goto :goto_2
.end method

.method private loggingRouteInfos()V
    .locals 6

    .prologue
    .line 1886
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1888
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGDataRecovery;->getAllRouteInfos()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGDataRecovery$RouteInfoWithIface;

    .line 1889
    .local v1, ri:Lcom/android/internal/telephony/LGDataRecovery$RouteInfoWithIface;
    invoke-virtual {v1}, Lcom/android/internal/telephony/LGDataRecovery$RouteInfoWithIface;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1892
    .end local v1           #ri:Lcom/android/internal/telephony/LGDataRecovery$RouteInfoWithIface;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1893
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1894
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "netinfo.log"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1896
    :cond_1
    return-void
.end method

.method private onConnCompletedCheckAlarmExpired(Ljava/lang/String;)V
    .locals 7
    .parameter "iface"

    .prologue
    .line 500
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGDataRecovery;->findConnInfowithIface(Ljava/lang/String;)Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;

    move-result-object v0

    .line 501
    .local v0, conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConnCompletedCheckAlarmExpired for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 502
    if-nez v0, :cond_0

    .line 503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "there is no Conn for ConnCompleteCheck for this iface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WARNING"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 543
    :goto_0
    return-void

    .line 506
    :cond_0
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->mConnCheckAlarmIntent:Landroid/app/PendingIntent;

    .line 507
    iget-object v3, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    sget-object v4, Lcom/android/internal/telephony/LGDataRecovery$LinkState;->LINKDOWN:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    if-ne v3, v4, :cond_1

    .line 508
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "there is no need to do ConnCompleteCheck for this iface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "WARNING"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 511
    :cond_1
    iget-object v3, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->FState:Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;

    sget-object v4, Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;->DISCONNECTED:Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;

    if-ne v3, v4, :cond_5

    .line 512
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " didn\'t receive connected event from telephony framework"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 513
    iget-object v3, p0, Lcom/android/internal/telephony/LGDataRecovery;->modemVendor:Ljava/lang/String;

    const-string v4, "QCT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 514
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGDataRecovery;->updateTrafficStatforAP(Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;)V

    .line 515
    iget-object v3, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->CurrStatAP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v3, v3, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->txCnt:J

    iget-object v5, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->PrevStatAP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v5, v5, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->txCnt:J

    sub-long v1, v3, v5

    .line 516
    .local v1, txincrease:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConnCompletedCheckAlarmExpired txincrease = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 517
    iget v3, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->sentSinceLastRecv:I

    if-lez v3, :cond_2

    .line 518
    const-string v3, "IPC data path block is suspicious : ONLY_AP_TX_INCREASE_ON_DHCP"

    invoke-static {v3}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 519
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STALL_SYPTOM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :: CONN COMPLETE FAIL, ONLY_AP_TX_INCREASE_ON_DHCP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "datastallinfo.log"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 523
    :cond_2
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_3

    .line 524
    const-string v3, "IPC data path block is suspicious : NO_AP_TX_INCREASE_ON_DHCP"

    invoke-static {v3}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 525
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STALL_SYPTOM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :: CONN COMPLETE FAIL, NO_AP_TX_INCREASE_ON_DHCP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "datastallinfo.log"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 530
    :cond_3
    const-string v3, "QCRIL problem is suspicions"

    invoke-static {v3}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STALL_SYPTOM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :: CONN COMPLETE FAIL, QCRIL error suspicious"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "datastallinfo.log"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 536
    .end local v1           #txincrease:J
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "does not complete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 537
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STALL_SYPTOM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :: CONN COMPLETE FAIL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "datastallinfo.log"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 541
    :cond_5
    const-string v3, "FState is CONNECTED but ConnCompletedCheckAlarmExpired WARNING"

    invoke-static {v3}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onDataStallAlarmExpired(I)V
    .locals 4
    .parameter "tag"

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGDataRecovery;->dumpNetInfo()V

    .line 471
    iget v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mDataStallAlarmTag:I

    if-eq v2, p1, :cond_0

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLGDataStallAlarm: ignore, tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/LGDataRecovery;->mDataStallAlarmTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 497
    :goto_0
    return-void

    .line 477
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 478
    invoke-direct {p0}, Lcom/android/internal/telephony/LGDataRecovery;->isDataStallAlarmNeeded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 479
    const-string v2, "onLGDataStallAlarm: There is no Conn that needs traffic check."

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 483
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mVoicecall:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 486
    const-string v2, "onLGDataStallAlarm: Do not stall check during 2G voice call"

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;

    .line 491
    .local v0, conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NETCONNINFO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 494
    .end local v0           #conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/LGDataRecovery;->doStallCheckwithPktCnt()V

    .line 496
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LGDataRecovery;->startDataStallAlarm(Z)V

    goto :goto_0
.end method

.method private onDataStateConnected(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 555
    const-string v5, "onDataStateConnected"

    invoke-static {v5}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 557
    const-string v5, "apn"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, apnName:Ljava/lang/String;
    const-string v5, "apnType"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, apnType:Ljava/lang/String;
    const-string v5, "iface"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 564
    .local v3, iface:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 565
    const-string v5, "iface is null ignore this connected intent"

    invoke-static {v5}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/LGDataRecovery;->findConnInfowithIface(Ljava/lang/String;)Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;

    move-result-object v2

    .line 570
    .local v2, conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/LGDataRecovery;->isActive(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 571
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iface ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is not linked up data block"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 572
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STALL_SYPTOM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :: CONNECTED_BUT_IFACE_LINK_DOWN"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "datastallinfo.log"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    if-eqz v2, :cond_0

    .line 574
    sget-object v5, Lcom/android/internal/telephony/LGDataRecovery$LinkState;->LINKDOWN:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    iput-object v5, v2, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    goto :goto_0

    .line 580
    :cond_2
    if-nez v2, :cond_3

    .line 581
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t find conninfo with this active iface ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") create NewConnInfo WARNING"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 582
    new-instance v4, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;-><init>(Lcom/android/internal/telephony/LGDataRecovery;)V

    .line 583
    .local v4, newConn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    iput-object v3, v4, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    .line 584
    sget-object v5, Lcom/android/internal/telephony/LGDataRecovery$LinkState;->LINKUP:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    iput-object v5, v4, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    .line 585
    iget-object v5, p0, Lcom/android/internal/telephony/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    move-object v2, v4

    .line 589
    .end local v4           #newConn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    :cond_3
    if-eqz v2, :cond_6

    iget-object v5, v2, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->FState:Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;

    sget-object v6, Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;->DISCONNECTED:Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;

    if-ne v5, v6, :cond_6

    .line 590
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This conn("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") receives first connected notification"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 591
    iput-object v0, v2, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    .line 592
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LGDataRecovery;->stopConnectionCompleteCheckTimer(Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;)V

    .line 593
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LGDataRecovery;->updateTrafficStatforAP(Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;)V

    .line 594
    iget-boolean v5, p0, Lcom/android/internal/telephony/LGDataRecovery;->supportCPtrafficstat:Z

    if-eqz v5, :cond_4

    .line 595
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LGDataRecovery;->updateTrafficStatforCP(Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;)V

    .line 597
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/LGDataRecovery;->isDataStallAlarmNeeded()Z

    move-result v5

    if-nez v5, :cond_5

    .line 598
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LGDataRecovery;->startDataStallAlarm(Z)V

    .line 600
    :cond_5
    sget-object v5, Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;->CONNECTED:Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;

    iput-object v5, v2, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->FState:Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;

    .line 603
    :cond_6
    if-eqz v2, :cond_0

    iget-object v5, v2, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 604
    iget-object v5, v2, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private onDataStateDisconnected(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 609
    const-string v4, "apn"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, apnName:Ljava/lang/String;
    const-string v4, "apnType"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 611
    .local v1, apnType:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDataStateDisconnected for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 612
    iget-object v4, p0, Lcom/android/internal/telephony/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;

    .line 613
    .local v2, conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    iget-object v4, v2, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 614
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "conn for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has apn type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ::remove it"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 615
    iget-object v4, v2, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 616
    iget-object v4, v2, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 617
    const-string v4, " This conn has no apntype which is connected update FState to DISCONNECTED"

    invoke-static {v4}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 618
    sget-object v4, Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;->DISCONNECTED:Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;

    iput-object v4, v2, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->FState:Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;

    .line 619
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    goto :goto_0

    .line 623
    .end local v2           #conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/LGDataRecovery;->isDataStallAlarmNeeded()Z

    move-result v4

    if-nez v4, :cond_2

    .line 624
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGDataRecovery;->stopDataStallAlarm()V

    .line 626
    :cond_2
    return-void
.end method

.method private onDnsFailObserved(Lcom/android/internal/telephony/LGDataRecovery$DnsFailInfo;)V
    .locals 21
    .parameter "result"

    .prologue
    .line 356
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGDataRecovery;->dumpDnsFail(Lcom/android/internal/telephony/LGDataRecovery$DnsFailInfo;)V

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/LGDataRecovery;->findIfaceforNonPidDns()Ljava/lang/String;

    move-result-object v4

    .line 358
    .local v4, iface:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onDnsFailObserved on iface ::"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " hostname:: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/LGDataRecovery$DnsFailInfo;->hostName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 359
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/LGDataRecovery;->mIsWifiConnected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 360
    if-nez v4, :cond_1

    .line 361
    const-string v17, "onDnsFailObserved Wi-Fi enabled but no route info for DNS"

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    const-string v17, "wlan0"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 364
    const-string v17, "onDnsFailObserved DNS fail on Wi-Fi connection"

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 366
    :cond_2
    const-string v17, "onDnsFailObserved Wi-Fi enabled but wlan0 does not have route info for DNS"

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_3
    if-eqz v4, :cond_4

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 370
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/LGDataRecovery;->findDefaultConnInfo()Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;

    move-result-object v3

    .line 371
    .local v3, conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    if-nez v3, :cond_6

    .line 372
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/LGDataRecovery;->mNumOfDnsFailNoConn:I

    move/from16 v17, v0

    if-nez v17, :cond_5

    .line 373
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/LGDataRecovery;->mTime1stDnsfailNoConn:J

    .line 374
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onDnsFailObserved First DNS fail No Conn::"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/LGDataRecovery;->mTime1stDnsfailNoConn:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 380
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/LGDataRecovery;->mNumOfDnsFailNoConn:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/LGDataRecovery;->mNumOfDnsFailNoConn:I

    goto :goto_0

    .line 376
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 377
    .local v13, timeCurrDNSFail:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/LGDataRecovery;->mTime1stDnsfailNoConn:J

    move-wide/from16 v17, v0

    sub-long v17, v13, v17

    const-wide/16 v19, 0x3e8

    div-long v11, v17, v19

    .line 378
    .local v11, time:J
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onDnsFailObserved DNS fail time during no Conn::"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "sec"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 382
    .end local v11           #time:J
    .end local v13           #timeCurrDNSFail:J
    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "STALL_SYPTOM "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v3, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " / "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v3, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " :: NO_ROUTE_INFO"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "datastallinfo.log"

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 384
    .end local v3           #conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    :cond_7
    const-string v17, "rmnet"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 385
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onDnsFailObserved iface "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " has route for default DNS"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 386
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/LGDataRecovery;->mNumOfDnsFailNoConn:I

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGDataRecovery;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    move-object/from16 v17, v0

    if-nez v17, :cond_8

    .line 388
    const-string v17, "onDnsFailObserved stall alarm is not working ignore DNS fail report"

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 389
    const-string v17, "     stall alarm is not working ignore DNS fail report"

    const-string v18, "dnsfailhistory.log"

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 392
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/LGDataRecovery;->findConnInfowithIface(Ljava/lang/String;)Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;

    move-result-object v3

    .line 393
    .restart local v3       #conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    if-nez v3, :cond_9

    .line 394
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "can\'t find conninfo with this active iface ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ") create NewConnInfo WARNING"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 395
    new-instance v9, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;-><init>(Lcom/android/internal/telephony/LGDataRecovery;)V

    .line 396
    .local v9, newConn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    iput-object v4, v9, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    .line 397
    sget-object v17, Lcom/android/internal/telephony/LGDataRecovery$LinkState;->LINKUP:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    move-object v3, v9

    .line 401
    .end local v9           #newConn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    :cond_9
    if-eqz v3, :cond_10

    iget-object v0, v3, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    iget-object v0, v3, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const-string v18, "default"

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 402
    iget-object v0, v3, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LGDataRecovery;->hasDefaultRouteInfo(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 403
    const-string v17, "Default connection doesn\'t have Default Route"

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 404
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "STALL_SYPTOM "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v3, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " / "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v3, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " :: NO_ROUTE_INFO"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "datastallinfo.log"

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "     connection("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v3, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ") for Default DNS doesn\'t have Default Route"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "dnsfailhistory.log"

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/LGDataRecovery;->getAPTrafficStat(Ljava/lang/String;)Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    move-result-object v10

    .line 410
    .local v10, stat:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;
    if-nez v10, :cond_b

    .line 411
    const-string v17, "onDnsFailObserved()... Failure to get getAPTrafficStat()"

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 415
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGDataRecovery;->lastStatForDnsFail:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    move-object/from16 v17, v0

    if-nez v17, :cond_c

    .line 416
    iget-object v0, v3, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->CurrStatAP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/LGDataRecovery;->lastStatForDnsFail:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    .line 418
    :cond_c
    iget-wide v0, v10, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->systime:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGDataRecovery;->lastStatForDnsFail:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->systime:J

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    const-wide/16 v19, 0x3e8

    div-long v15, v17, v19

    .line 419
    .local v15, timefromlastDnsFail:J
    const-wide/16 v17, 0x6

    cmp-long v17, v15, v17

    if-lez v17, :cond_0

    .line 420
    iget-wide v0, v10, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->txCnt:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGDataRecovery;->lastStatForDnsFail:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->txCnt:J

    move-wide/from16 v19, v0

    sub-long v7, v17, v19

    .line 421
    .local v7, increasedTxcnt:J
    iget-wide v0, v10, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->rxCnt:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGDataRecovery;->lastStatForDnsFail:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->rxCnt:J

    move-wide/from16 v19, v0

    sub-long v5, v17, v19

    .line 422
    .local v5, increasedRxcnt:J
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "increasedTxcnt : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "   increasedRxcnt : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 423
    const-wide/16 v17, 0x1

    cmp-long v17, v7, v17

    if-gez v17, :cond_e

    .line 424
    const-string v17, "onDnsFailObserved no Tx increase & route info exist"

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 425
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "STALL_SYPTOM "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v3, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " / "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v3, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " :: NO_TX_INCREASE_ON_DNSFAIL"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "datastallinfo.log"

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v17, "     NO_TX_INCREASE from LAST DNS FAIL"

    const-string v18, "dnsfailhistory.log"

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/LGDataRecovery;->dumpIptableInfo()V

    .line 447
    :cond_d
    :goto_2
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/telephony/LGDataRecovery;->lastStatForDnsFail:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    goto/16 :goto_0

    .line 432
    :cond_e
    const-wide/16 v17, 0x0

    cmp-long v17, v7, v17

    if-lez v17, :cond_f

    const-wide/16 v17, 0x1

    cmp-long v17, v5, v17

    if-gez v17, :cond_f

    .line 433
    const-string v17, "onDnsFailObserved only Tx increase & route info exist"

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 434
    const-string v17, "     ONLY TX_INCREASE from LAST DNS FAIL"

    const-string v18, "dnsfailhistory.log"

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-wide v0, v10, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->systime:J

    move-wide/from16 v17, v0

    iget-object v0, v3, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->CurrStatAP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->systime:J

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    const-wide/16 v19, 0x3e8

    div-long v11, v17, v19

    .line 437
    .restart local v11       #time:J
    const-wide/16 v17, 0x3c

    cmp-long v17, v11, v17

    if-lez v17, :cond_d

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGDataRecovery;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/LGDataRecovery;->stopDataStallAlarm()V

    .line 440
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/LGDataRecovery;->mDataStallAlarmTag:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LGDataRecovery;->onDataStallAlarmExpired(I)V

    goto :goto_2

    .line 443
    .end local v11           #time:J
    :cond_f
    const-wide/16 v17, 0x0

    cmp-long v17, v7, v17

    if-lez v17, :cond_d

    const-wide/16 v17, 0x0

    cmp-long v17, v5, v17

    if-lez v17, :cond_d

    .line 444
    const-string v17, "onDnsFailObserved both Tx Rx increase ignore DNS fail report"

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 445
    const-string v17, "     TX_RX_INCREASE from LAST DNS FAIL "

    const-string v18, "dnsfailhistory.log"

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 450
    .end local v5           #increasedRxcnt:J
    .end local v7           #increasedTxcnt:J
    .end local v10           #stat:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;
    .end local v15           #timefromlastDnsFail:J
    :cond_10
    const-string v17, "onDnsFailObserved Non Default connection has main DNS route info Don\'t care this case"

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onScreenOFF()V
    .locals 1

    .prologue
    .line 630
    const-string v0, "onScreenOFF"

    invoke-static {v0}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 631
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGDataRecovery;->reStartDataStallAlarm()V

    .line 633
    return-void
.end method

.method private onScreenON()V
    .locals 1

    .prologue
    .line 637
    const-string v0, "onScreenON"

    invoke-static {v0}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGDataRecovery;->reStartDataStallAlarm()V

    .line 640
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .prologue
    .line 905
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mCpResponseHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 906
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mCpResponseHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 909
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/LGDataRecovery;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 910
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 912
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 913
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 916
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 918
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 919
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    .line 920
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V

    .line 921
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V

    .line 924
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;

    if-nez v2, :cond_3

    .line 925
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 926
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;

    .line 930
    .end local v0           #b:Landroid/os/IBinder;
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mNetdObserverEx:Lcom/android/internal/telephony/LGDataRecovery$NetdObserverEx;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/internal/telephony/LGDataRecovery;->mNetdObserverEx:Lcom/android/internal/telephony/LGDataRecovery$NetdObserverEx;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->unregisterObserverEx(Landroid/net/INetworkManagementEventObserverEx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    :cond_4
    :goto_0
    const-string v2, "LGDataRecovery has disposed."

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 936
    return-void

    .line 931
    :catch_0
    move-exception v1

    .line 932
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not unregister InterfaceObserver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected dumpDnsFail(Lcom/android/internal/telephony/LGDataRecovery$DnsFailInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 1700
    const-string v1, "net.dns1"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1702
    .local v0, dnsAddr:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hostname: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/LGDataRecovery$DnsFailInfo;->hostName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DNS server addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " iface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/LGDataRecovery;->findIfaceforNonPidDns()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isWifiConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mIsWifiConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dnsfailhistory.log"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    return-void
.end method

.method protected dumpIptableInfo()V
    .locals 0

    .prologue
    .line 1776
    return-void
.end method

.method protected dumpNetInfo()V
    .locals 1

    .prologue
    .line 1708
    new-instance v0, Lcom/android/internal/telephony/LGDataRecovery$ThreadNetinfo;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/LGDataRecovery$ThreadNetinfo;-><init>(Lcom/android/internal/telephony/LGDataRecovery;)V

    .line 1709
    .local v0, thread:Lcom/android/internal/telephony/LGDataRecovery$ThreadNetinfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/LGDataRecovery$ThreadNetinfo;->start()V

    .line 1747
    return-void
.end method

.method public errorCodeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 1552
    const/4 v0, 0x0

    .line 1554
    .local v0, result:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1612
    const-string v0, "unknown error code."

    .line 1616
    :goto_0
    return-object v0

    .line 1556
    :pswitch_0
    const-string v0, "address family for hostname not supported."

    .line 1557
    goto :goto_0

    .line 1560
    :pswitch_1
    const-string v0, "temporary failure in name resolution."

    .line 1561
    goto :goto_0

    .line 1564
    :pswitch_2
    const-string v0, "invalid value for ai_flags."

    .line 1565
    goto :goto_0

    .line 1568
    :pswitch_3
    const-string v0, "non-recoverable failure in name resolution."

    .line 1569
    goto :goto_0

    .line 1572
    :pswitch_4
    const-string v0, "ai_family not supported."

    .line 1573
    goto :goto_0

    .line 1576
    :pswitch_5
    const-string v0, "memory allocation failure."

    .line 1577
    goto :goto_0

    .line 1580
    :pswitch_6
    const-string v0, "no address associated with hostname."

    .line 1581
    goto :goto_0

    .line 1584
    :pswitch_7
    const-string v0, "hostname nor servname provided, or not known."

    .line 1585
    goto :goto_0

    .line 1588
    :pswitch_8
    const-string v0, "servname not supported for ai_socktype."

    .line 1589
    goto :goto_0

    .line 1592
    :pswitch_9
    const-string v0, "ai_socktype not supported."

    .line 1593
    goto :goto_0

    .line 1596
    :pswitch_a
    const-string v0, "system error returned in errno."

    .line 1597
    goto :goto_0

    .line 1600
    :pswitch_b
    const-string v0, "invalid value for hints."

    .line 1601
    goto :goto_0

    .line 1604
    :pswitch_c
    const-string v0, "resolved protocol is unknown."

    .line 1605
    goto :goto_0

    .line 1608
    :pswitch_d
    const-string v0, "argument buffer overflow."

    .line 1609
    goto :goto_0

    .line 1554
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public findConnInfowithIface(Ljava/lang/String;)Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    .locals 4
    .parameter "iface"

    .prologue
    .line 1111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findConnInfowithIface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1112
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1113
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;

    .line 1114
    .local v0, conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    iget-object v2, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " find conn iface = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1122
    .end local v0           #conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return-object v0

    .line 1119
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    const-string v2, "find nothing"

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1121
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    const-string v2, "mConnectionInfos has no conn List"

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1122
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findDefaultConnInfo()Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    .locals 4

    .prologue
    .line 1126
    const-string v2, "findDefaultConnInfo"

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1127
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1128
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;

    .line 1129
    .local v0, conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    iget-object v2, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " find default conn  iface :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " APN:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1138
    .end local v0           #conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return-object v0

    .line 1134
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    const-string v2, "find nothing"

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1138
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1136
    :cond_2
    const-string v2, "mConnectionInfos has no conn List"

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public findIfaceforNonPidDns()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1475
    const-string v4, "net.dns1"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1476
    .local v1, dnsAddr:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1478
    .local v0, defaultIface:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1479
    const-string v4, ""

    .line 1494
    :goto_0
    return-object v4

    .line 1482
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGDataRecovery;->getAllRouteInfos()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/LGDataRecovery$RouteInfoWithIface;

    .line 1483
    .local v3, ri:Lcom/android/internal/telephony/LGDataRecovery$RouteInfoWithIface;
    iget-object v4, v3, Lcom/android/internal/telephony/LGDataRecovery$RouteInfoWithIface;->dstAddr:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-static {v1}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1484
    iget-object v4, v3, Lcom/android/internal/telephony/LGDataRecovery$RouteInfoWithIface;->iface:Ljava/lang/String;

    goto :goto_0

    .line 1485
    :cond_2
    iget-object v4, v3, Lcom/android/internal/telephony/LGDataRecovery$RouteInfoWithIface;->dstAddr:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const-string v5, "0.0.0.0"

    invoke-static {v5}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    iget-object v4, v3, Lcom/android/internal/telephony/LGDataRecovery$RouteInfoWithIface;->dstAddr:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const-string v5, "::"

    invoke-static {v5}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v0, :cond_1

    .line 1487
    :cond_4
    iget-object v0, v3, Lcom/android/internal/telephony/LGDataRecovery$RouteInfoWithIface;->iface:Ljava/lang/String;

    goto :goto_1

    .line 1491
    .end local v3           #ri:Lcom/android/internal/telephony/LGDataRecovery$RouteInfoWithIface;
    :cond_5
    if-eqz v0, :cond_6

    move-object v4, v0

    .line 1492
    goto :goto_0

    .line 1494
    :cond_6
    const-string v4, ""

    goto :goto_0
.end method

.method public getAPTrafficStat(Ljava/lang/String;)Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;
    .locals 7
    .parameter "iface"

    .prologue
    const/4 v2, 0x0

    .line 1202
    new-instance v1, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;-><init>(Lcom/android/internal/telephony/LGDataRecovery;)V

    .line 1206
    .local v1, resultCnt:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/LGDataRecovery;->sStatsService:Landroid/net/INetworkStatsService;

    if-nez v3, :cond_0

    .line 1207
    const-string v3, "netstats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v3

    sput-object v3, Lcom/android/internal/telephony/LGDataRecovery;->sStatsService:Landroid/net/INetworkStatsService;

    .line 1211
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/LGDataRecovery;->sStatsService:Landroid/net/INetworkStatsService;

    if-eqz v3, :cond_2

    .line 1212
    if-eqz p1, :cond_1

    .line 1213
    iget-wide v3, v1, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->txCnt:J

    invoke-static {p1}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->txCnt:J

    .line 1214
    iget-wide v3, v1, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->rxCnt:J

    invoke-static {p1}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->rxCnt:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1227
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->systime:J

    .line 1228
    .end local v1           #resultCnt:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;
    :goto_0
    return-object v1

    .line 1218
    .restart local v1       #resultCnt:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;
    :cond_2
    :try_start_1
    const-string v3, "Stats Service is null"

    invoke-static {v3}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    .line 1219
    goto :goto_0

    .line 1222
    :catch_0
    move-exception v0

    .line 1224
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "fail to get Stats Service"

    invoke-static {v3}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    move-object v1, v2

    .line 1225
    goto :goto_0
.end method

.method public getAllRouteInfos()Ljava/util/ArrayList;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/LGDataRecovery$RouteInfoWithIface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1390
    const-string v24, "/proc/net/route"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LGDataRecovery;->getFileSystemInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 1391
    .local v15, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1393
    .local v22, routes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/LGDataRecovery$RouteInfoWithIface;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_0

    .line 1394
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1401
    :cond_0
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1402
    .local v23, s:Ljava/lang/String;
    const-string v24, "\t"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1404
    .local v7, fields:[Ljava/lang/String;
    array-length v0, v7

    move/from16 v24, v0

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_1

    .line 1405
    const/16 v24, 0x0

    aget-object v13, v7, v24

    .line 1406
    .local v13, iface:Ljava/lang/String;
    const/16 v24, 0x1

    aget-object v4, v7, v24

    .line 1407
    .local v4, dest:Ljava/lang/String;
    const/16 v24, 0x2

    aget-object v9, v7, v24

    .line 1408
    .local v9, gate:Ljava/lang/String;
    const/16 v24, 0x3

    aget-object v8, v7, v24

    .line 1409
    .local v8, flags:Ljava/lang/String;
    const/16 v24, 0x7

    aget-object v16, v7, v24

    .line 1411
    .local v16, mask:Ljava/lang/String;
    const/16 v24, 0x8

    :try_start_0
    aget-object v24, v7, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 1413
    .local v17, mtu:I
    const/16 v24, 0x10

    move/from16 v0, v24

    invoke-static {v4, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v5

    .line 1415
    .local v5, destAddr:Ljava/net/InetAddress;
    const/16 v24, 0x10

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/net/NetworkUtils;->netmaskIntToPrefixLength(I)I

    move-result v19

    .line 1418
    .local v19, prefixLength:I
    new-instance v14, Landroid/net/LinkAddress;

    move/from16 v0, v19

    invoke-direct {v14, v5, v0}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 1421
    .local v14, linkAddress:Landroid/net/LinkAddress;
    const/16 v24, 0x10

    move/from16 v0, v24

    invoke-static {v9, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v11

    .line 1424
    .local v11, gatewayAddr:Ljava/net/InetAddress;
    new-instance v20, Landroid/net/RouteInfo;

    move-object/from16 v0, v20

    invoke-direct {v0, v14, v11}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 1425
    .local v20, route:Landroid/net/RouteInfo;
    new-instance v21, Lcom/android/internal/telephony/LGDataRecovery$RouteInfoWithIface;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move/from16 v3, v17

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/android/internal/telephony/LGDataRecovery$RouteInfoWithIface;-><init>(Lcom/android/internal/telephony/LGDataRecovery;Ljava/lang/String;Landroid/net/RouteInfo;I)V

    .line 1427
    .local v21, routeWithIface:Lcom/android/internal/telephony/LGDataRecovery$RouteInfoWithIface;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1428
    .end local v5           #destAddr:Ljava/net/InetAddress;
    .end local v11           #gatewayAddr:Ljava/net/InetAddress;
    .end local v14           #linkAddress:Landroid/net/LinkAddress;
    .end local v17           #mtu:I
    .end local v19           #prefixLength:I
    .end local v20           #route:Landroid/net/RouteInfo;
    .end local v21           #routeWithIface:Lcom/android/internal/telephony/LGDataRecovery$RouteInfoWithIface;
    :catch_0
    move-exception v6

    .line 1429
    .local v6, e:Ljava/lang/Exception;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error parsing route "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1436
    .end local v4           #dest:Ljava/lang/String;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #fields:[Ljava/lang/String;
    .end local v8           #flags:Ljava/lang/String;
    .end local v9           #gate:Ljava/lang/String;
    .end local v13           #iface:Ljava/lang/String;
    .end local v16           #mask:Ljava/lang/String;
    .end local v23           #s:Ljava/lang/String;
    :cond_2
    const-string v24, "/proc/net/ipv6_route"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LGDataRecovery;->getFileSystemInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 1438
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1439
    .restart local v23       #s:Ljava/lang/String;
    const-string v24, "\\s+"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1440
    .restart local v7       #fields:[Ljava/lang/String;
    array-length v0, v7

    move/from16 v24, v0

    const/16 v25, 0x9

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_3

    .line 1441
    const/16 v24, 0x9

    aget-object v24, v7, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 1443
    .restart local v13       #iface:Ljava/lang/String;
    const/16 v24, 0x0

    aget-object v4, v7, v24

    .line 1444
    .restart local v4       #dest:Ljava/lang/String;
    const/16 v24, 0x1

    aget-object v18, v7, v24

    .line 1445
    .local v18, prefix:Ljava/lang/String;
    const/16 v24, 0x4

    aget-object v9, v7, v24

    .line 1449
    .restart local v9       #gate:Ljava/lang/String;
    const/16 v24, 0x10

    :try_start_1
    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v19

    .line 1453
    .restart local v19       #prefixLength:I
    invoke-static {v4}, Landroid/net/NetworkUtils;->hexToInet6Address(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 1454
    .restart local v5       #destAddr:Ljava/net/InetAddress;
    new-instance v14, Landroid/net/LinkAddress;

    move/from16 v0, v19

    invoke-direct {v14, v5, v0}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 1456
    .restart local v14       #linkAddress:Landroid/net/LinkAddress;
    invoke-static {v9}, Landroid/net/NetworkUtils;->hexToInet6Address(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    .line 1458
    .local v10, gateAddr:Ljava/net/InetAddress;
    new-instance v20, Landroid/net/RouteInfo;

    move-object/from16 v0, v20

    invoke-direct {v0, v14, v10}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 1459
    .restart local v20       #route:Landroid/net/RouteInfo;
    new-instance v21, Lcom/android/internal/telephony/LGDataRecovery$RouteInfoWithIface;

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move/from16 v3, v24

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/android/internal/telephony/LGDataRecovery$RouteInfoWithIface;-><init>(Lcom/android/internal/telephony/LGDataRecovery;Ljava/lang/String;Landroid/net/RouteInfo;I)V

    .line 1461
    .restart local v21       #routeWithIface:Lcom/android/internal/telephony/LGDataRecovery$RouteInfoWithIface;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1462
    .end local v5           #destAddr:Ljava/net/InetAddress;
    .end local v10           #gateAddr:Ljava/net/InetAddress;
    .end local v14           #linkAddress:Landroid/net/LinkAddress;
    .end local v19           #prefixLength:I
    .end local v20           #route:Landroid/net/RouteInfo;
    .end local v21           #routeWithIface:Lcom/android/internal/telephony/LGDataRecovery$RouteInfoWithIface;
    :catch_1
    move-exception v6

    .line 1463
    .restart local v6       #e:Ljava/lang/Exception;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error parsing route "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1470
    .end local v4           #dest:Ljava/lang/String;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #fields:[Ljava/lang/String;
    .end local v9           #gate:Ljava/lang/String;
    .end local v13           #iface:Ljava/lang/String;
    .end local v18           #prefix:Ljava/lang/String;
    .end local v23           #s:Ljava/lang/String;
    :cond_4
    return-object v22
.end method

.method public getCPTrafficStat(Ljava/lang/String;)Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;
    .locals 5
    .parameter "APN"

    .prologue
    const/4 v4, 0x0

    .line 1233
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1234
    const/4 v2, 0x0

    :try_start_1
    sput-boolean v2, Lcom/android/internal/telephony/LGDataRecovery;->mCpResponseFlag:Z

    .line 1236
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mCpResponseHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1238
    .local v1, msg:Landroid/os/Message;
    const v2, 0x42072

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1239
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v2}, Lcom/android/internal/telephony/LgeRIL;->getLgeRIL(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/LgeRIL;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v2}, Lcom/android/internal/telephony/LgeRIL;->getLgeRIL(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/LgeRIL;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/telephony/LgeRIL;->getModemPacketCount(Ljava/lang/String;Landroid/os/Message;)V

    .line 1240
    :cond_0
    const-string v2, "sent getModemPacketCount request"

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1242
    const-string v2, "wait for notify from EVENT_GET_MODEM_PACKET_COUNT_DONE event"

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1243
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 1244
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1249
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    sget-boolean v2, Lcom/android/internal/telephony/LGDataRecovery;->mCpResponseFlag:Z

    if-eqz v2, :cond_1

    .line 1251
    sget-object v2, Lcom/android/internal/telephony/LGDataRecovery;->mCP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    .line 1262
    :goto_1
    return-object v2

    .line 1244
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1245
    :catch_0
    move-exception v0

    .line 1246
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1253
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    sget v2, Lcom/android/internal/telephony/LGDataRecovery;->mCpResponseFailCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/telephony/LGDataRecovery;->mCpResponseFailCount:I

    .line 1254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeout to get modem packet count. cnt= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/LGDataRecovery;->mCpResponseFailCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1255
    sget v2, Lcom/android/internal/telephony/LGDataRecovery;->mCpResponseFailCount:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    .line 1259
    sput v4, Lcom/android/internal/telephony/LGDataRecovery;->mCpResponseFailCount:I

    .line 1262
    :cond_2
    new-instance v2, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;-><init>(Lcom/android/internal/telephony/LGDataRecovery;)V

    goto :goto_1
.end method

.method public getFileSystemInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1359
    const/4 v2, 0x0

    .line 1360
    .local v2, fstream:Ljava/io/FileInputStream;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1363
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1364
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .local v3, fstream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1365
    .local v4, in:Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1370
    .local v0, br:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, s:Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 1371
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1373
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v6           #s:Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 1375
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .local v1, ex:Ljava/io/IOException;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error getting i/o stream. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1377
    if-eqz v2, :cond_0

    .line 1379
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1385
    .end local v1           #ex:Ljava/io/IOException;
    :cond_0
    :goto_2
    return-object v5

    .line 1377
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v6       #s:Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    .line 1379
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_3
    move-object v2, v3

    .line 1384
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto :goto_2

    .line 1377
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v6           #s:Ljava/lang/String;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v2, :cond_3

    .line 1379
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1377
    :cond_3
    :goto_5
    throw v7

    .line 1380
    :catch_1
    move-exception v8

    goto :goto_5

    .restart local v1       #ex:Ljava/io/IOException;
    :catch_2
    move-exception v7

    goto :goto_2

    .end local v1           #ex:Ljava/io/IOException;
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v6       #s:Ljava/lang/String;
    :catch_3
    move-exception v7

    goto :goto_3

    .line 1377
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v6           #s:Ljava/lang/String;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 1373
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 349
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Undefine Message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 350
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 273
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/LGDataRecovery;->onScreenON()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 277
    :pswitch_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/internal/telephony/LGDataRecovery;->onScreenOFF()V

    goto :goto_0

    .line 281
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 282
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LGDataRecovery;->onDataStateConnected(Landroid/content/Intent;)V

    goto :goto_0

    .line 284
    :cond_1
    const-string v2, "Data state changed w/o intent"

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 290
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LGDataRecovery;->onDataStateDisconnected(Landroid/content/Intent;)V

    goto :goto_0

    .line 292
    :cond_2
    const-string v2, "Data state changed w/o intent"

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/LGDataRecovery$DnsFailInfo;

    if-eqz v2, :cond_3

    .line 298
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/LGDataRecovery$DnsFailInfo;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LGDataRecovery;->onDnsFailObserved(Lcom/android/internal/telephony/LGDataRecovery$DnsFailInfo;)V

    goto :goto_0

    .line 300
    :cond_3
    const-string v2, "DNS fail observed w/o result"

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :pswitch_6
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LGDataRecovery;->onDataStallAlarmExpired(I)V

    goto :goto_0

    .line 309
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "iface"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, iface:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LGDataRecovery;->onConnCompletedCheckAlarmExpired(Ljava/lang/String;)V

    goto :goto_0

    .line 314
    .end local v1           #iface:Ljava/lang/String;
    :pswitch_8
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mVoicecall:Z

    .line 315
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGDataRecovery;->stopDataStallAlarm()V

    goto :goto_0

    .line 322
    :pswitch_9
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mVoicecall:Z

    .line 323
    invoke-direct {p0}, Lcom/android/internal/telephony/LGDataRecovery;->isDataStallAlarmNeeded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_0

    .line 324
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LGDataRecovery;->startDataStallAlarm(Z)V

    goto/16 :goto_0

    .line 329
    :pswitch_a
    const-string v2, "EVENT_PS_RESTRICT_ENABLED "

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGDataRecovery;->stopDataStallAlarm()V

    .line 331
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mIsPsRestricted:Z

    goto/16 :goto_0

    .line 335
    :pswitch_b
    const-string v2, "EVENT_PS_RESTRICT_DISABLED "

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 336
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mIsPsRestricted:Z

    .line 337
    invoke-direct {p0}, Lcom/android/internal/telephony/LGDataRecovery;->isDataStallAlarmNeeded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    iget-boolean v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->DATA_STALL_NOT_SUSPECTED:Z

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LGDataRecovery;->startDataStallAlarm(Z)V

    goto/16 :goto_0

    .line 344
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 345
    .local v0, ar:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/LGDataRecovery;->onGetModemPacketCountDone(ILandroid/os/AsyncResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x42065
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method protected onGetModemPacketCountDone(ILandroid/os/AsyncResult;)V
    .locals 6
    .parameter "what"
    .parameter "ar"

    .prologue
    const/4 v5, 0x1

    const-wide/16 v3, -0x1

    .line 1779
    const-string v2, "onGetModemPacketCountDone entry"

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1780
    if-nez p2, :cond_0

    .line 1781
    const-string v2, "onGetModemPacketCountDone AsyncResult is null"

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1782
    sget-object v2, Lcom/android/internal/telephony/LGDataRecovery;->mCP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iput-wide v3, v2, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->txCnt:J

    .line 1783
    sget-object v2, Lcom/android/internal/telephony/LGDataRecovery;->mCP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iput-wide v3, v2, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->rxCnt:J

    .line 1804
    :goto_0
    const-string v2, "onGetModemPacketCountDone complete. Now notify."

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1805
    monitor-enter p0

    .line 1806
    const/4 v2, 0x1

    :try_start_0
    sput-boolean v2, Lcom/android/internal/telephony/LGDataRecovery;->mCpResponseFlag:Z

    .line 1807
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1808
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1809
    return-void

    .line 1784
    :cond_0
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 1785
    const-string v2, "onGetModemPacketCountDone AsyncResult.result is null"

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1786
    sget-object v2, Lcom/android/internal/telephony/LGDataRecovery;->mCP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iput-wide v3, v2, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->txCnt:J

    .line 1787
    sget-object v2, Lcom/android/internal/telephony/LGDataRecovery;->mCP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iput-wide v3, v2, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->rxCnt:J

    goto :goto_0

    .line 1790
    :cond_1
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 1792
    .local v1, result:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1793
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getModemPacketCountDone: result["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1792
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1796
    :cond_2
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1797
    sget-object v2, Lcom/android/internal/telephony/LGDataRecovery;->mCP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    const/4 v3, 0x0

    aget v3, v1, v3

    int-to-long v3, v3

    iput-wide v3, v2, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->txCnt:J

    .line 1798
    sget-object v2, Lcom/android/internal/telephony/LGDataRecovery;->mCP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    aget v3, v1, v5

    int-to-long v3, v3

    iput-wide v3, v2, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->rxCnt:J

    .line 1799
    sget-object v2, Lcom/android/internal/telephony/LGDataRecovery;->mCP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->systime:J

    goto :goto_0

    .line 1801
    :cond_3
    const-string v2, "getModemPacketCountDone return valuse is abnormal"

    invoke-static {v2}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1808
    .end local v0           #i:I
    .end local v1           #result:[I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public putRecoveryAction(I)V
    .locals 2
    .parameter "action"

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "radio.data.stall.recovery.action"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putRecoveryAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method public reStartDataStallAlarm()V
    .locals 1

    .prologue
    .line 1330
    const-string v0, "reStartDataBlockObserver"

    invoke-static {v0}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGDataRecovery;->stopDataStallAlarm()V

    .line 1333
    invoke-direct {p0}, Lcom/android/internal/telephony/LGDataRecovery;->isDataStallAlarmNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1334
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGDataRecovery;->startDataStallAlarm(Z)V

    .line 1336
    :cond_0
    return-void
.end method

.method public startConnectionCompleteCheckAlarm(Ljava/lang/String;)V
    .locals 9
    .parameter "iface"

    .prologue
    .line 1081
    const/16 v2, 0x2710

    .line 1083
    .local v2, delayInMs:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startConnectionCompleteCheckAlarm: iface="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " delay= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1085
    iget-object v4, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1088
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.lge.internal.telephony.lge-data-conn-check-alarm"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1089
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "conn.check.alram.tag"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1090
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGDataRecovery;->findConnInfowithIface(Ljava/lang/String;)Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;

    move-result-object v1

    .line 1091
    .local v1, conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    if-eqz v1, :cond_0

    .line 1092
    iget-object v4, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->mConnCheckAlarmIntent:Landroid/app/PendingIntent;

    .line 1094
    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    int-to-long v7, v2

    add-long/2addr v5, v7

    iget-object v7, v1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->mConnCheckAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1097
    :cond_0
    return-void
.end method

.method public startDataStallAlarm(Z)V
    .locals 8
    .parameter "suspectedBlock"

    .prologue
    .line 1283
    iget-boolean v3, p0, Lcom/android/internal/telephony/LGDataRecovery;->mIsWifiConnected:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1284
    const-string v3, "startDataStallAlarm is ignored due to WiFi connected."

    invoke-static {v3}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1313
    :goto_0
    return-void

    .line 1289
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/telephony/LGDataRecovery;->isScreenOn:Z

    if-eqz v3, :cond_2

    .line 1290
    :cond_1
    const v1, 0xea60

    .line 1294
    .local v1, delayInMs:I
    :goto_1
    iget v3, p0, Lcom/android/internal/telephony/LGDataRecovery;->mDataStallAlarmTag:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/LGDataRecovery;->mDataStallAlarmTag:I

    .line 1295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDataStallAlarm: tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/LGDataRecovery;->mDataStallAlarmTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit16 v4, v1, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s suspectedFlag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1298
    iget-object v3, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1301
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.lge.internal.telephony.lge-data-stall-alarm"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1302
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "data.stall.alram.tag"

    iget v4, p0, Lcom/android/internal/telephony/LGDataRecovery;->mDataStallAlarmTag:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1303
    iget-object v3, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x800

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/LGDataRecovery;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 1310
    const/4 v3, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, v1

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/telephony/LGDataRecovery;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 1292
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #delayInMs:I
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    const v1, 0x57e40

    .restart local v1       #delayInMs:I
    goto :goto_1
.end method

.method public startNetdListener()V
    .locals 5

    .prologue
    .line 1267
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;

    if-nez v2, :cond_0

    .line 1268
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1269
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;

    .line 1272
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/LGDataRecovery$NetdObserverEx;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/LGDataRecovery$NetdObserverEx;-><init>(Lcom/android/internal/telephony/LGDataRecovery;Lcom/android/internal/telephony/LGDataRecovery$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mNetdObserverEx:Lcom/android/internal/telephony/LGDataRecovery$NetdObserverEx;

    .line 1275
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/internal/telephony/LGDataRecovery;->mNetdObserverEx:Lcom/android/internal/telephony/LGDataRecovery$NetdObserverEx;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserverEx(Landroid/net/INetworkManagementEventObserverEx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1279
    :goto_0
    return-void

    .line 1276
    :catch_0
    move-exception v1

    .line 1277
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not register InterfaceObserver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopConnectionCompleteCheckTimer(Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;)V
    .locals 3
    .parameter "conn"

    .prologue
    .line 1099
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopConnectionCompleteCheckTimer: iface"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " APN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mConnCheckAlarmIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->mConnCheckAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1101
    iget-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1104
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v1, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->mConnCheckAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 1105
    iget-object v1, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->mConnCheckAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1106
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->mConnCheckAlarmIntent:Landroid/app/PendingIntent;

    .line 1108
    :cond_0
    return-void
.end method

.method public stopDataStallAlarm()V
    .locals 3

    .prologue
    .line 1316
    iget v1, p0, Lcom/android/internal/telephony/LGDataRecovery;->mDataStallAlarmTag:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/LGDataRecovery;->mDataStallAlarmTag:I

    .line 1317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopDataStallAlarm: current tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mDataStallAlarmTag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDataStallAlarmIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/LGDataRecovery;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1319
    iget-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1322
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 1323
    iget-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1324
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/LGDataRecovery;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 1326
    :cond_0
    return-void
.end method

.method public declared-synchronized updateConnectionInfosList(Ljava/lang/String;Z)V
    .locals 7
    .parameter "iface"
    .parameter "up"

    .prologue
    .line 1012
    monitor-enter p0

    :try_start_0
    const-string v5, " UpdateConnectionInfos "

    invoke-static {v5}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1013
    const/4 v0, 0x0

    .line 1014
    .local v0, alreadyexist:Z
    const/4 v4, 0x0

    .line 1015
    .local v4, numofList:I
    iget-object v5, p0, Lcom/android/internal/telephony/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-lez v5, :cond_3

    .line 1017
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;

    .line 1018
    .local v1, conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    iget-object v5, v1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1019
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Found conn with iface "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1020
    if-nez p2, :cond_7

    .line 1021
    if-nez v4, :cond_2

    .line 1022
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update LState to LINKDOWN fot this iface : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1023
    sget-object v5, Lcom/android/internal/telephony/LGDataRecovery$LinkState;->LINKDOWN:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    iput-object v5, v1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    .line 1024
    iget-object v5, v1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->mConnCheckAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_1

    .line 1025
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGDataRecovery;->stopConnectionCompleteCheckTimer(Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;)V

    .line 1028
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGDataRecovery;->updateTrafficStatforAP(Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;)V

    .line 1029
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1032
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "there are more than 2 connInfos for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " remove it WARNING"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1033
    iget-object v5, p0, Lcom/android/internal/telephony/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1046
    .end local v1           #conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 1047
    .local v2, e:Ljava/util/ConcurrentModificationException;
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    .line 1050
    .end local v2           #e:Ljava/util/ConcurrentModificationException;
    :cond_3
    const/4 v5, 0x1

    if-eq v0, v5, :cond_4

    if-eqz p2, :cond_4

    .line 1051
    new-instance v1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;-><init>(Lcom/android/internal/telephony/LGDataRecovery;)V

    .line 1052
    .restart local v1       #conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    iput-object p1, v1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    .line 1053
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    .line 1054
    sget-object v5, Lcom/android/internal/telephony/LGDataRecovery$LinkState;->LINKUP:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    iput-object v5, v1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    .line 1055
    iget-object v5, p0, Lcom/android/internal/telephony/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    .line 1056
    iget-object v5, p0, Lcom/android/internal/telephony/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1059
    .end local v1           #conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    :cond_4
    if-eqz p2, :cond_5

    .line 1060
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGDataRecovery;->findConnInfowithIface(Ljava/lang/String;)Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;

    move-result-object v1

    .line 1061
    .restart local v1       #conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    if-nez v1, :cond_9

    .line 1062
    const-string v5, "conn is null"

    invoke-static {v5}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1073
    .end local v1           #conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/LGDataRecovery;->isDataStallAlarmNeeded()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1074
    const-string v5, "There is no ConnectionInfo Connected stopstallAlarm."

    invoke-static {v5}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGDataRecovery;->stopDataStallAlarm()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1077
    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    .line 1036
    .restart local v1       #conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_7
    :try_start_3
    iget-object v5, v1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    sget-object v6, Lcom/android/internal/telephony/LGDataRecovery$LinkState;->LINKUP:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    if-ne v5, v6, :cond_8

    .line 1037
    const-string v5, "same notification occured ignore this one."

    invoke-static {v5}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1012
    .end local v0           #alreadyexist:Z
    .end local v1           #conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #numofList:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1040
    .restart local v0       #alreadyexist:Z
    .restart local v1       #conn:Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #numofList:I
    :cond_8
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iface"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has conninfo update LState to LINKUP / FState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->FState:Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1041
    const/4 v0, 0x1

    .line 1042
    sget-object v5, Lcom/android/internal/telephony/LGDataRecovery$LinkState;->LINKUP:Lcom/android/internal/telephony/LGDataRecovery$LinkState;

    iput-object v5, v1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/LGDataRecovery$LinkState;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 1063
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_9
    :try_start_5
    iget-object v5, v1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->FState:Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;

    sget-object v6, Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;->DISCONNECTED:Lcom/android/internal/telephony/LGDataRecovery$FrameworkState;

    if-ne v5, v6, :cond_a

    .line 1064
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGDataRecovery;->startConnectionCompleteCheckAlarm(Ljava/lang/String;)V

    goto :goto_1

    .line 1066
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FState of conn for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is NOT DISCONNECTED. WARNING "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGDataRecovery;->updateTrafficStatforAP(Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;)V

    .line 1068
    iget-boolean v5, p0, Lcom/android/internal/telephony/LGDataRecovery;->supportCPtrafficstat:Z

    if-eqz v5, :cond_5

    .line 1069
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGDataRecovery;->updateTrafficStatforCP(Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public updateTrafficStatforAP(Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;)V
    .locals 9
    .parameter "conn"

    .prologue
    .line 1142
    iget-object v5, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LGDataRecovery;->getAPTrafficStat(Ljava/lang/String;)Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    move-result-object v4

    .line 1144
    .local v4, resultCnt:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;
    if-nez v4, :cond_0

    .line 1145
    const-string v5, "updateTrafficStatforAP()... Failure to get getAPTrafficStat()"

    invoke-static {v5}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1165
    :goto_0
    return-void

    .line 1149
    :cond_0
    iget-object v5, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->CurrStatAP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    if-nez v5, :cond_1

    .line 1150
    new-instance v5, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;-><init>(Lcom/android/internal/telephony/LGDataRecovery;)V

    iput-object v5, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->PrevStatAP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    .line 1154
    :goto_1
    iput-object v4, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->CurrStatAP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    .line 1155
    iget-object v5, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->CurrStatAP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v5, v5, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->txCnt:J

    iget-object v7, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->PrevStatAP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v7, v7, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->txCnt:J

    sub-long v2, v5, v7

    .line 1156
    .local v2, increasedTxcnt:J
    iget-object v5, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->CurrStatAP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v5, v5, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->rxCnt:J

    iget-object v7, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->PrevStatAP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v7, v7, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->rxCnt:J

    sub-long v0, v5, v7

    .line 1157
    .local v0, increasedRxcnt:J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_2

    .line 1158
    const/4 v5, 0x0

    iput v5, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->sentSinceLastRecv:I

    .line 1162
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Prev stat for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :: txCnt= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->PrevStatAP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v6, v6, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->txCnt:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rxCnt= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->PrevStatAP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v6, v6, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->rxCnt:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Curr stat for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :: txCnt= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->CurrStatAP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v6, v6, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->txCnt:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rxCnt= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->CurrStatAP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v6, v6, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->rxCnt:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1164
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sentSinceLastRecv for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->sentSinceLastRecv:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " systemtime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->CurrStatAP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v6, v6, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->systime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1152
    .end local v0           #increasedRxcnt:J
    .end local v2           #increasedTxcnt:J
    :cond_1
    iget-object v5, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->CurrStatAP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iput-object v5, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->PrevStatAP:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    goto/16 :goto_1

    .line 1160
    .restart local v0       #increasedRxcnt:J
    .restart local v2       #increasedTxcnt:J
    :cond_2
    iget v5, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->sentSinceLastRecv:I

    int-to-long v5, v5

    add-long/2addr v5, v2

    long-to-int v5, v5

    iput v5, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->sentSinceLastRecv:I

    goto/16 :goto_2
.end method

.method public updateTrafficStatforCP(Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;)V
    .locals 11
    .parameter "conn"

    .prologue
    const-wide/16 v9, 0x0

    .line 1168
    iget-object v5, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LGDataRecovery;->getCPTrafficStat(Ljava/lang/String;)Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    move-result-object v4

    .line 1170
    .local v4, resultCnt:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;
    iget-object v5, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->PrevStatModem:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-object v6, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v6, v6, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->txCnt:J

    iput-wide v6, v5, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->txCnt:J

    .line 1171
    iget-object v5, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->PrevStatModem:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-object v6, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v6, v6, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->rxCnt:J

    iput-wide v6, v5, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->rxCnt:J

    .line 1172
    iget-object v5, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->PrevStatModem:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-object v6, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v6, v6, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->systime:J

    iput-wide v6, v5, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->systime:J

    .line 1174
    iget-object v5, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v6, v4, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->txCnt:J

    iput-wide v6, v5, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->txCnt:J

    .line 1175
    iget-object v5, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v6, v4, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->rxCnt:J

    iput-wide v6, v5, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->rxCnt:J

    .line 1176
    iget-object v5, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v6, v4, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->systime:J

    iput-wide v6, v5, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->systime:J

    .line 1178
    iget-object v5, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v5, v5, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->txCnt:J

    iget-object v7, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->PrevStatModem:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v7, v7, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->txCnt:J

    sub-long v2, v5, v7

    .line 1179
    .local v2, increasedTxcnt:J
    iget-object v5, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v5, v5, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->rxCnt:J

    iget-object v7, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->PrevStatModem:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v7, v7, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->rxCnt:J

    sub-long v0, v5, v7

    .line 1182
    .local v0, increasedRxcnt:J
    cmp-long v5, v2, v9

    if-ltz v5, :cond_0

    cmp-long v5, v0, v9

    if-gez v5, :cond_1

    .line 1183
    :cond_0
    iget-object v5, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v5, v5, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->txCnt:J

    sub-long v2, v5, v9

    .line 1184
    iget-object v5, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v5, v5, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->rxCnt:J

    sub-long v0, v5, v9

    .line 1195
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Modem Prev stat for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :: txCnt= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->PrevStatModem:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v6, v6, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->txCnt:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rxCnt= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->PrevStatModem:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v6, v6, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->rxCnt:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " time= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->PrevStatModem:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v6, v6, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->systime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Modem Curr stat for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :: txCnt= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v6, v6, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->txCnt:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rxCnt= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v6, v6, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->rxCnt:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " time= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;

    iget-wide v6, v6, Lcom/android/internal/telephony/LGDataRecovery$TrafficStat;->systime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1198
    return-void
.end method
