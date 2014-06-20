.class public Lcom/lge/camera/components/ZoomProgressBar;
.super Landroid/widget/ImageView;
.source "ZoomProgressBar.java"


# instance fields
.field private mCurs:I

.field private mInit:Z

.field private mMax:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 11
    const/16 v0, 0x64

    iput v0, p0, Lcom/lge/camera/components/ZoomProgressBar;->mMax:I

    .line 12
    iput v1, p0, Lcom/lge/camera/components/ZoomProgressBar;->mCurs:I

    .line 13
    iput-boolean v1, p0, Lcom/lge/camera/components/ZoomProgressBar;->mInit:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/16 v0, 0x64

    iput v0, p0, Lcom/lge/camera/components/ZoomProgressBar;->mMax:I

    .line 12
    iput v1, p0, Lcom/lge/camera/components/ZoomProgressBar;->mCurs:I

    .line 13
    iput-boolean v1, p0, Lcom/lge/camera/components/ZoomProgressBar;->mInit:Z

    .line 21
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/lge/camera/components/ZoomProgressBar;->mMax:I

    return v0
.end method

.method public initZoomProgressBar(I)V
    .locals 1
    .parameter "maxCount"

    .prologue
    .line 24
    iput p1, p0, Lcom/lge/camera/components/ZoomProgressBar;->mMax:I

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/components/ZoomProgressBar;->mInit:Z

    .line 26
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 45
    iget-boolean v4, p0, Lcom/lge/camera/components/ZoomProgressBar;->mInit:Z

    if-nez v4, :cond_0

    .line 59
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomProgressBar;->getHeight()I

    move-result v4

    int-to-float v0, v4

    .line 50
    .local v0, height:F
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomProgressBar;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 51
    .local v3, width:F
    cmpl-float v4, v0, v5

    if-lez v4, :cond_1

    .line 52
    iget v4, p0, Lcom/lge/camera/components/ZoomProgressBar;->mMax:I

    int-to-float v4, v4

    div-float v1, v4, v0

    .line 53
    .local v1, step:F
    cmpl-float v4, v1, v5

    if-lez v4, :cond_1

    .line 54
    iget v4, p0, Lcom/lge/camera/components/ZoomProgressBar;->mCurs:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    float-to-int v2, v4

    .line 55
    .local v2, value:I
    int-to-float v4, v2

    sub-float v4, v0, v4

    invoke-virtual {p1, v5, v4, v3, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 58
    .end local v1           #step:F
    .end local v2           #value:I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/lge/camera/components/ZoomProgressBar;->mInit:Z

    if-nez v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 36
    :cond_0
    iget v0, p0, Lcom/lge/camera/components/ZoomProgressBar;->mMax:I

    if-le p1, v0, :cond_1

    .line 37
    iget p1, p0, Lcom/lge/camera/components/ZoomProgressBar;->mMax:I

    .line 39
    :cond_1
    iput p1, p0, Lcom/lge/camera/components/ZoomProgressBar;->mCurs:I

    .line 40
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomProgressBar;->invalidate()V

    goto :goto_0
.end method
