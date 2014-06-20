.class public Lcom/lge/camera/components/SettingBrightnessBarExpand;
.super Lcom/lge/camera/components/BrightnessBar;
.source "SettingBrightnessBarExpand.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/lge/camera/components/BrightnessBar;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/components/BrightnessBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/components/BrightnessBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    return-void
.end method


# virtual methods
.method protected disallowTouchInParentView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 49
    .local v0, parent:Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    .line 50
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 51
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method public setLayoutDimension()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a00fd

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->MIN_CURSOR_POS:I

    .line 29
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a0105

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->CURSOR_WIDTH:F

    .line 30
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a0106

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->CURSOR_POS_WIDTH:I

    .line 31
    iget v0, p0, Lcom/lge/camera/components/BarView;->MIN_CURSOR_POS:I

    iget v1, p0, Lcom/lge/camera/components/BarView;->CURSOR_POS_WIDTH:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/BarView;->MAX_CURSOR_POS:I

    .line 33
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a0140

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_LEFT:I

    .line 34
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a0141

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_TOP:I

    .line 35
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a0142

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_RIGHT:I

    .line 36
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a0143

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_BOTTOM:I

    .line 37
    return-void
.end method

.method public startRotation(IZ)V
    .locals 2
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p1}, Lcom/lge/camera/components/BarAction;->rotateSettingBar(II)V

    .line 44
    :cond_0
    return-void
.end method

.method public updateBar(IZZZ)V
    .locals 6
    .parameter "step"
    .parameter "others"
    .parameter "isLongTouch"
    .parameter "actionEnd"

    .prologue
    .line 57
    iget v1, p0, Lcom/lge/camera/components/BarView;->mValue:I

    .line 58
    .local v1, lValue:I
    iget-boolean v3, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    if-eqz v3, :cond_1

    if-nez p4, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    if-nez v3, :cond_2

    .line 102
    :cond_1
    :goto_0
    return-void

    .line 63
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v3}, Lcom/lge/camera/components/BarAction;->isPreviewing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    if-eqz p4, :cond_3

    .line 68
    iget-object v3, p0, Lcom/lge/camera/components/BarView;->barSettingKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lge/camera/components/SettingBrightnessBarExpand;->getCursorValue()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/lge/camera/components/SettingBrightnessBarExpand;->setBarSettingValue(Ljava/lang/String;I)V

    .line 69
    if-eqz p3, :cond_1

    .line 70
    iget-object v3, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v4, p0, Lcom/lge/camera/components/BarView;->barSettingCommand:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/lge/camera/components/BarAction;->doCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_3
    add-int v2, v1, p1

    .line 77
    .local v2, updatedValue:I
    iget v3, p0, Lcom/lge/camera/components/BarView;->mCursorMaxStep:I

    if-le v2, v3, :cond_4

    .line 78
    iget v2, p0, Lcom/lge/camera/components/BarView;->mCursorMaxStep:I

    .line 81
    :cond_4
    if-gez v2, :cond_5

    .line 82
    const/4 v2, 0x0

    .line 86
    :cond_5
    if-eq v2, v1, :cond_1

    .line 88
    invoke-virtual {p0, v2}, Lcom/lge/camera/components/SettingBrightnessBarExpand;->setCursorValue(I)V

    .line 89
    invoke-virtual {p0}, Lcom/lge/camera/components/SettingBrightnessBarExpand;->getCursorValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/lge/camera/components/SettingBrightnessBarExpand;->setCursor(I)V

    .line 91
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "mValue"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    if-eqz p3, :cond_6

    .line 95
    iget-object v3, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v4, p0, Lcom/lge/camera/components/BarView;->barSettingCommand:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5, v0}, Lcom/lge/camera/components/BarAction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/components/SettingBrightnessBarExpand;->resetDisplayTimeout()V

    .line 100
    invoke-virtual {p0}, Lcom/lge/camera/components/SettingBrightnessBarExpand;->updateAllBars()V

    goto :goto_0

    .line 97
    :cond_6
    iget-object v3, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v4, p0, Lcom/lge/camera/components/BarView;->barSettingCommand:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/lge/camera/components/BarAction;->doCommand(Ljava/lang/String;)V

    goto :goto_1
.end method
