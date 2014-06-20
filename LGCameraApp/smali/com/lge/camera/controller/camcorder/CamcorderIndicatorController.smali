.class public Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;
.super Lcom/lge/camera/controller/IndicatorController;
.source "CamcorderIndicatorController.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/IndicatorController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected getLayout()Landroid/view/View;
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090039

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hideIndicator()V
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isClearView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090039

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public initController()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const v4, 0x7f090039

    const/4 v3, 0x0

    .line 24
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0900ca

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 26
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iput-boolean v5, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 30
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->updateGpsIndicator()V

    .line 31
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->updateStabilizationIndicator()V

    .line 32
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->updateFlashIndicator(ZLjava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->updateStorageIndicator()V

    .line 36
    invoke-super {p0}, Lcom/lge/camera/controller/IndicatorController;->initController()V

    .line 38
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->isCamcorderRotation(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    .line 41
    .local v0, degree:I
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090041

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 42
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f09003e

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 43
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f09003f

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 44
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090043

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 45
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f09003c

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 46
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090044

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 47
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f09003d

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 48
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f09003b

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 54
    .end local v0           #degree:I
    :cond_0
    return-void
.end method

.method protected invalidateParentLayout()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090039

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 239
    return-void
.end method

.method public showIndicator()V
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isClearView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090039

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public slideIndicatorIn(Z)V
    .locals 5
    .parameter "useAnimation"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f090044

    const/4 v2, 0x1

    .line 78
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    const v0, 0x7f090048

    invoke-virtual {p0, v0, v2, p1}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 88
    :goto_1
    const v0, 0x7f090043

    invoke-virtual {p0, v0, v2, p1}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 90
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f09003c

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 92
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/lge/camera/controller/IndicatorController;->mBattLevel:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_2

    .line 94
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 86
    :cond_1
    const v0, 0x7f090041

    invoke-virtual {p0, v0, v2, p1}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->setVisibleIndicatorView(IZZ)V

    goto :goto_1

    .line 96
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    invoke-virtual {p0, v3, v2, p1}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->setVisibleIndicatorView(IZZ)V

    goto :goto_0

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public slideIndicatorOut(Z)V
    .locals 4
    .parameter "useAnimation"

    .prologue
    const v3, 0x7f090044

    const/4 v2, 0x0

    .line 111
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    const v0, 0x7f090048

    invoke-virtual {p0, v0, v2, p1}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 120
    :goto_1
    const v0, 0x7f090043

    invoke-virtual {p0, v0, v2, p1}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 121
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f09003c

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 123
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/lge/camera/controller/IndicatorController;->mBattLevel:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_2

    .line 125
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 118
    :cond_1
    const v0, 0x7f090041

    invoke-virtual {p0, v0, v2, p1}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->setVisibleIndicatorView(IZZ)V

    goto :goto_1

    .line 127
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    invoke-virtual {p0, v3, v2, p1}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->setVisibleIndicatorView(IZZ)V

    goto :goto_0

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateAudioIndicator()V
    .locals 5

    .prologue
    .line 155
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAudioIndicator : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090040

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 160
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_video_audio_recording"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 161
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public updateFlashIndicator(ZLjava/lang/String;)V
    .locals 8
    .parameter "useLocalSetting"
    .parameter "value"

    .prologue
    const v7, 0x7f090041

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 167
    iget-boolean v3, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v3, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 172
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 178
    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 181
    :cond_3
    invoke-virtual {v0, v5}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    .line 184
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_flash"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 185
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_5

    .line 186
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 187
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResources()[I

    move-result-object v2

    .line 188
    .local v2, prefIconResource:[I
    invoke-virtual {v1, p2}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    aget v3, v2, v3

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 192
    .end local v2           #prefIconResource:[I
    :goto_1
    invoke-virtual {p0, v7, v6, v5}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->setVisibleIndicatorView(IZZ)V

    goto :goto_0

    .line 190
    :cond_4
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_1

    .line 194
    :cond_5
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateGpsIndicator()V
    .locals 5

    .prologue
    .line 199
    iget-boolean v3, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v3, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f09003e

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 203
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 205
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_tag_location"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 206
    .local v2, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_0

    .line 207
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    .line 208
    .local v1, loc:Landroid/location/Location;
    if-nez v1, :cond_2

    .line 209
    const-string v3, "CameraApp"

    const-string v4, "Location info not available"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 212
    :cond_2
    const v3, 0x7f020085

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public updateSizeIndicator()V
    .locals 4

    .prologue
    .line 141
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090042

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 147
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_preview_size_on_device"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 148
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public updateStabilizationIndicator()V
    .locals 4

    .prologue
    .line 218
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f09003f

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 222
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 225
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_video_stabilization"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 226
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method
