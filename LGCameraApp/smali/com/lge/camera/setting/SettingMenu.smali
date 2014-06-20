.class public abstract Lcom/lge/camera/setting/SettingMenu;
.super Ljava/util/Observable;
.source "SettingMenu.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;
    }
.end annotation


# static fields
.field public static final DEFAULT_VIDEO_DURATION:I = 0x708

.field public static final VIDEO_QUALITY_HIGH:Ljava/lang/String; = "high"

.field public static final VIDEO_QUALITY_YOUTUBE:Ljava/lang/String; = "youtube"

.field public static final YOUTUBE_VIDEO_DURATION:I = 0x258


# instance fields
.field protected backupCurrentMenuIndex:I

.field protected currentMenuIndex:I

.field protected mBrightnessValue:I

.field public mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

.field protected mSetting:Lcom/lge/camera/setting/Setting;

.field protected mZoomValue:I

.field protected menu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/setting/SettingMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;)V
    .locals 1
    .parameter "function"

    .prologue
    const/4 v0, -0x1

    .line 44
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 24
    iput v0, p0, Lcom/lge/camera/setting/SettingMenu;->backupCurrentMenuIndex:I

    .line 27
    iput v0, p0, Lcom/lge/camera/setting/SettingMenu;->mZoomValue:I

    .line 28
    iput v0, p0, Lcom/lge/camera/setting/SettingMenu;->mBrightnessValue:I

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    .line 45
    iput-object p1, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    .line 46
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 457
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 458
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/setting/SettingMenuItem;

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingMenuItem;->close()V

    .line 459
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 460
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 457
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 463
    :cond_0
    iput-object v2, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    .line 465
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v1, p0}, Lcom/lge/camera/setting/Setting;->deleteObserver(Ljava/util/Observer;)V

    .line 466
    iput-object v2, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    .line 467
    return-void
.end method

.method public findMenuBySettingIndex(I)Lcom/lge/camera/setting/SettingMenuItem;
    .locals 4
    .parameter "settingIndex"

    .prologue
    .line 116
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 117
    .local v1, menuCount:I
    const/4 v2, 0x0

    .line 118
    .local v2, menuItem:Lcom/lge/camera/setting/SettingMenuItem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 119
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #menuItem:Lcom/lge/camera/setting/SettingMenuItem;
    check-cast v2, Lcom/lge/camera/setting/SettingMenuItem;

    .line 120
    .restart local v2       #menuItem:Lcom/lge/camera/setting/SettingMenuItem;
    invoke-virtual {v2}, Lcom/lge/camera/setting/SettingMenuItem;->getSettingIndex()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 125
    :cond_0
    return-object v2

    .line 118
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getBackupCurrentMenuIndex()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/lge/camera/setting/SettingMenu;->backupCurrentMenuIndex:I

    return v0
.end method

