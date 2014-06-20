.class public Lcom/kt/wifiapi/OEMExtension;
.super Ljava/lang/Object;
.source "OEMExtension.java"


# static fields
.field public static final DP_MODE_CITY:I = 0x1

.field public static final DP_MODE_GENERAL:I = 0x2

.field public static final DP_MODE_HOME:I = 0x3

.field public static final DP_MODE_OFF:I = 0x0

.field public static final EAP_AKA_NOTIFICATION:Ljava/lang/String; = "EAP_AKA_NOTIFICATION"

.field public static final EAP_NOTIFICATION:Ljava/lang/String; = "EAP_NOTIFICATION"

.field public static final ERROR_NOTIFICATION:Ljava/lang/String; = "ERROR_NOTIFICATION"

.field public static final ERROR_NOTIFICATION_AUTH_FAIL:I = -0x5

.field public static final ERROR_NOTIFICATION_IDPW_MISPATCH:I = -0x4

.field public static final ERROR_NOTIFICATION_INVALID_USIM:I = -0x1

.field public static final ERROR_NOTIFICATION_NO_RESPONSE:I = -0x6

.field public static final ERROR_NOTIFICATION_NO_USIM:I = -0x2

.field public static final ERROR_NOTIFICATION_PW_MISPATCH:I = -0x3

.field public static final FEATURE_KT_WIFIAPI_OEM_DISCONNECTION_PRIORITY:I = 0x2

.field public static final FEATURE_KT_WIFIAPI_OEM_EAP_AKA_NOTIFICATON:I = 0x10

.field public static final FEATURE_KT_WIFIAPI_OEM_EAP_NOTIFICATON:I = 0x8

.field public static final FEATURE_KT_WIFIAPI_OEM_ERROR_NOTIFICATON:I = 0x4

.field public static final FEATURE_KT_WIFIAPI_OEM_MANUAL_CONNECTION:I = 0x1

.field public static final FEATURE_KT_WIFIAPI_OEM_SCAN_RESULT_EXTENSION:I = 0x20

.field public static final MANUAL_CONN_ENABLE_QUERY:Ljava/lang/String; = "com.kt.wifiapi.OEMExtension.MANUAL_CONN_ENABLE_QUERY"

.field public static final NOTIFICATION:Ljava/lang/String; = "com.kt.wifiapi.OEMExtension.NOTIFICATION"

.field private static final TAG:Ljava/lang/String; = "WifiKTAPI"

.field private static mContext:Landroid/content/Context;

.field private static mGWSScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final mReceiver:Landroid/content/BroadcastReceiver;

.field private static mWifiLgeKTOEMExt:Lcom/kt/wifiapi/OEMExtension;


# instance fields
.field private mDisconnectionPriority:I

.field private mFeatureSupport:I

.field private mManualConnection:Z

.field private mWifiOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/kt/wifiapi/OEMExtension;->mWifiLgeKTOEMExt:Lcom/kt/wifiapi/OEMExtension;

    .line 71
    new-instance v0, Lcom/kt/wifiapi/OEMExtension$1;

    invoke-direct {v0}, Lcom/kt/wifiapi/OEMExtension$1;-><init>()V

    sput-object v0, Lcom/kt/wifiapi/OEMExtension;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiOn:Z

    .line 26
    iput-boolean v0, p0, Lcom/kt/wifiapi/OEMExtension;->mManualConnection:Z

    .line 36
    iput v0, p0, Lcom/kt/wifiapi/OEMExtension;->mFeatureSupport:I

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lcom/kt/wifiapi/OEMExtension;->mDisconnectionPriority:I

    .line 68
    return-void
.end method

