.class public final Lcom/lge/provider/SettingsEx;
.super Ljava/lang/Object;
.source "SettingsEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/provider/SettingsEx$Global;,
        Lcom/lge/provider/SettingsEx$Secure;,
        Lcom/lge/provider/SettingsEx$System;,
        Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    }
.end annotation


# static fields
.field public static final ACTION_WIFIP2P_SETTINGS:Ljava/lang/String; = "android.settings.WIFIP2P_SETTINGS"

.field public static final AUTHORITY:Ljava/lang/String; = "settings"

.field private static final TAG:Ljava/lang/String; = "LGSettingsProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2666
    return-void
.end method