.method public getChildIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenuItem;

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/SettingMenuItem;->getChildIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCurrentChildSettingIcon(Ljava/lang/String;)I
    .locals 5
    .parameter "key"

    .prologue
    const/4 v3, -0x1

    .line 423
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 440
    :cond_0
    :goto_0
    return v3

    .line 427
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v4, p1}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 429
    .local v2, listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_0

    .line 430
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 431
    .local v0, iconIndex:I
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getMenuIconResources()[I

    move-result-object v1

    .line 432
    .local v1, iconResources:[I
    if-eqz v1, :cond_0

    .line 433
    if-ne v0, v3, :cond_2

    .line 434
    const/4 v3, 0x0

    aget v3, v1, v3

    goto :goto_0

    .line 436
    :cond_2
    aget v3, v1, v0

    goto :goto_0
.end method

.method public getCurrentChildSettingIcons(Ljava/lang/String;)[I
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 444
    iget-object v2, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-object v1

    .line 448
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v2, p1}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 449
    .local v0, listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getSettingMenuIconResources()[I

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentChildSettingValue(I)Ljava/lang/String;
    .locals 8
    .parameter "menuIndex"

    .prologue
    .line 370
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 371
    :cond_0
    const-string v0, ""

    .line 392
    :cond_1
    :goto_0
    return-object v0

    .line 374
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/setting/SettingMenuItem;

    invoke-virtual {v4}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v4, v1}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 376
    .local v2, listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_6

    .line 377
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, entry:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 379
    :cond_3
    const-string v4, "key_brightness"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 380
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v4, v1}, Lcom/lge/camera/setting/Setting;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sget v5, Lcom/lge/camera/properties/CameraConstants;->MAX_BRIGHTNESS_STEP:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x4040

    div-float v3, v4, v5

    .line 382
    .local v3, value:F
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isMTKChipset()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 383
    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    .line 385
    :cond_4
    const-string v4, "%.1f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 386
    goto :goto_0

    .line 387
    .end local v3           #value:F
    :cond_5
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v4, v1}, Lcom/lge/camera/setting/Setting;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 392
    .end local v0           #entry:Ljava/lang/String;
    :cond_6
    const-string v0, ""

    goto :goto_0
.end method

.method public getCurrentChildSettingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "key"

    .prologue
    .line 396
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 397
    :cond_0
    const-string v0, ""

    .line 418
    :cond_1
    :goto_0
    return-object v0

    .line 401
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v3, p1}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 402
    .local v1, listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_6

    .line 403
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, entry:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 405
    :cond_3
    const-string v3, "key_brightness"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 406
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v3, p1}, Lcom/lge/camera/setting/Setting;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/lge/camera/properties/CameraConstants;->MAX_BRIGHTNESS_STEP:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x4040

    div-float v2, v3, v4

    .line 408
    .local v2, value:F
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isMTKChipset()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 409
    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    .line 411
    :cond_4
    const-string v3, "%.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 412
    goto :goto_0

    .line 413
    .end local v2           #value:F
    :cond_5
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v3, p1}, Lcom/lge/camera/setting/Setting;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 418
    .end local v0           #entry:Ljava/lang/String;
    :cond_6
    const-string v0, ""

    goto :goto_0
.end method

.method public getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;
    .locals 4

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 131
    .local v1, menuItem:Lcom/lge/camera/setting/SettingMenuItem;
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #menuItem:Lcom/lge/camera/setting/SettingMenuItem;
    check-cast v1, Lcom/lge/camera/setting/SettingMenuItem;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .restart local v1       #menuItem:Lcom/lge/camera/setting/SettingMenuItem;
    :goto_0
    return-object v1

    .line 132
    .end local v1           #menuItem:Lcom/lge/camera/setting/SettingMenuItem;
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    .line 134
    iget-object v2, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/setting/SettingMenuItem;

    .restart local v1       #menuItem:Lcom/lge/camera/setting/SettingMenuItem;
    goto :goto_0
.end method

.method public getCurrentMenuIndex()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    return v0
.end method

.method public getMenu(I)Lcom/lge/camera/setting/SettingMenuItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenuItem;

    return-object v0
.end method

.method public getMenu(Ljava/lang/String;)Lcom/lge/camera/setting/SettingMenuItem;
    .locals 2
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 68
    if-nez p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-object v1

    .line 72
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenuIndex(Ljava/lang/String;)I

    move-result v0

    .line 73
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/setting/SettingMenuItem;

    goto :goto_0
.end method

