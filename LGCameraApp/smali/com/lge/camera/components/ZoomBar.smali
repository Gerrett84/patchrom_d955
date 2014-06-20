.class public Lcom/lge/camera/components/ZoomBar;
.super Lcom/lge/camera/components/BarView;
.source "ZoomBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/lge/camera/components/BarView;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/components/BarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/components/BarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method private checkMaxAndMin(I)I
    .locals 1
    .parameter "inputValue"

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result p1

    .line 161
    :cond_0
    if-gez p1, :cond_1

    .line 162
    const/4 p1, 0x0

    .line 164
    :cond_1
    return p1
.end method

.method private updateZoom(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    new-instance v1, Lcom/lge/camera/components/ZoomBar$1;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/components/ZoomBar$1;-><init>(Lcom/lge/camera/components/ZoomBar;I)V

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 146
    :cond_0
    return-void
.end method


# virtual methods
.method public checkUpdateZoom(I)Z
    .locals 2
    .parameter "step"

    .prologue
    const/4 v0, 0x0

    .line 168
    iget-boolean v1, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    if-nez v1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v0

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v1}, Lcom/lge/camera/components/BarAction;->isPreviewing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getBarLayout()Lcom/lge/camera/components/RotateLayout;
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f09020a

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    return-object v0
.end method

.method protected getBarParentLayout()Landroid/view/View;
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f090209

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getBarSettingValue()V
    .locals 5

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorValue()I

    move-result v0

    .line 40
    .local v0, lValue:I
    iget-object v3, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v3}, Lcom/lge/camera/components/BarAction;->getCameraId()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 58
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v4, p0, Lcom/lge/camera/components/BarView;->barSettingKey:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/lge/camera/components/BarAction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "not found"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 44
    const/4 v0, 0x0

    .line 56
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/ZoomBar;->setCursorValue(I)V

    .line 57
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/ZoomBar;->setCursor(I)V

    goto :goto_0

    .line 46
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v4, p0, Lcom/lge/camera/components/BarView;->barSettingKey:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/lge/camera/components/BarAction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 48
    iget-object v3, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v3}, Lcom/lge/camera/components/BarAction;->getZoomCursorMaxStep()I

    move-result v2

    .line 49
    .local v2, zoomCursorMaxStep:I
    const/4 v1, 0x0

    .line 50
    .local v1, max:I
    iget-object v3, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v3}, Lcom/lge/camera/components/BarAction;->getMaxZoom()I

    move-result v1

    .line 52
    const/16 v3, 0x5a

    if-ne v2, v3, :cond_1

    if-lez v1, :cond_1

    .line 53
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/ZoomBar;->setCursorMaxStep(I)V

    goto :goto_1
.end method

.method public releaseBar()V
    .locals 5

    .prologue
    .line 229
    iget-boolean v2, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    if-nez v2, :cond_0

    .line 241
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v2}, Lcom/lge/camera/components/BarAction;->getZoomMaxValue()F

    move-result v2

    float-to-int v0, v2

    .line 234
    .local v0, zoomMaxValue:I
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getValue()I

    move-result v1

    .line 235
    .local v1, zoomValue:I
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v2

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_1

    .line 236
    mul-int v2, v1, v0

    int-to-float v2, v2

    const/high16 v3, 0x42b4

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 238
    :cond_1
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zoombar : mValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v3, p0, Lcom/lge/camera/components/BarView;->barSettingKey:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/components/BarAction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 240
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorValue()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/components/BarAction;->updateAllBars(II)V

    goto :goto_0
.end method

.method public setLayoutDimension()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a00fd

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->MIN_CURSOR_POS:I

    .line 63
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a00fe

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->MAX_CURSOR_POS:I

    .line 64
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a00ff

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->MAX_CURSOR_POS_PORT:I

    .line 65
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a0100

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->CURSOR_HEIGHT:F

    .line 66
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a0101

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->CURSOR_HEIGHT_PORT:F

    .line 67
    iget v0, p0, Lcom/lge/camera/components/BarView;->MAX_CURSOR_POS:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/BarView;->CURSOR_HEIGHT:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/lge/camera/components/BarView;->MIN_CURSOR_POS:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->CURSOR_POS_HEIGHT:I

    .line 68
    iget v0, p0, Lcom/lge/camera/components/BarView;->MAX_CURSOR_POS_PORT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/BarView;->CURSOR_HEIGHT_PORT:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/lge/camera/components/BarView;->MIN_CURSOR_POS:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->CURSOR_POS_HEIGHT_PORT:I

    .line 70
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a00cf

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_LEFT:I

    .line 71
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a00d1

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_TOP:I

    .line 72
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a00d0

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_RIGHT:I

    .line 73
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a00d2

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_BOTTOM:I

    .line 74
    return-void
.end method

