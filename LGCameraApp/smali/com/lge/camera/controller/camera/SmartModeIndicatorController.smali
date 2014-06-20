.class public Lcom/lge/camera/controller/camera/SmartModeIndicatorController;
.super Lcom/lge/camera/controller/Controller;
.source "SmartModeIndicatorController.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 17
    return-void
.end method

.method private setIndicatorResources()V
    .locals 3

    .prologue
    .line 144
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0901eb

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 148
    .local v0, iconView:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_2

    .line 149
    const v1, 0x7f020379

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 151
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0901ec

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #iconView:Lcom/lge/camera/components/RotateImageView;
    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 152
    .restart local v0       #iconView:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 153
    const v1, 0x7f020378

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateSceneIndicator(I)V
    .locals 4
    .parameter "sceneMode"

    .prologue
    const v3, 0x7f020376

    .line 68
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0901ea

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 72
    .local v0, iconView:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 76
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 81
    :pswitch_1
    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 78
    :pswitch_2
    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 84
    :pswitch_3
    const v1, 0x7f020374

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 87
    :pswitch_4
    const v1, 0x7f020373

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 90
    :pswitch_5
    const v1, 0x7f020372

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 93
    :pswitch_6
    const v1, 0x7f020371

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 96
    :pswitch_7
    const v1, 0x7f020375

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 99
    :pswitch_8
    const v1, 0x7f020377

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 102
    :pswitch_9
    const v1, 0x7f02037a

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 105
    :pswitch_a
    const v1, 0x7f020370

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_2
    .end packed-switch
.end method

.method private updateStabilizationByHightISOIndicator(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 128
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0901ec

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 132
    .local v0, iconView:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 136
    if-eqz p1, :cond_2

    .line 137
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 139
    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateTriPODIndicator(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 113
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0901eb

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 117
    .local v0, iconView:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 120
    if-eqz p1, :cond_2

    .line 121
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 123
    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public initController()V
    .locals 5

    .prologue
    const v4, 0x7f0901e9

    const/4 v3, 0x0

    .line 20
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportSmartMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0900cb

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 25
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 27
    const-string v0, "on"

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_smart_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 33
    :goto_0
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->setIndicatorResources()V

    .line 34
    const/16 v0, 0xf

    invoke-virtual {p0, v0, v3, v3}, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->setSmartModeIndicator(IZZ)V

    .line 35
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->startRotation(IZ)V

    .line 39
    :cond_1
    return-void

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSmartModeIndicator(IZZ)V
    .locals 1
    .parameter "sceneMode"
    .parameter "standUpdate"
    .parameter "stabilizeUpdate"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->updateSceneIndicator(I)V

    .line 63
    invoke-direct {p0, p2}, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->updateTriPODIndicator(Z)V

    .line 64
    invoke-direct {p0, p3}, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->updateStabilizationByHightISOIndicator(Z)V

    goto :goto_0
.end method

.method public setVisibleOfSmartModeIndicator(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 42
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_0

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 46
    .local v0, visible:I
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0901e9

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 45
    .end local v0           #visible:I
    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public startRotation(IZ)V
    .locals 3
    .parameter "degree"
    .parameter "animation"

    .prologue
    const v2, 0x7f0901e9

    .line 158
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0901ea

    invoke-interface {v0, v1, p1, v2, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 162
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0901eb

    invoke-interface {v0, v1, p1, v2, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 163
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0901ec

    invoke-interface {v0, v1, p1, v2, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    goto :goto_0
.end method

.method public updateSmartModeIndicator(IZZ)V
    .locals 6
    .parameter "sceneMode"
    .parameter "standUpdate"
    .parameter "stabilizeUpdate"

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0901e9

    const/16 v3, 0x12c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2, v1, v3, v5}, Lcom/lge/camera/util/Util;->startAlphaAnimation(Landroid/view/View;IIILandroid/view/animation/Animation$AnimationListener;)V

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->setSmartModeIndicator(IZZ)V

    .line 55
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1, v2, v3, v5}, Lcom/lge/camera/util/Util;->startAlphaAnimation(Landroid/view/View;IIILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method
