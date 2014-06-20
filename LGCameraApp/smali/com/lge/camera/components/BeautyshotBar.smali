.class public Lcom/lge/camera/components/BeautyshotBar;
.super Lcom/lge/camera/components/BarView;
.source "BeautyshotBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/lge/camera/components/BarView;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/components/BarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/components/BarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    return-void
.end method


# virtual methods
.method protected getBarLayout()Lcom/lge/camera/components/RotateLayout;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f090017

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    return-object v0
.end method

.method protected getBarParentLayout()Landroid/view/View;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f090016

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getBarSettingValue()V
    .locals 4

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, lValue:I
    iget-object v1, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v1}, Lcom/lge/camera/components/BarAction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const-string v2, "key_beautyshot"

    invoke-interface {v1, v2}, Lcom/lge/camera/components/BarAction;->getBarPreferenceSettingValue(Ljava/lang/String;)I

    move-result v0

    .line 32
    iget-object v1, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const-string v2, "key_beautyshot"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/components/BarAction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 34
    :cond_0
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BeautyshotBar;->setCursor(I)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BeautyshotBar;->setCursorValue(I)V

    .line 36
    iget-object v1, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const-string v2, "com.lge.camera.command.setting.SetBeautyshot"

    invoke-interface {v1, v2}, Lcom/lge/camera/components/BarAction;->doCommandNoneParameter(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public releaseBar()V
    .locals 4

    .prologue
    .line 67
    iget-boolean v1, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    if-nez v1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/components/BeautyshotBar;->getValue()I

    move-result v0

    .line 72
    .local v0, value:I
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v2, p0, Lcom/lge/camera/components/BarView;->barSettingKey:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/components/BarAction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    iget-object v1, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/lge/camera/components/BeautyshotBar;->getCursorValue()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/components/BarAction;->updateAllBars(II)V

    goto :goto_0
.end method

.method public setLayoutDimension()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a00fd

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->MIN_CURSOR_POS:I

    .line 42
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a00fe

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->MAX_CURSOR_POS:I

    .line 43
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a00ff

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->MAX_CURSOR_POS_PORT:I

    .line 44
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a0100

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->CURSOR_HEIGHT:F

    .line 45
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a0101

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->CURSOR_HEIGHT_PORT:F

    .line 46
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

    .line 47
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

    .line 49
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a0140

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_LEFT:I

    .line 50
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a0141

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_TOP:I

    .line 51
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a0142

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_RIGHT:I

    .line 52
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a0143

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_BOTTOM:I

    .line 53
    return-void
.end method
