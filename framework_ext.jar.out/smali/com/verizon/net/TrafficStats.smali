.class public Lcom/verizon/net/TrafficStats;
.super Landroid/net/TrafficStats;
.source "TrafficStats.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "vzwTrafficStats"


# instance fields
.field private vzwNetworkStats:Landroid/net/NetworkStats;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/net/TrafficStats;-><init>()V

    .line 41
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 176
    const-string/jumbo v0, "vzwTrafficStats"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
.end method


# virtual methods
.method public getInterfaceRxBytes(Ljava/lang/String;)J
    .locals 4
    .parameter "iface"

    .prologue
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[vzw_stats] getInterfaceRxBytes - iface : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/verizon/net/TrafficStats;->log(Ljava/lang/String;)V

    .line 74
    const-wide/16 v0, 0x0

    .line 75
    .local v0, result:J
    if-eqz p1, :cond_0

    .line 76
    invoke-static {p1}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v0

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[vzw_stats] getInterfaceRxBytes : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/verizon/net/TrafficStats;->log(Ljava/lang/String;)V

    .line 79
    :cond_0
    return-wide v0
.end method

.method public getInterfaceRxPackets(Ljava/lang/String;)J
    .locals 4
    .parameter "iface"

    .prologue
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[vzw_stats] getInterfaceRxPackets - iface : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/verizon/net/TrafficStats;->log(Ljava/lang/String;)V

    .line 54
    const-wide/16 v0, 0x0

    .line 55
    .local v0, result:J
    if-eqz p1, :cond_0

    .line 56
    invoke-static {p1}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v0

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[vzw_stats] getInterfaceRxPackets : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/verizon/net/TrafficStats;->log(Ljava/lang/String;)V

    .line 59
    :cond_0
    return-wide v0
.end method

.method public getInterfaceTxBytes(Ljava/lang/String;)J
    .locals 4
    .parameter "iface"

    .prologue
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[vzw_stats] getInterfaceTxBytes - iface : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/verizon/net/TrafficStats;->log(Ljava/lang/String;)V

    .line 64
    const-wide/16 v0, 0x0

    .line 65
    .local v0, result:J
    if-eqz p1, :cond_0

    .line 66
    invoke-static {p1}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v0

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[vzw_stats] getInterfaceTxBytes : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/verizon/net/TrafficStats;->log(Ljava/lang/String;)V

    .line 69
    :cond_0
    return-wide v0
.end method

.method public getInterfaceTxPackets(Ljava/lang/String;)J
    .locals 4
    .parameter "iface"

    .prologue
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[vzw_stats] getInterfaceTxPackets - iface : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/verizon/net/TrafficStats;->log(Ljava/lang/String;)V

    .line 45
    const-wide/16 v0, 0x0

    .line 46
    .local v0, result:J
    if-eqz p1, :cond_0

    .line 47
    invoke-static {p1}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v0

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[vzw_stats] getInterfaceTxPackets : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/verizon/net/TrafficStats;->log(Ljava/lang/String;)V

    .line 50
    :cond_0
    return-wide v0
.end method

