.class public Lcom/lge/camera/components/ManualFocusBar;
.super Lcom/lge/camera/components/BarView;
.source "ManualFocusBar.java"


# instance fields
.field private mManualFocusValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lge/camera/components/BarView;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/ManualFocusBar;->mManualFocusValue:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/components/BarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/ManualFocusBar;->mManualFocusValue:I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/components/BarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/ManualFocusBar;->mManualFocusValue:I

    .line 15
    return-void
.end method


# virtual methods
.method protected getBarLayout()Lcom/lge/camera/components/RotateLayout;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0900ed

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    return-object v0
.end method

.method protected getBarParentLayout()Landroid/view/View;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0900ec

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getBarSettingValue()V
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/lge/camera/components/ManualFocusBar;->getCursorValue()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/ManualFocusBar;->mManualFocusValue:I

    .line 28
    iget v0, p0, Lcom/lge/camera/components/ManualFocusBar;->mManualFocusValue:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/ManualFocusBar;->setCursorValue(I)V

    .line 29
    iget v0, p0, Lcom/lge/camera/components/ManualFocusBar;->mManualFocusValue:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/ManualFocusBar;->setCursor(I)V

    .line 30
    return-void
.end method

.method public getCurrentManualFocusValue()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/lge/camera/components/ManualFocusBar;->mManualFocusValue:I

    return v0
.end method

.method public releaseBar()V
    .locals 4

    .prologue
    .line 60
    iget-boolean v1, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    if-nez v1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/components/ManualFocusBar;->getValue()I

    move-result v0

    .line 65
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

    .line 66
    invoke-virtual {p0}, Lcom/lge/camera/components/ManualFocusBar;->getCursorValue()I

    move-result v1

    iput v1, p0, Lcom/lge/camera/components/ManualFocusBar;->mManualFocusValue:I

    .line 67
    iget-object v1, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const/16 v2, 0x8

    iget v3, p0, Lcom/lge/camera/components/ManualFocusBar;->mManualFocusValue:I

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/components/BarAction;->updateAllBars(II)V

    goto :goto_0
.end method

.method public setBarSettingValue(Ljava/lang/String;I)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 72
    iput p2, p0, Lcom/lge/camera/components/ManualFocusBar;->mManualFocusValue:I

    .line 73
    return-void
.end method

.method public setLayoutDimension()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a00fd

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->MIN_CURSOR_POS:I

    .line 35
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a00fe

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->MAX_CURSOR_POS:I

    .line 36
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a00ff

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->MAX_CURSOR_POS_PORT:I

    .line 37
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a0100

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->CURSOR_HEIGHT:F

    .line 38
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a0101

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->CURSOR_HEIGHT_PORT:F

    .line 39
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

    .line 40
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

    .line 42
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a0140

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_LEFT:I

    .line 43
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a0141

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_TOP:I

    .line 44
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a0142

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_RIGHT:I

    .line 45
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0a0143

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_BOTTOM:I

    .line 46
    return-void
.end method