.method public updateBar(IZZZ)V
    .locals 10
    .parameter "step"
    .parameter "gesture"
    .parameter "isLongTouch"
    .parameter "actionEnd"

    .prologue
    const/16 v9, 0x5a

    .line 78
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorValue()I

    move-result v2

    .line 79
    .local v2, lValue:I
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/ZoomBar;->checkUpdateZoom(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 129
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v6, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v6}, Lcom/lge/camera/components/BarAction;->getZoomMaxValue()F

    move-result v6

    float-to-int v4, v6

    .line 83
    .local v4, zoomMaxValue:I
    if-eqz p4, :cond_2

    .line 84
    move v5, v2

    .line 85
    .local v5, zoomValue:I
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 86
    mul-int v6, v5, v4

    div-int/lit8 v5, v6, 0x5a

    .line 88
    :cond_1
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "zoombar : mValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v6, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v7, p0, Lcom/lge/camera/components/BarView;->barSettingKey:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/lge/camera/components/BarAction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 92
    .end local v5           #zoomValue:I
    :cond_2
    if-eqz p2, :cond_6

    .line 93
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v6

    if-ne v6, v9, :cond_3

    .line 94
    mul-int v6, v2, v4

    div-int/lit8 v2, v6, 0x5a

    .line 96
    :cond_3
    invoke-virtual {p0, v4}, Lcom/lge/camera/components/ZoomBar;->setCursorMaxStep(I)V

    .line 108
    :goto_1
    add-int v3, v2, p1

    .line 110
    .local v3, updatedValue:I
    invoke-direct {p0, v3}, Lcom/lge/camera/components/ZoomBar;->checkMaxAndMin(I)I

    move-result v3

    .line 112
    if-eq v3, v2, :cond_5

    .line 114
    move v2, v3

    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "mValue"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    if-nez v2, :cond_4

    .line 120
    iget-object v6, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v7, p0, Lcom/lge/camera/components/BarView;->barSettingKey:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/lge/camera/components/BarAction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 122
    :cond_4
    iget-object v6, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v7, p0, Lcom/lge/camera/components/BarView;->barSettingCommand:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8, v0}, Lcom/lge/camera/components/BarAction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->resetDisplayTimeout()V

    .line 124
    iget-object v6, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const/4 v7, 0x0

    invoke-interface {v6, v7, v2}, Lcom/lge/camera/components/BarAction;->updateAllBars(II)V

    .line 126
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_5
    invoke-direct {p0, v2}, Lcom/lge/camera/components/ZoomBar;->updateZoom(I)V

    .line 127
    invoke-virtual {p0, v2}, Lcom/lge/camera/components/ZoomBar;->setCursorValue(I)V

    .line 128
    invoke-virtual {p0, v2}, Lcom/lge/camera/components/ZoomBar;->setCursor(I)V

    goto/16 :goto_0

    .line 98
    .end local v3           #updatedValue:I
    :cond_6
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v6

    if-eq v6, v9, :cond_7

    .line 100
    mul-int/lit8 v6, v2, 0x5a

    :try_start_0
    div-int v2, v6, v4
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_7
    :goto_2
    invoke-virtual {p0, v9}, Lcom/lge/camera/components/ZoomBar;->setCursorMaxStep(I)V

    goto :goto_1

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, e:Ljava/lang/ArithmeticException;
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ArithmeticException zoomMaxValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public updateBarWithValue(IZ)V
    .locals 7
    .parameter "value"
    .parameter "actionEnd"

    .prologue
    const/16 v6, 0x5a

    const/high16 v5, 0x42b4

    .line 182
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorValue()I

    move-result v1

    .line 183
    .local v1, lValue:I
    iget-boolean v4, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v4}, Lcom/lge/camera/components/BarAction;->isPreviewing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v4}, Lcom/lge/camera/components/BarAction;->getZoomMaxValue()F

    move-result v4

    float-to-int v2, v4

    .line 188
    .local v2, zoomMaxValue:I
    if-eqz p2, :cond_3

    .line 189
    move v3, v1

    .line 190
    .local v3, zoomValue:I
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 191
    mul-int v4, v3, v2

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 193
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v5, p0, Lcom/lge/camera/components/BarView;->barSettingKey:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/components/BarAction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 197
    .end local v3           #zoomValue:I
    :cond_3
    if-eq v1, p1, :cond_0

    .line 201
    move v1, p1

    .line 203
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v4

    if-ne v4, v6, :cond_4

    .line 204
    mul-int v4, v1, v2

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 206
    :cond_4
    invoke-virtual {p0, v2}, Lcom/lge/camera/components/ZoomBar;->setCursorMaxStep(I)V

    .line 208
    invoke-direct {p0, v1}, Lcom/lge/camera/components/ZoomBar;->checkMaxAndMin(I)I

    move-result v1

    .line 210
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/ZoomBar;->setCursor(I)V

    .line 212
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 213
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "mValue"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    if-nez v1, :cond_5

    .line 216
    iget-object v4, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v5, p0, Lcom/lge/camera/components/BarView;->barSettingKey:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/components/BarAction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 218
    :cond_5
    iget-object v4, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v5, p0, Lcom/lge/camera/components/BarView;->barSettingCommand:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6, v0}, Lcom/lge/camera/components/BarAction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->resetDisplayTimeout()V

    .line 221
    iget-object v4, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v1}, Lcom/lge/camera/components/BarAction;->updateAllBars(II)V

    .line 223
    invoke-direct {p0, v1}, Lcom/lge/camera/components/ZoomBar;->updateZoom(I)V

    .line 224
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/ZoomBar;->setCursorValue(I)V

    goto :goto_0
.end method

.method public updateZoomText()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 149
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v3, 0x7f09020e

    invoke-interface {v2, v3}, Lcom/lge/camera/components/BarAction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 150
    .local v1, zoomText:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 151
    const-string v2, "x %.1f"

    new-array v3, v9, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v5}, Lcom/lge/camera/components/BarAction;->getZoomRatio()F

    move-result v5

    const/high16 v6, 0x4120

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4024

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, str:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v2}, Lcom/lge/camera/components/BarAction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "LGLock3-Bold_13_0820.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 153
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .end local v0           #str:Ljava/lang/String;
    :cond_0
    return-void
.end method