.method public getMenuCount()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getMenuIndex(Ljava/lang/String;)I
    .locals 5
    .parameter "key"

    .prologue
    .line 81
    const/4 v1, -0x1

    .line 82
    .local v1, index:I
    if-nez p1, :cond_0

    move v2, v1

    .line 93
    .end local v1           #index:I
    .local v2, index:I
    :goto_0
    return v2

    .line 86
    .end local v2           #index:I
    .restart local v1       #index:I
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 87
    .local v3, menuSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 88
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/setting/SettingMenuItem;

    invoke-virtual {v4}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 89
    move v1, v0

    :cond_1
    move v2, v1

    .line 93
    .end local v1           #index:I
    .restart local v2       #index:I
    goto :goto_0

    .line 87
    .end local v2           #index:I
    .restart local v1       #index:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getMenuList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/setting/SettingMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedChild(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    const/4 v1, -0x1

    .line 97
    if-nez p1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v1

    .line 100
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenuIndex(Ljava/lang/String;)I

    move-result v0

    .line 101
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/setting/SettingMenuItem;

    iget v1, v1, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    goto :goto_0
.end method

.method public getSelectedChild()Lcom/lge/camera/setting/SettingMenuItem;
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenuItem;

    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    iget v2, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/setting/SettingMenuItem;

    iget v1, v1, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/SettingMenuItem;->getChild(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedChildIndex()I
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenuItem;

    iget v0, v0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    return v0
.end method

.method public abstract getSetting()Lcom/lge/camera/setting/Setting;
.end method

.method protected abstract initMenu()V
.end method

.method public insertMenuItem(ILcom/lge/camera/setting/SettingMenuItem;)V
    .locals 1
    .parameter "index"
    .parameter "item"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 113
    return-void
.end method

.method public removeMenuItem(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public setAllChildMenuEnabled(Ljava/lang/String;Z)V
    .locals 1
    .parameter "key"
    .parameter "enable"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->setAllChildMenuEnabled(Ljava/lang/String;Z)V

    .line 304
    :cond_0
    return-void
.end method

.method public setBackupCurrentMenuIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 144
    iput p1, p0, Lcom/lge/camera/setting/SettingMenu;->backupCurrentMenuIndex:I

    .line 145
    return-void
.end method

.method public setCurrentMenu(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 152
    iget v0, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    if-eq v0, p1, :cond_0

    .line 153
    iput p1, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    .line 155
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->setChanged()V

    .line 156
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->notifyObservers()V

    .line 158
    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter "key"
    .parameter "value"
    .parameter "enable"

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenuIndex(Ljava/lang/String;)I

    move-result v4

    .line 240
    .local v4, parentMenuIndex:I
    const/4 v2, 0x0

    .line 241
    .local v2, isQFLMenu:Z
    if-ltz v4, :cond_0

    iget-object v6, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v4, v6, :cond_3

    .line 242
    :cond_0
    iget-object v6, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v6, p1}, Lcom/lge/camera/setting/Setting;->getQfIndex(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 272
    :cond_1
    :goto_0
    return-void

    .line 245
    :cond_2
    iget-object v6, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v6}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->initSettingMenu()V

    .line 246
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenuIndex(Ljava/lang/String;)I

    move-result v4

    .line 247
    const/4 v2, 0x1

    .line 249
    :cond_3
    const/4 v0, 0x0

    .line 250
    .local v0, childMenuIndex:I
    iget-object v6, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v6, p1}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 251
    .local v3, listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v3, :cond_1

    .line 255
    iget-object v6, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/camera/setting/SettingMenuItem;

    .line 257
    .local v5, parentMenuItem:Lcom/lge/camera/setting/SettingMenuItem;
    invoke-virtual {v3, p2}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 258
    if-gez v0, :cond_4

    const/4 v0, 0x0

    .line 259
    :cond_4
    invoke-virtual {v5, v0}, Lcom/lge/camera/setting/SettingMenuItem;->getChild(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v1

    .line 260
    .local v1, childMenuItem:Lcom/lge/camera/setting/SettingMenuItem;
    iget-boolean v6, v1, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    if-eq v6, p3, :cond_6

    .line 261
    iput-boolean p3, v1, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    .line 262
    if-eqz v2, :cond_5

    .line 263
    iget-object v6, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v6}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->removeSettingItem()V

    .line 265
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->setChanged()V

    .line 266
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->notifyObservers()V

    goto :goto_0

    .line 268
    :cond_6
    if-eqz v2, :cond_1

    .line 269
    iget-object v6, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v6}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->removeSettingItem()V

    goto :goto_0
