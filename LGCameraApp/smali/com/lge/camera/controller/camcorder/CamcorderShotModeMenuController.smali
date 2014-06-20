.class public Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;
.super Lcom/lge/camera/controller/ShotModeMenuController;
.source "CamcorderShotModeMenuController.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/ShotModeMenuController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method private getRecordModeItemResources(Ljava/lang/String;)[I
    .locals 5
    .parameter "modeString"

    .prologue
    .line 51
    const/4 v2, 0x0

    .line 52
    .local v2, titleId:I
    const/4 v1, 0x0

    .line 53
    .local v1, messageTextId:I
    const/4 v0, 0x0

    .line 55
    .local v0, messageImageId:I
    const-string v3, "recordmode_normal"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    const v2, 0x7f0b0042

    .line 57
    const v1, 0x7f0b0345

    .line 58
    const v0, 0x7f020384

    .line 81
    :cond_0
    :goto_0
    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v4, 0x2

    aput v0, v3, v4

    return-object v3

    .line 59
    :cond_1
    const-string v3, "recordmode_wdr"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 60
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isHDRRecordingNameUsed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    const v2, 0x7f0b00fc

    .line 62
    const v0, 0x7f020382

    .line 67
    :goto_1
    const v1, 0x7f0b02ef

    goto :goto_0

    .line 64
    :cond_2
    const v2, 0x7f0b00fb

    .line 65
    const v0, 0x7f020386

    goto :goto_1

    .line 68
    :cond_3
    const-string v3, "recordmode_dual"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 69
    const v2, 0x7f0b0270

    .line 70
    const v1, 0x7f0b02f6

    .line 71
    const v0, 0x7f020381

    goto :goto_0

    .line 72
    :cond_4
    const-string v3, "recordmode_live_effect"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 73
    const v2, 0x7f0b026f

    .line 74
    const v1, 0x7f0b02fb

    .line 75
    const v0, 0x7f020383

    goto :goto_0

    .line 76
    :cond_5
    const-string v3, "recordmode_smart_zoom"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    const v2, 0x7f0b0272

    .line 78
    const v1, 0x7f0b0346

    .line 79
    const v0, 0x7f020385

    goto :goto_0
.end method

.method private makeRecordModeItemList()V
    .locals 13

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_video_record_mode"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v11

    .line 30
    .local v11, listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v11, :cond_0

    .line 31
    invoke-virtual {v11}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 32
    .local v8, entryValues:[Ljava/lang/CharSequence;
    invoke-virtual {v11}, Lcom/lge/camera/setting/ListPreference;->getEntryCommand()Ljava/lang/String;

    move-result-object v7

    .line 34
    .local v7, menuCommand:Ljava/lang/String;
    const/4 v4, 0x0

    .line 35
    .local v4, title:Ljava/lang/String;
    const/4 v5, 0x0

    .line 36
    .local v5, desc:Ljava/lang/String;
    const/4 v6, 0x0

    .line 37
    .local v6, imgResId:I
    const/4 v10, 0x0

    .line 38
    .local v10, itemRes:[I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    array-length v0, v8

    if-ge v9, v0, :cond_0

    .line 39
    aget-object v0, v8, v9

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->getRecordModeItemResources(Ljava/lang/String;)[I

    move-result-object v10

    .line 40
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    aget v1, v10, v1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 41
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    aget v1, v10, v1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 42
    const/4 v0, 0x2

    aget v6, v10, v0

    .line 43
    iget-object v12, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    const-string v2, "key_video_record_mode"

    aget-object v1, v8, v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 48
    .end local v4           #title:Ljava/lang/String;
    .end local v5           #desc:Ljava/lang/String;
    .end local v6           #imgResId:I
    .end local v7           #menuCommand:Ljava/lang/String;
    .end local v8           #entryValues:[Ljava/lang/CharSequence;
    .end local v9           #i:I
    .end local v10           #itemRes:[I
    .end local v11           #listPref:Lcom/lge/camera/setting/ListPreference;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getCurrentItem()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_video_record_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, recordMode:Ljava/lang/String;
    const/4 v1, 0x0

    .line 91
    .local v1, item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mDescText:Landroid/widget/TextView;

    if-nez v4, :cond_1

    :cond_0
    move v0, v3

    .line 113
    :goto_0
    return v0

    .line 95
    :cond_1
    const-string v4, "recordmode_normal"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 96
    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    check-cast v1, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 97
    .restart local v1       #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v4, v3}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->setSelectedItem(I)V

    move v0, v3

    .line 100
    goto :goto_0

    .line 102
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 103
    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    check-cast v1, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 104
    .restart local v1       #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    invoke-virtual {v1}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 105
    iget-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    check-cast v1, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 106
    .restart local v1       #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    iget-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v3, v0}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->setSelectedItem(I)V

    goto :goto_0

    .line 102
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v3

    .line 113
    goto :goto_0
.end method

.method protected getCurrentItemTitle()Ljava/lang/String;
    .locals 5

    .prologue
    .line 118
    iget-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 119
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_video_record_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, recordMode:Ljava/lang/String;
    const/4 v1, 0x0

    .line 122
    .local v1, item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    const-string v3, "recordmode_normal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    iget-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    check-cast v1, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 124
    .restart local v1       #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    if-eqz v1, :cond_2

    .line 125
    invoke-virtual {v1}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 137
    .end local v1           #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    .end local v2           #recordMode:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 128
    .restart local v1       #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    .restart local v2       #recordMode:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 129
    iget-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    check-cast v1, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 130
    .restart local v1       #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    invoke-virtual {v1}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 128
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    .end local v0           #i:I
    .end local v1           #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    .end local v2           #recordMode:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0b0042

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected makeItemList()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->makeRecordModeItemList()V

    .line 25
    return-void
.end method

.method protected setDefaultMode()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->hide()V

    .line 143
    iget v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mViewMode:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v4, v2}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->isSelectedItem(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 146
    .local v2, needChange:Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 147
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_video_record_mode"

    const-string v6, "recordmode_normal"

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 148
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 149
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "mode_menu_command"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 150
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.SetVideoRecordMode"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0b0042

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, defaultString:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v4, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController$1;

    invoke-direct {v4, p0, v1}, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController$1;-><init>(Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 160
    return-void

    .line 143
    .end local v1           #defaultString:Ljava/lang/String;
    .end local v2           #needChange:Z
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    invoke-virtual {v4, v2}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->isSelectedItem(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method
