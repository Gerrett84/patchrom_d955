.class public Lcom/lge/camera/controller/camera/CameraShotModeMenuController;
.super Lcom/lge/camera/controller/ShotModeMenuController;
.source "CameraShotModeMenuController.java"


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

.method static synthetic access$000(Lcom/lge/camera/controller/camera/CameraShotModeMenuController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camera/CameraShotModeMenuController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method private getSceneModeItemResources(Ljava/lang/String;)[I
    .locals 5
    .parameter "sceneMode"

    .prologue
    .line 169
    const/4 v2, 0x0

    .line 170
    .local v2, titleId:I
    const/4 v1, 0x0

    .line 171
    .local v1, messageTextId:I
    const/4 v0, 0x0

    .line 173
    .local v0, messageImageId:I
    const-string v3, "portrait"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "landscape"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "sunset"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Smart shutter"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    :cond_0
    const/4 v3, 0x0

    .line 208
    :goto_0
    return-object v3

    .line 180
    :cond_1
    const-string v3, "sports"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 181
    const v2, 0x7f0b00c9

    .line 182
    const v1, 0x7f0b0288

    .line 183
    const v0, 0x7f0203ab

    .line 208
    :cond_2
    :goto_1
    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v4, 0x2

    aput v0, v3, v4

    goto :goto_0

    .line 184
    :cond_3
    const-string v3, "night"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 185
    const v2, 0x7f0b00ca

    .line 186
    const v1, 0x7f0b0351

    .line 187
    const v0, 0x7f0203a9

    goto :goto_1
.end method

.method private getShotModeItemResources(Ljava/lang/String;)[I
    .locals 5
    .parameter "modeString"

    .prologue
    .line 71
    const/4 v2, 0x0

    .line 72
    .local v2, titleId:I
    const/4 v1, 0x0

    .line 73
    .local v1, messageTextId:I
    const/4 v0, 0x0

    .line 75
    .local v0, messageImageId:I
    const-string v3, "shotmode_continuous"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    const v2, 0x7f0b00ef

    .line 77
    const v1, 0x7f0b029e

    .line 78
    const v0, 0x7f02039f

    .line 136
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

    .line 79
    :cond_0
    const-string v3, "shotmode_panorama"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    const v2, 0x7f0b00f3

    .line 81
    const v1, 0x7f0b02c4

    .line 82
    const v0, 0x7f0203a6

    goto :goto_0

    .line 83
    :cond_1
    const-string v3, "shotmode_free_panorama"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    const v2, 0x7f0b00f7

    .line 85
    const v1, 0x7f0b02fc

    .line 86
    const v0, 0x7f0203a1

    goto :goto_0

    .line 87
    :cond_2
    const-string v3, "shotmode_hdr"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 88
    const v2, 0x7f0b033e

    .line 89
    const v1, 0x7f0b033f

    .line 90
    const v0, 0x7f0203a2

    goto :goto_0

    .line 91
    :cond_3
    const-string v3, "shotmode_timemachine"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 92
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useTimeCatchShotTitle()Z

    move-result v3

    if-nez v3, :cond_4

    .line 93
    const v2, 0x7f0b0251

    .line 94
    const v1, 0x7f0b02c8

    .line 102
    :goto_1
    const v0, 0x7f0203ad

    goto :goto_0

    .line 95
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 96
    const v2, 0x7f0b02de

    .line 97
    const v1, 0x7f0b02e0

    goto :goto_1

    .line 99
    :cond_5
    const v2, 0x7f0b02de

    .line 100
    const v1, 0x7f0b02c8

    goto :goto_1

    .line 103
    :cond_6
    const-string v3, "shotmode_full_continuous"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 104
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 105
    const v2, 0x7f0b00f9

    .line 106
    const v1, 0x7f0b02f1

    .line 107
    const v0, 0x7f02039d

    goto/16 :goto_0

    .line 109
    :cond_7
    const v2, 0x7f0b00ef

    .line 110
    const v1, 0x7f0b029e

    .line 111
    const v0, 0x7f02039f

    goto/16 :goto_0

    .line 113
    :cond_8
    const-string v3, "shotmode_main_beauty"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "shotmode_front_beauty"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 115
    :cond_9
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v3

    const/16 v4, 0x13

    if-ne v3, v4, :cond_a

    .line 116
    const v2, 0x7f0b030d

    .line 117
    const v1, 0x7f0b02be

    .line 122
    :goto_2
    const v0, 0x7f0203a4

    goto/16 :goto_0

    .line 119
    :cond_a
    const v2, 0x7f0b0250

    .line 120
    const v1, 0x7f0b02be

    goto :goto_2

    .line 123
    :cond_b
    const-string v3, "shotmode_clear_shot"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 124
    const v2, 0x7f0b024d

    .line 125
    const v1, 0x7f0b02f2

    .line 126
    const v0, 0x7f02039e

    goto/16 :goto_0

    .line 127
    :cond_c
    const-string v3, "shotmode_dual_camera"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 128
    const v2, 0x7f0b0255

    .line 129
    const v1, 0x7f0b02fe

    .line 130
    const v0, 0x7f0203a0

    goto/16 :goto_0

    .line 132
    :cond_d
    const v2, 0x7f0b0042

    .line 133
    const v1, 0x7f0b0344

    .line 134
    const v0, 0x7f0203a5

    goto/16 :goto_0
.end method

.method private makeIntelligentAutoItemList()V
    .locals 10

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_smart_mode"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v8

    .line 36
    .local v8, listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v8, :cond_0

    .line 37
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getEntryCommand()Ljava/lang/String;

    move-result-object v7

    .line 38
    .local v7, menuCommand:Ljava/lang/String;
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0b02eb

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0b02f4

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 40
    .local v5, desc:Ljava/lang/String;
    const v6, 0x7f0203a3

    .line 41
    .local v6, imgResId:I
    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    const-string v2, "key_smart_mode"

    const-string v3, "on"

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private makeSceneModeItemList()V
    .locals 13

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_scene_mode"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v11

    .line 144
    .local v11, listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v11, :cond_1

    .line 145
    invoke-virtual {v11}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 146
    .local v8, entryValues:[Ljava/lang/CharSequence;
    invoke-virtual {v11}, Lcom/lge/camera/setting/ListPreference;->getEntryCommand()Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, menuCommand:Ljava/lang/String;
    const/4 v4, 0x0

    .line 149
    .local v4, title:Ljava/lang/String;
    const/4 v5, 0x0

    .line 150
    .local v5, desc:Ljava/lang/String;
    const/4 v6, 0x0

    .line 151
    .local v6, imgResId:I
    const/4 v10, 0x0

    .line 152
    .local v10, itemRes:[I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    array-length v0, v8

    if-ge v9, v0, :cond_1

    .line 153
    const-string v0, "auto"

    aget-object v1, v8, v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    aget-object v0, v8, v9

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->getSceneModeItemResources(Ljava/lang/String;)[I

    move-result-object v10

    .line 155
    if-eqz v10, :cond_0

    .line 156
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    aget v1, v10, v1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 157
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    aget v1, v10, v1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 158
    const/4 v0, 0x2

    aget v6, v10, v0

    .line 159
    iget-object v12, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    const-string v2, "key_scene_mode"

    aget-object v1, v8, v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 166
    .end local v4           #title:Ljava/lang/String;
    .end local v5           #desc:Ljava/lang/String;
    .end local v6           #imgResId:I
    .end local v7           #menuCommand:Ljava/lang/String;
    .end local v8           #entryValues:[Ljava/lang/CharSequence;
    .end local v9           #i:I
    .end local v10           #itemRes:[I
    .end local v11           #listPref:Lcom/lge/camera/setting/ListPreference;
    :cond_1
    return-void
.end method

.method private makeShotModeItemList()V
    .locals 13

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v11

    .line 50
    .local v11, listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v11, :cond_0

    .line 51
    invoke-virtual {v11}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 52
    .local v8, entryValues:[Ljava/lang/CharSequence;
    invoke-virtual {v11}, Lcom/lge/camera/setting/ListPreference;->getEntryCommand()Ljava/lang/String;

    move-result-object v7

    .line 54
    .local v7, menuCommand:Ljava/lang/String;
    const/4 v4, 0x0

    .line 55
    .local v4, title:Ljava/lang/String;
    const/4 v5, 0x0

    .line 56
    .local v5, desc:Ljava/lang/String;
    const/4 v6, 0x0

    .line 57
    .local v6, imgResId:I
    const/4 v10, 0x0

    .line 58
    .local v10, itemRes:[I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    array-length v0, v8

    if-ge v9, v0, :cond_0

    .line 59
    aget-object v0, v8, v9

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->getShotModeItemResources(Ljava/lang/String;)[I

    move-result-object v10

    .line 60
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    aget v1, v10, v1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 61
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    aget v1, v10, v1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 62
    const/4 v0, 0x2

    aget v6, v10, v0

    .line 63
    iget-object v12, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    const-string v2, "key_camera_shot_mode"

    aget-object v1, v8, v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 68
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
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 215
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_camera_shot_mode"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, shotMode:Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_smart_mode"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, intelliAuto:Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_scene_mode"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, sceneMode:Ljava/lang/String;
    const/4 v2, 0x0

    .line 220
    .local v2, item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mDescText:Landroid/widget/TextView;

    if-nez v6, :cond_1

    :cond_0
    move v0, v5

    .line 269
    :goto_0
    return v0

    .line 227
    :cond_1
    const-string v6, "on"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 228
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_8

    .line 229
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    check-cast v2, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 230
    .restart local v2       #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    const-string v6, "key_smart_mode"

    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 231
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v5, v0}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->setSelectedItem(I)V

    .line 234
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    invoke-virtual {v5, v0}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->setSelectedItem(I)V

    goto :goto_0

    .line 228
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 238
    .end local v0           #i:I
    :cond_3
    const-string v6, "shotmode_normal"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "auto"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 240
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    check-cast v2, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 241
    .restart local v2       #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v6, v5}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->setSelectedItem(I)V

    .line 244
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    invoke-virtual {v6, v5}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->setSelectedItem(I)V

    move v0, v5

    .line 245
    goto :goto_0

    .line 246
    :cond_4
    const-string v6, "shotmode_normal"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 247
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_8

    .line 248
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    check-cast v2, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 249
    .restart local v2       #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 250
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v5, v0}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->setSelectedItem(I)V

    .line 253
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    invoke-virtual {v5, v0}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->setSelectedItem(I)V

    goto/16 :goto_0

    .line 247
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 258
    .end local v0           #i:I
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_8

    .line 259
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    check-cast v2, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 260
    .restart local v2       #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 261
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v5, v0}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->setSelectedItem(I)V

    .line 264
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    invoke-virtual {v5, v0}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->setSelectedItem(I)V

    goto/16 :goto_0

    .line 258
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    move v0, v5

    .line 269
    goto/16 :goto_0
.end method

.method protected getCurrentItemTitle()Ljava/lang/String;
    .locals 7

    .prologue
    .line 275
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    .line 276
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_shot_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 277
    .local v4, shotMode:Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_smart_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, intelliAuto:Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_scene_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 279
    .local v3, sceneMode:Ljava/lang/String;
    const/4 v2, 0x0

    .line 281
    .local v2, item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    const-string v5, "on"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 282
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 283
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    check-cast v2, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 284
    .restart local v2       #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    if-eqz v2, :cond_0

    const-string v5, "key_smart_mode"

    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 286
    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 313
    .end local v0           #i:I
    .end local v1           #intelliAuto:Ljava/lang/String;
    .end local v2           #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    .end local v3           #sceneMode:Ljava/lang/String;
    .end local v4           #shotMode:Ljava/lang/String;
    :goto_1
    return-object v5

    .line 282
    .restart local v0       #i:I
    .restart local v1       #intelliAuto:Ljava/lang/String;
    .restart local v2       #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    .restart local v3       #sceneMode:Ljava/lang/String;
    .restart local v4       #shotMode:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    .end local v0           #i:I
    :cond_1
    const-string v5, "shotmode_normal"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "auto"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 291
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    check-cast v2, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 292
    .restart local v2       #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    if-eqz v2, :cond_6

    .line 293
    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 295
    :cond_2
    const-string v5, "shotmode_normal"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 296
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 297
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    check-cast v2, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 298
    .restart local v2       #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 300
    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 296
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 304
    .end local v0           #i:I
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 305
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    check-cast v2, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 306
    .restart local v2       #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 308
    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 304
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 313
    .end local v0           #i:I
    .end local v1           #intelliAuto:Ljava/lang/String;
    .end local v2           #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    .end local v3           #sceneMode:Ljava/lang/String;
    .end local v4           #shotMode:Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0b0042

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method protected makeItemList()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->makeShotModeItemList()V

    .line 25
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->makeIntelligentAutoItemList()V

    .line 26
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->makeSceneModeItemList()V

    .line 27
    return-void
.end method

.method protected setDefaultMode()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 318
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->hide()V

    .line 320
    iget v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mViewMode:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v4, v2}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->isSelectedItem(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 323
    .local v2, needChange:Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 324
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shot_mode"

    const-string v6, "shotmode_normal"

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 325
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 326
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "mode_menu_command"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 327
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.SetCameraShotMode"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 330
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0b0042

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, defaultString:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v4, Lcom/lge/camera/controller/camera/CameraShotModeMenuController$1;

    invoke-direct {v4, p0, v1}, Lcom/lge/camera/controller/camera/CameraShotModeMenuController$1;-><init>(Lcom/lge/camera/controller/camera/CameraShotModeMenuController;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 337
    return-void

    .line 320
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