.end method

.method public setEnabled(Ljava/lang/String;Z)V
    .locals 5
    .parameter "key"
    .parameter "enable"

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenuIndex(Ljava/lang/String;)I

    move-result v1

    .line 276
    .local v1, parentMenuIndex:I
    const/4 v0, 0x0

    .line 277
    .local v0, isQFLMenu:Z
    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_3

    .line 278
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v3, p1}, Lcom/lge/camera/setting/Setting;->getQfIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 299
    :cond_1
    :goto_0
    return-void

    .line 281
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v3}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->initSettingMenu()V

    .line 282
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenuIndex(Ljava/lang/String;)I

    move-result v1

    .line 283
    const/4 v0, 0x1

    .line 286
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/setting/SettingMenuItem;

    .line 287
    .local v2, parentMenuItem:Lcom/lge/camera/setting/SettingMenuItem;
    iget-boolean v3, v2, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    if-eq v3, p2, :cond_5

    .line 288
    iput-boolean p2, v2, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    .line 289
    if-eqz v0, :cond_4

    .line 290
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v3}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->removeSettingItem()V

    .line 292
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->setChanged()V

    .line 293
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->notifyObservers()V

    goto :goto_0

    .line 295
    :cond_5
    if-eqz v0, :cond_1

    .line 296
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v3}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->removeSettingItem()V

    goto :goto_0
.end method

.method public setSelectedChild(Ljava/lang/String;I)V
    .locals 5
    .parameter "key"
    .parameter "index"

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenuIndex(Ljava/lang/String;)I

    move-result v2

    .line 212
    .local v2, parentMenuIndex:I
    const/4 v1, 0x0

    .line 213
    .local v1, isQFLMenu:Z
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 214
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v3, p1}, Lcom/lge/camera/setting/Setting;->getQfIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 236
    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v3}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->initSettingMenu()V

    .line 218
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenuIndex(Ljava/lang/String;)I

    move-result v2

    .line 219
    const/4 v1, 0x1

    .line 221
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenuItem;

    .line 223
    .local v0, currentMenu:Lcom/lge/camera/setting/SettingMenuItem;
    iget v3, v0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    if-eq v3, p2, :cond_5

    .line 224
    iput p2, v0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    .line 225
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/lge/camera/setting/Setting;->setSetting(Ljava/lang/String;I)Z

    .line 226
    if-eqz v1, :cond_4

    .line 227
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v3}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->removeSettingItem()V

    .line 229
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->setChanged()V

    .line 230
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->notifyObservers()V

    goto :goto_0

    .line 232
    :cond_5
    if-eqz v1, :cond_1

    .line 233
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v3}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->removeSettingItem()V

    goto :goto_0
.end method

