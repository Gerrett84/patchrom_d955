.class public Lcom/android/lgesettings/hotkey/HotkeyInfo;
.super Ljava/lang/Object;
.source "HotkeyInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/hotkey/HotkeyInfo$DummyPKGInfo;
    }
.end annotation


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field private mDummy_PKGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/hotkey/HotkeyInfo$DummyPKGInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/lgesettings/hotkey/HotkeyInfo;->mContext:Landroid/content/Context;

    .line 45
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/HotkeyInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/hotkey/HotkeyInfo;->mContentResolver:Landroid/content/ContentResolver;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/hotkey/HotkeyInfo;->mDummy_PKGS:Ljava/util/List;

    .line 47
    invoke-direct {p0}, Lcom/android/lgesettings/hotkey/HotkeyInfo;->setDummyPKGInfo()V

    .line 48
    return-void
.end method

.method private setDummyPKGInfo()V
    .locals 7

    .prologue
    .line 52
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/hotkey/HotkeyInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 53
    .local v0, mPm:Landroid/content/pm/PackageManager;
    const-string v2, "com.lge.QuickClip"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 54
    .local v1, pInfo:Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/android/lgesettings/hotkey/HotkeyInfo;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/android/lgesettings/hotkey/HotkeyInfo;->mDummy_PKGS:Ljava/util/List;

    new-instance v3, Lcom/android/lgesettings/hotkey/HotkeyInfo$DummyPKGInfo;

    const-string v4, "sim_switch"

    const v5, 0x7f08097d

    const-string v6, "com.lge.QuickClip"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/lgesettings/hotkey/HotkeyInfo$DummyPKGInfo;-><init>(Lcom/android/lgesettings/hotkey/HotkeyInfo;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0           #mPm:Landroid/content/pm/PackageManager;
    .end local v1           #pInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public getDBHotKeyShortClass()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/HotkeyInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "hotkey_short_class"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDBHotKeyShortPKG()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/HotkeyInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "hotkey_short_package"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDummyPKGResID(Ljava/lang/String;)I
    .locals 3
    .parameter "pkg"

    .prologue
    .line 105
    iget-object v2, p0, Lcom/android/lgesettings/hotkey/HotkeyInfo;->mDummy_PKGS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 106
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 107
    iget-object v2, p0, Lcom/android/lgesettings/hotkey/HotkeyInfo;->mDummy_PKGS:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/hotkey/HotkeyInfo$DummyPKGInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/hotkey/HotkeyInfo$DummyPKGInfo;->getPKG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/android/lgesettings/hotkey/HotkeyInfo;->mDummy_PKGS:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/hotkey/HotkeyInfo$DummyPKGInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/hotkey/HotkeyInfo$DummyPKGInfo;->getPKG_resID()I

    move-result v2

    .line 111
    :goto_1
    return v2

    .line 106
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public isNormalPackage(Ljava/lang/String;)Z
    .locals 5
    .parameter "pkg"

    .prologue
    const/4 v3, 0x1

    .line 66
    iget-object v2, p0, Lcom/android/lgesettings/hotkey/HotkeyInfo;->mDummy_PKGS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 67
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 68
    iget-object v2, p0, Lcom/android/lgesettings/hotkey/HotkeyInfo;->mDummy_PKGS:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/hotkey/HotkeyInfo$DummyPKGInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/hotkey/HotkeyInfo$DummyPKGInfo;->getPKG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v3, v2, :cond_0

    .line 69
    const-string v2, "HotkeyInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isNormalPackage] Matching dummy PKG : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v2, 0x0

    .line 73
    :goto_1
    return v2

    .line 67
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 73
    goto :goto_1
.end method

.method public setDBHotKeyShortClass(Ljava/lang/String;)V
    .locals 2
    .parameter "cls"

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/HotkeyInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "hotkey_short_class"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 102
    return-void

    .line 98
    :cond_0
    const-string p1, "hotkey_short_class"

    goto :goto_0
.end method

.method public setDBHotKeyShortPKG(Ljava/lang/String;)V
    .locals 2
    .parameter "pkg"

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/HotkeyInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "hotkey_short_package"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 92
    return-void

    .line 88
    :cond_0
    const-string p1, "hotkey_short_package"

    goto :goto_0
.end method
