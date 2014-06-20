.class public final Lcom/lge/provider/SettingsEx$System;
.super Landroid/provider/Settings$NameValueTable;
.source "SettingsEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/SettingsEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "System"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_RINGTONE_VOIPCALL:Landroid/net/Uri;

.field public static final SETTINGS_EX_TO_BACKUP:[Ljava/lang/String;

.field public static final USER_PREFERRED_SUBS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    const-string v0, "content://settings/system"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/SettingsEx$System;->CONTENT_URI:Landroid/net/Uri;

    .line 343
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "user_preferred_sub1"

    aput-object v1, v0, v2

    const-string v1, "user_preferred_sub2"

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/provider/SettingsEx$System;->USER_PREFERRED_SUBS:[Ljava/lang/String;

    .line 1574
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "text_link"

    aput-object v1, v0, v2

    const-string v1, "battery_condition_alarm"

    aput-object v1, v0, v3

    const-string v1, "battery_condition"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "com.lge.settings.wifi.wifiOffloadingNotifyMe"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "wifi_networks_available_auto_connect"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "start_ip"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "end_ip"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mask"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "prefix_length"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "gateway"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "dns_server"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "cdma_dns_server_1"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cdma_dns_server_2"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "dhcp_server"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "wifi_auto_connect"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ssid_update_done"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "wifi_ssid_visibility"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "wifi_ap_current_max_client"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "tether_entitlement_check_state"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "tether_entitlement_check_type"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "tether_entitlement_check_interval"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "wifi_networks_available_notification_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "otksl_count"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "mhs_usage_time"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "wifi_rssi_based_op"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "xdivert_status"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "roaming_auto_dial"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/provider/SettingsEx$System;->SETTINGS_EX_TO_BACKUP:[Ljava/lang/String;

    .line 1672
    const-string v0, "ringtone_voipcall"

    invoke-static {v0}, Lcom/lge/provider/SettingsEx$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/SettingsEx$System;->DEFAULT_RINGTONE_VOIPCALL:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 2
    .parameter "cr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/provider/SettingsEx$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 110
    :try_start_0
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    new-instance v1, Lcom/lge/provider/SettingsEx$SettingNotFoundException;

    invoke-direct {v1, p1}, Lcom/lge/provider/SettingsEx$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 105
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "resolver"
    .parameter "name"

    .prologue
    .line 93
    const-class v0, Lcom/lge/provider/SettingsEx$System;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "name"

    .prologue
    .line 101
    invoke-static {p0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 4
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 117
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 118
    .local v0, pid:I
    const-string v1, "LGSettingsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putInt() : name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method