.method public setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter "key"
    .parameter "value"
    .parameter "saveSetting"

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenuIndex(Ljava/lang/String;)I

    move-result v3

    .line 308
    .local v3, parentMenuIndex:I
    const/4 v1, 0x0

    .line 309
    .local v1, isQFLMenu:Z
    if-ltz v3, :cond_0

    iget-object v5, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_3

    .line 310
    :cond_0
    iget-object v5, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v5, p1}, Lcom/lge/camera/setting/Setting;->getQfIndex(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 354
    :cond_1
    :goto_0
    return-void

    .line 313
    :cond_2
    iget-object v5, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v5}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->initSettingMenu()V

    .line 314
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenuIndex(Ljava/lang/String;)I

    move-result v3

    .line 315
    const/4 v1, 0x1

    .line 318
    :cond_3
    iget-object v5, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v5, p1}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 319
    .local v2, listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_1

    .line 323
    invoke-virtual {v2, p2}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 324
    .local v0, childMenuIndex:I
    if-ltz v3, :cond_4

    iget-object v5, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_5

    .line 325
    :cond_4
    if-eqz v1, :cond_1

    .line 326
    iget-object v5, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v5}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->removeSettingItem()V

    goto :goto_0

    .line 330
    :cond_5
    if-gez v0, :cond_6

    .line 331
    if-eqz v1, :cond_1

    .line 332
    iget-object v5, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v5}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->removeSettingItem()V

    goto :goto_0

    .line 337
    :cond_6
    iget-object v5, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/setting/SettingMenuItem;

    .line 338
    .local v4, parentMenuItem:Lcom/lge/camera/setting/SettingMenuItem;
    iget v5, v4, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    if-eq v5, v0, :cond_9

    .line 339
    iput v0, v4, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    .line 340
    if-eqz p3, :cond_7

    .line 341
    iget-object v5, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v4}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/lge/camera/setting/Setting;->setSetting(Ljava/lang/String;I)Z

    .line 343
    :cond_7
    if-eqz v1, :cond_8

    .line 344
    iget-object v5, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v5}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->removeSettingItem()V

    .line 346
    :cond_8
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->setChanged()V

    .line 347
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->notifyObservers()V

    goto :goto_0

    .line 350
    :cond_9
    if-eqz v1, :cond_1

    .line 351
    iget-object v5, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v5}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->removeSettingItem()V

    goto :goto_0
.end method

.method public setSelectedChild(I)Z
    .locals 4
    .parameter "index"

    .prologue
    .line 181
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    iget v2, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenuItem;

    .line 183
    .local v0, currentMenu:Lcom/lge/camera/setting/SettingMenuItem;
    iget v1, v0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    if-eq v1, p1, :cond_0

    .line 184
    iput p1, v0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    .line 185
    iget-object v2, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/setting/SettingMenuItem;

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, p1}, Lcom/lge/camera/setting/Setting;->setSetting(Ljava/lang/String;I)Z

    .line 186
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->setChanged()V

    .line 187
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->notifyObservers()V

    .line 189
    const/4 v1, 0x1

    .line 191
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSelectedChild(II)Z
    .locals 3
    .parameter "menuIndex"
    .parameter "index"

    .prologue
    .line 196
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenuItem;

    .line 198
    .local v0, currentMenu:Lcom/lge/camera/setting/SettingMenuItem;
    iget v1, v0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    if-eq v1, p2, :cond_0

    .line 199
    iput p2, v0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    .line 200
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/lge/camera/setting/Setting;->setSetting(Ljava/lang/String;I)Z

    .line 201
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->setChanged()V

    .line 202
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->notifyObservers()V

    .line 204
    const/4 v1, 0x1

    .line 206
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSettingPreferenceGroupForVideo(Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 1
    .parameter "preferenceGroup"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v0}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->isMMSIntent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v0}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->isAttachIntent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v0}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/properties/MmsProperties;->getMmsResolutionsLength(Landroid/content/ContentResolver;)I

    move-result v0

    if-nez v0, :cond_1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/Setting;->setPreferenceGroup(Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 57
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->addMMSTexture(Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 55
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/Setting;->setPreferenceGroup(Lcom/lge/camera/setting/PreferenceGroup;)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 357
    const/4 v2, 0x0

    .line 358
    .local v2, parentMenu:Lcom/lge/camera/setting/SettingMenuItem;
    const/4 v3, 0x0

    .line 359
    .local v3, settingIndex:I
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 360
    .local v1, menuSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 361
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #parentMenu:Lcom/lge/camera/setting/SettingMenuItem;
    check-cast v2, Lcom/lge/camera/setting/SettingMenuItem;

    .line 362
    .restart local v2       #parentMenu:Lcom/lge/camera/setting/SettingMenuItem;
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v2}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v3

    .line 363
    iput v3, v2, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->setChanged()V

    .line 366
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->notifyObservers()V

    .line 367
    return-void
.end method
