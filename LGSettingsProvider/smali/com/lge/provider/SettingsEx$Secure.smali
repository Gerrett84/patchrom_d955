.class public final Lcom/lge/provider/SettingsEx$Secure;
.super Landroid/provider/Settings$NameValueTable;
.source "SettingsEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/SettingsEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Secure"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final SETTINGS_EX_TO_BACKUP:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1760
    const-string v0, "content://settings/secure"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/SettingsEx$Secure;->CONTENT_URI:Landroid/net/Uri;

    .line 2653
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "kt_3g_vcc_activate"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "kt_3g_vcc_activate_alert"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/provider/SettingsEx$Secure;->SETTINGS_EX_TO_BACKUP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1755
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method
