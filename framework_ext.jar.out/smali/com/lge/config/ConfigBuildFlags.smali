.class public final Lcom/lge/config/ConfigBuildFlags;
.super Ljava/lang/Object;
.source "ConfigBuildFlags.java"


# static fields
.field public static final CAPP_ALMOND:Z

.field public static final CAPP_ART:Z

.field public static final CAPP_BATTERY_CONDITION:Z

.field public static final CAPP_BUBBLE_POPUP:Z

.field public static final CAPP_CLIPTRAY:Z

.field public static final CAPP_COMPAT:Z

.field public static final CAPP_DRM:Z

.field public static final CAPP_EMOJI:Z

.field public static final CAPP_EMOJI_DCM:Z

.field public static final CAPP_FONTS:Z

.field public static final CAPP_FONTS_JP:Z

.field public static final CAPP_GHOST_FINGER:Z

.field public static final CAPP_INFO_COLLECTOR:Z

.field public static final CAPP_KEYLED_TIMEOUT:Z

.field public static final CAPP_KEY_EXCEPTION:Z

.field public static final CAPP_LOCKSCREEN:Z

.field public static final CAPP_MDM:Z

.field public static final CAPP_MEDIA_AUDIOEFFECT:Z

.field public static final CAPP_MOVE_SDCARD:Z

.field public static final CAPP_NEXTI_LOCKSCREEN:Z

.field public static final CAPP_NFS:Z

.field public static final CAPP_OPTIMUSUI:Z

.field public static final CAPP_OSP:Z

.field public static final CAPP_PRADAUI:Z

.field public static final CAPP_REAL3D:Z

.field public static final CAPP_RESOURCE:Z

.field public static final CAPP_SLIDEASIDE:Z

.field public static final CAPP_SPLITWINDOW:Z

.field public static final CAPP_SPR_CHAMELEON:Z

.field public static final CAPP_THEMEICON:Z

.field public static final CAPP_TOUCH_PALM_COVER:Z

.field public static final CAPP_TOUCH_PALM_SWIPE:Z

.field public static final CAPP_TOUCH_SCROLLER:Z

.field public static final CAPP_TRIMHEAPS:Z

.field public static final CAPP_UPLUSAPI:Z

.field public static final CAPP_VALID_BATTERYID:Z

.field public static final CAPP_WAPSERVICE:Z

.field public static final CAPP_ZDI_I:Z

.field public static final CAPP_ZDI_O:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    const-string/jumbo v0, "ro.lge.capp_wapservice"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_WAPSERVICE:Z

    .line 33
    const-string/jumbo v0, "ro.lge.capp_drm"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    .line 34
    const-string/jumbo v0, "ro.lge.capp_key_exception"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_KEY_EXCEPTION:Z

    .line 35
    const-string/jumbo v0, "ro.lge.capp_osp"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_OSP:Z

    .line 36
    const-string/jumbo v0, "ro.lge.capp_lockscreen"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_LOCKSCREEN:Z

    .line 37
    const-string/jumbo v0, "ro.lge.capp_resource"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_RESOURCE:Z

    .line 38
    const-string/jumbo v0, "ro.lge.capp_almond"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_ALMOND:Z

    .line 39
    const-string/jumbo v0, "ro.lge.capp_mdm"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    .line 40
    const-string/jumbo v0, "ro.lge.capp_uplus_api"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_UPLUSAPI:Z

    .line 41
    const-string/jumbo v0, "ro.lge.capp_keyled_timeout"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_KEYLED_TIMEOUT:Z

    .line 42
    const-string/jumbo v0, "ro.lge.capp_ghost_finger"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_GHOST_FINGER:Z

    .line 43
    const-string/jumbo v0, "ro.lge.fonts"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_FONTS:Z

    .line 44
    const-string/jumbo v0, "ro.lge.fonts_jp"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_FONTS_JP:Z

    .line 45
    const-string/jumbo v0, "ro.lge.capp_optimusui"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_OPTIMUSUI:Z

    .line 46
    const-string/jumbo v0, "ro.lge.capp_pradaui"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_PRADAUI:Z

    .line 47
    const-string/jumbo v0, "ro.lge.capp_valid_batteryid"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_VALID_BATTERYID:Z

    .line 48
    const-string/jumbo v0, "ro.lge.capp_touch_scroller"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_TOUCH_SCROLLER:Z

    .line 49
    const-string/jumbo v0, "ro.lge.capp_real3d"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_REAL3D:Z

    .line 50
    const-string/jumbo v0, "ro.lge.capp_nfs"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_NFS:Z

    .line 51
    const-string/jumbo v0, "ro.lge.capp_compat"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_COMPAT:Z

    .line 52
    const-string/jumbo v0, "ro.lge.capp_bubble_popup"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    .line 53
    const-string/jumbo v0, "ro.lge.capp_trimHeaps"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_TRIMHEAPS:Z

    .line 54
    const-string/jumbo v0, "ro.lge.capp_art"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_ART:Z

    .line 55
    const-string/jumbo v0, "ro.lge.capp_themeicon"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_THEMEICON:Z

    .line 56
    const-string/jumbo v0, "ro.lge.capp_move_sdcard"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MOVE_SDCARD:Z

    .line 58
    const-string/jumbo v0, "ro.lge.capp_nexti_lockscreen"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_NEXTI_LOCKSCREEN:Z

    .line 59
    const-string/jumbo v0, "ro.lge.capp_emoji"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    .line 60
    const-string/jumbo v0, "ro.lge.capp_emoji_dcm"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI_DCM:Z

    .line 61
    const-string/jumbo v0, "ro.lge.capp_media_audioeffect"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MEDIA_AUDIOEFFECT:Z

    .line 63
    const-string/jumbo v0, "ro.lge.capp_cliptray"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_CLIPTRAY:Z

    .line 64
    const-string/jumbo v0, "ro.lge.capp_spr_chameleon"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPR_CHAMELEON:Z

    .line 66
    const-string/jumbo v0, "ro.lge.capp_battery_condition"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_BATTERY_CONDITION:Z

    .line 67
    const-string/jumbo v0, "ro.lge.capp_info_collector"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_INFO_COLLECTOR:Z

    .line 69
    const-string/jumbo v0, "ro.lge.capp_slideAside"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_SLIDEASIDE:Z

    .line 71
    const-string/jumbo v0, "ro.lge.capp_touch_palm_swipe"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_TOUCH_PALM_SWIPE:Z

    .line 72
    const-string/jumbo v0, "ro.lge.capp_touch_palm_cover"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_TOUCH_PALM_COVER:Z

    .line 74
    const-string/jumbo v0, "ro.lge.capp_splitwindow"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    .line 76
    const-string/jumbo v0, "ro.lge.capp_ZDi_O"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_ZDI_O:Z

    .line 78
    const-string/jumbo v0, "ro.lge.capp_ZDi_I"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_ZDI_I:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
