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
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final SETTINGS_EX_TO_BACKUP:[Ljava/lang/String;

.field public static final TANGIBLE_FEATURES_ENABLE:[Ljava/lang/String;


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