.method public getUidInterfaceRxBytes(ILjava/lang/String;)J
    .locals 7
    .parameter "uid"
    .parameter "iface"

    .prologue
    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[vzw_stats] getUidInterfaceRxBytes - uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iface : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/verizon/net/TrafficStats;->log(Ljava/lang/String;)V

    .line 93
    const-wide/16 v2, 0x0

    .line 95
    .local v2, result:J
    const-string/jumbo v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 96
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .line 98
    .local v4, service:Landroid/os/INetworkManagementService;
    if-nez v4, :cond_0

    .line 99
    const-string v5, "[vzw_stats] service is null"

    invoke-direct {p0, v5}, Lcom/verizon/net/TrafficStats;->log(Ljava/lang/String;)V

    .line 100
    const-wide/16 v5, -0x1

    .line 108
    :goto_0
    return-wide v5

    .line 103
    :cond_0
    const/4 v5, 0x1

    :try_start_0
    invoke-interface {v4, p1, p2, v5}, Landroid/os/INetworkManagementService;->getNetworkStatsUidInterface(ILjava/lang/String;I)J

    move-result-wide v2

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[vzw_stats] getUidInterfaceRxBytes : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/verizon/net/TrafficStats;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-wide v5, v2

    .line 108
    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "[vzw_stats] getUidInterfaceRxBytes FAIL"

    invoke-direct {p0, v5}, Lcom/verizon/net/TrafficStats;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getUidInterfaceRxPackets(ILjava/lang/String;)J
    .locals 7
    .parameter "uid"
    .parameter "iface"

    .prologue
    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[vzw_stats] getUidInterfaceRxPackets - uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iface : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/verizon/net/TrafficStats;->log(Ljava/lang/String;)V

    .line 114
    const-wide/16 v2, 0x0

    .line 116
    .local v2, result:J
    const-string/jumbo v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 117
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .line 119
    .local v4, service:Landroid/os/INetworkManagementService;
    if-nez v4, :cond_0

    .line 120
    const-string v5, "[vzw_stats] service is null"

    invoke-direct {p0, v5}, Lcom/verizon/net/TrafficStats;->log(Ljava/lang/String;)V

    .line 121
    const-wide/16 v5, -0x1

    .line 129
    :goto_0
    return-wide v5

    .line 124
    :cond_0
    const/4 v5, 0x2

    :try_start_0
    invoke-interface {v4, p1, p2, v5}, Landroid/os/INetworkManagementService;->getNetworkStatsUidInterface(ILjava/lang/String;I)J

    move-result-wide v2

    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[vzw_stats] getUidInterfaceRxPackets : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/verizon/net/TrafficStats;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-wide v5, v2

    .line 129
    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "[vzw_stats] getUidInterfaceRxPackets FAIL"

    invoke-direct {p0, v5}, Lcom/verizon/net/TrafficStats;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getUidInterfaceTxBytes(ILjava/lang/String;)J
    .locals 7
    .parameter "uid"
    .parameter "iface"

    .prologue
    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[vzw_stats] getUidInterfaceTxBytes - uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iface : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/verizon/net/TrafficStats;->log(Ljava/lang/String;)V

    .line 135
    const-wide/16 v2, 0x0

    .line 137
    .local v2, result:J
    const-string/jumbo v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 138
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .line 140
    .local v4, service:Landroid/os/INetworkManagementService;
    if-nez v4, :cond_0

    .line 141
    const-string v5, "[vzw_stats] service is null"

    invoke-direct {p0, v5}, Lcom/verizon/net/TrafficStats;->log(Ljava/lang/String;)V

    .line 142
    const-wide/16 v5, -0x1

    .line 150
    :goto_0
    return-wide v5

    .line 145
    :cond_0
    const/4 v5, 0x3

    :try_start_0
    invoke-interface {v4, p1, p2, v5}, Landroid/os/INetworkManagementService;->getNetworkStatsUidInterface(ILjava/lang/String;I)J

    move-result-wide v2

    .line 146
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[vzw_stats] getUidInterfaceTxBytes : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/verizon/net/TrafficStats;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-wide v5, v2

    .line 150
    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "[vzw_stats] getUidInterfaceTxBytes FAIL"

    invoke-direct {p0, v5}, Lcom/verizon/net/TrafficStats;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getUidInterfaceTxPackets(ILjava/lang/String;)J
    .locals 7
    .parameter "uid"
    .parameter "iface"

    .prologue
    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[vzw_stats] getUidInterfaceTxPackets - uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iface : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/verizon/net/TrafficStats;->log(Ljava/lang/String;)V

    .line 156
    const-wide/16 v2, 0x0

    .line 158
    .local v2, result:J
    const-string/jumbo v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 159
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .line 161
    .local v4, service:Landroid/os/INetworkManagementService;
    if-nez v4, :cond_0

    .line 162
    const-string v5, "[vzw_stats] service is null"

    invoke-direct {p0, v5}, Lcom/verizon/net/TrafficStats;->log(Ljava/lang/String;)V

    .line 163
    const-wide/16 v5, -0x1

    .line 171
    :goto_0
    return-wide v5

    .line 166
    :cond_0
    const/4 v5, 0x4

    :try_start_0
    invoke-interface {v4, p1, p2, v5}, Landroid/os/INetworkManagementService;->getNetworkStatsUidInterface(ILjava/lang/String;I)J

    move-result-wide v2

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[vzw_stats] getUidInterfaceTxPackets : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/verizon/net/TrafficStats;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-wide v5, v2

    .line 171
    goto :goto_0

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "[vzw_stats] getUidInterfaceTxPackets FAIL"

    invoke-direct {p0, v5}, Lcom/verizon/net/TrafficStats;->log(Ljava/lang/String;)V

    goto :goto_1
.end method