.method static synthetic access$002(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    sput-object p0, Lcom/kt/wifiapi/OEMExtension;->mGWSScanResults:Ljava/util/List;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/kt/wifiapi/OEMExtension;
    .locals 5
    .parameter "context"

    .prologue
    .line 85
    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->mWifiLgeKTOEMExt:Lcom/kt/wifiapi/OEMExtension;

    if-nez v2, :cond_0

    .line 86
    new-instance v2, Lcom/kt/wifiapi/OEMExtension;

    invoke-direct {v2}, Lcom/kt/wifiapi/OEMExtension;-><init>()V

    sput-object v2, Lcom/kt/wifiapi/OEMExtension;->mWifiLgeKTOEMExt:Lcom/kt/wifiapi/OEMExtension;

    .line 87
    const-string v2, "WifiKTAPI"

    const-string v3, "[getInstance] mWifiLgeKTOEMExt"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    if-eqz p0, :cond_1

    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    if-eq p0, v2, :cond_1

    .line 91
    sput-object p0, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    .line 93
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.lge.wifi.WIFI_GWS_SCAN_RESULT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.wifi.WIFI_GWS_SCAN_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 99
    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    const-string v2, "WifiKTAPI"

    const-string v3, "[getInstance] mReceiver registerReceiver"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_1
    const-string v2, "WifiKTAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getInstance] is called mContext : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mWifiLgeKTOEMExt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/kt/wifiapi/OEMExtension;->mWifiLgeKTOEMExt:Lcom/kt/wifiapi/OEMExtension;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->mWifiLgeKTOEMExt:Lcom/kt/wifiapi/OEMExtension;

    return-object v2
.end method


# virtual methods
.method public getDisconnectionPriority()I
    .locals 5

    .prologue
    .line 174
    const/16 v1, -0x55

    .line 175
    .local v1, signalStrength:I
    const/4 v0, 0x0

    .line 177
    .local v0, dpMode:I
    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 178
    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_rssi_polling_threshold_db"

    const/16 v4, -0x55

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 180
    :cond_0
    sparse-switch v1, :sswitch_data_0

    .line 197
    :goto_0
    return v0

    .line 182
    :sswitch_0
    const/4 v0, 0x1

    .line 183
    goto :goto_0

    .line 186
    :sswitch_1
    const/4 v0, 0x2

    .line 187
    goto :goto_0

    .line 190
    :sswitch_2
    const/4 v0, 0x3

    .line 191
    goto :goto_0

    .line 180
    :sswitch_data_0
    .sparse-switch
        -0x5a -> :sswitch_2
        -0x55 -> :sswitch_1
        -0x4b -> :sswitch_0
    .end sparse-switch
.end method

.method public getFeature()I
    .locals 1

    .prologue
    .line 111
    const/16 v0, 0x3f

    iput v0, p0, Lcom/kt/wifiapi/OEMExtension;->mFeatureSupport:I

    .line 118
    iget v0, p0, Lcom/kt/wifiapi/OEMExtension;->mFeatureSupport:I

    return v0
.end method

.method public getGWSScanResultsEx()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    sget-object v0, Lcom/kt/wifiapi/OEMExtension;->mGWSScanResults:Ljava/util/List;

    return-object v0
.end method

.method public getManualConnection()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/kt/wifiapi/OEMExtension;->mManualConnection:Z

    return v0
.end method

.method public setDisconnectionPriority(I)Z
    .locals 3
    .parameter "value"

    .prologue
    .line 143
    const/16 v0, -0x64

    .line 145
    .local v0, signalStrength:I
    if-ltz p1, :cond_0

    const/4 v1, 0x3

    if-ge v1, p1, :cond_1

    .line 146
    :cond_0
    const/4 v1, 0x0

    .line 169
    :goto_0
    return v1

    .line 149
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 166
    :goto_1
    sget-object v1, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 167
    sget-object v1, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_rssi_polling_threshold_db"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 169
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 151
    :pswitch_0
    const/16 v0, -0x4b

    .line 152
    goto :goto_1

    .line 155
    :pswitch_1
    const/16 v0, -0x55

    .line 156
    goto :goto_1

    .line 159
    :pswitch_2
    const/16 v0, -0x5a

    .line 160
    goto :goto_1

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setManualConnection(Z)Z
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    .line 123
    sget-object v1, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 124
    iput-boolean p1, p0, Lcom/kt/wifiapi/OEMExtension;->mManualConnection:Z

    .line 125
    const-string v1, "WifiKTAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setManualConnection] mManualConnection : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/kt/wifiapi/OEMExtension;->mManualConnection:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wifi.WIFI_MANUAL_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 129
    const-string/jumbo v1, "manual_connection_cmd"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    const-string/jumbo v1, "manual_connection_value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    sget-object v1, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 133
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return v4
.end method
