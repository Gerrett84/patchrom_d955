.class public Lcom/android/lgesettings/FontTypeFace;
.super Ljava/lang/Object;
.source "FontTypeFace.java"


# static fields
.field private static _CAPP_FONTS:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    :try_start_0
    const-class v0, Lcom/lge/config/ConfigBuildFlags;

    const-string v1, "CAPP_FONTS"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/FontTypeFace;->_CAPP_FONTS:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUseCappFonts()Z
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    sget-object v1, Lcom/android/lgesettings/FontTypeFace;->_CAPP_FONTS:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    .line 35
    :try_start_0
    sget-object v1, Lcom/android/lgesettings/FontTypeFace;->_CAPP_FONTS:Ljava/lang/reflect/Field;

    const-class v2, Lcom/lge/config/ConfigBuildFlags;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 40
    :cond_0
    :goto_0
    return v0

    .line 36
    :catch_0
    move-exception v1

    .line 37
    const-string v1, "FontTypeFace"

    const-string v2, "Error : not support capp fonts."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
