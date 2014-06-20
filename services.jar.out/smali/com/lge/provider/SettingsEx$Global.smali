.class public final Lcom/lge/provider/SettingsEx$Global;
.super Landroid/provider/Settings$NameValueTable;
.source "SettingsEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/SettingsEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Global"
.end annotation


# static fields
.field public static final ASSISTED_GPS_ENABLED_FOR_CMCC:Ljava/lang/String; = "assisted_gps_enabled_for_cmcc"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final COVER_TYPE:Ljava/lang/String; = "cover_type"

.field public static final LG_DEVICE_NAME:Ljava/lang/String; = "lg_device_name"

.field public static final NFC_FIRST_ON_CHECK:Ljava/lang/String; = "nfc_first_on_check"

.field public static final QUICK_COVER_ENABLE:Ljava/lang/String; = "quick_cover_enable"

.field public static final QUICK_VIEW_ENABLE:Ljava/lang/String; = "quick_view_enable"

.field public static final SETTINGS_EX_TO_BACKUP:[Ljava/lang/String; = null

.field public static final TANGIBLE_DOCK_PANEL_ENABLE:Ljava/lang/String; = "tangible_dock_panel_enable"

.field public static final TANGIBLE_EARPHONE_PANEL_ENABLE:Ljava/lang/String; = "tangible_earphone_panel_enable"

.field public static final TANGIBLE_FEATURES_ENABLE:[Ljava/lang/String; = null

.field public static final TANGIBLE_PEN_PANEL_ENABLE:Ljava/lang/String; = "tangible_pen_panel_enable"

.field public static final TANGIBLE_USBSTORAGE_PANEL_ENABLE:Ljava/lang/String; = "tangible_usbstorage_panel_enable"

.field public static final VTR_WIND_SIM_INSERTED:Ljava/lang/String; = "vtr_wind_sim_inserted"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2671
    const-string v0, "content://settings/global"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/SettingsEx$Global;->CONTENT_URI:Landroid/net/Uri;

    .line 2758
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "assisted_gps_enabled_for_cmcc"

    aput-object v1, v0, v2

    sput-object v0, Lcom/lge/provider/SettingsEx$Global;->SETTINGS_EX_TO_BACKUP:[Ljava/lang/String;

    .line 2770
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "tangible_usbstorage_panel_enable"

    aput-object v1, v0, v2

    const-string v1, "tangible_earphone_panel_enable"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "tangible_dock_panel_enable"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "tangible_pen_panel_enable"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/provider/SettingsEx$Global;->TANGIBLE_FEATURES_ENABLE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2666
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 2
    .parameter "cr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/provider/SettingsEx$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 2723
    :try_start_0
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2724
    :catch_0
    move-exception v0

    .line 2725
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    new-instance v1, Lcom/lge/provider/SettingsEx$SettingNotFoundException;

    invoke-direct {v1, p1}, Lcom/lge/provider/SettingsEx$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 2718
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0
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
    .line 2691
    :try_start_0
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2692
    :catch_0
    move-exception v0

    .line 2693
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
    .line 2686
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 3
    .parameter "cr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/provider/SettingsEx$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 2707
    :try_start_0
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    return-wide v1

    .line 2708
    :catch_0
    move-exception v0

    .line 2709
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    new-instance v1, Lcom/lge/provider/SettingsEx$SettingNotFoundException;

    invoke-direct {v1, p1}, Lcom/lge/provider/SettingsEx$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 2
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 2702
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "resolver"
    .parameter "name"

    .prologue
    .line 2674
    const-class v0, Lcom/lge/provider/SettingsEx$Global;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
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
    .line 2682
    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 2730
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 2698
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 2714
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 2678
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
