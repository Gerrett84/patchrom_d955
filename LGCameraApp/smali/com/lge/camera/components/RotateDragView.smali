.class public Lcom/lge/camera/components/RotateDragView;
.super Lcom/lge/camera/components/RotateImageView;
.source "RotateDragView.java"


# static fields
.field private static final DIFF_OFFSET:I = 0x1

.field private static final DRAG_SCALE:I


# instance fields
.field mB:I

.field private mHeight:I

.field mL:I

.field private mLayout:Landroid/view/ViewGroup;

.field mR:I

.field private mRegistrationX:I

.field private mRegistrationY:I

.field mT:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/lge/camera/components/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;IIIIII)V
    .locals 3
    .parameter "context"
    .parameter "vg"
    .parameter "regX"
    .parameter "regY"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/lge/camera/components/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p2, p0, Lcom/lge/camera/components/RotateDragView;->mLayout:Landroid/view/ViewGroup;

    .line 32
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 33
    .local v0, scale:Landroid/graphics/Matrix;
    int-to-float v1, p7

    .line 34
    .local v1, scaleFactor:F
    const/4 v2, 0x0

    add-float/2addr v2, v1

    div-float v1, v2, v1

    .line 35
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 37
    iput p7, p0, Lcom/lge/camera/components/RotateDragView;->mWidth:I

    .line 38
    iput p8, p0, Lcom/lge/camera/components/RotateDragView;->mHeight:I

    .line 40
    add-int/lit8 v2, p3, 0x0

    iput v2, p0, Lcom/lge/camera/components/RotateDragView;->mRegistrationX:I

    .line 41
    add-int/lit8 v2, p4, 0x0

    iput v2, p0, Lcom/lge/camera/components/RotateDragView;->mRegistrationY:I

    .line 42
    return-void
.end method

.method private checkDiffOffset(IIII)V
    .locals 4
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 117
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/lge/camera/components/RotateDragView;->mL:I

    if-gt v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/lge/camera/components/RotateDragView;->mL:I

    if-ge v0, v1, :cond_4

    :cond_0
    add-int/lit8 v0, p2, -0x1

    iget v1, p0, Lcom/lge/camera/components/RotateDragView;->mT:I

    if-gt v0, v1, :cond_1

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lcom/lge/camera/components/RotateDragView;->mT:I

    if-ge v0, v1, :cond_4

    :cond_1
    add-int/lit8 v0, p3, -0x1

    iget v1, p0, Lcom/lge/camera/components/RotateDragView;->mR:I

    if-gt v0, v1, :cond_2

    add-int/lit8 v0, p3, 0x1

    iget v1, p0, Lcom/lge/camera/components/RotateDragView;->mR:I

    if-ge v0, v1, :cond_4

    :cond_2
    add-int/lit8 v0, p4, -0x1

    iget v1, p0, Lcom/lge/camera/components/RotateDragView;->mB:I

    if-gt v0, v1, :cond_3

    add-int/lit8 v0, p4, 0x1

    iget v1, p0, Lcom/lge/camera/components/RotateDragView;->mB:I

    if-ge v0, v1, :cond_4

    .line 121
    :cond_3
    iget v0, p0, Lcom/lge/camera/components/RotateDragView;->mL:I

    iget v1, p0, Lcom/lge/camera/components/RotateDragView;->mT:I

    iget v2, p0, Lcom/lge/camera/components/RotateDragView;->mR:I

    iget v3, p0, Lcom/lge/camera/components/RotateDragView;->mB:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/components/RotateDragView;->layout(IIII)V

    .line 123
    :cond_4
    return-void
.end method


# virtual methods
.method public move(II)V
    .locals 4
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 104
    iget v0, p0, Lcom/lge/camera/components/RotateDragView;->mRegistrationX:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/lge/camera/components/RotateDragView;->mL:I

    .line 105
    iget v0, p0, Lcom/lge/camera/components/RotateDragView;->mRegistrationY:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/lge/camera/components/RotateDragView;->mT:I

    .line 106
    iget v0, p0, Lcom/lge/camera/components/RotateDragView;->mRegistrationX:I

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/lge/camera/components/RotateDragView;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/RotateDragView;->mR:I

    .line 107
    iget v0, p0, Lcom/lge/camera/components/RotateDragView;->mRegistrationY:I

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcom/lge/camera/components/RotateDragView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/RotateDragView;->mB:I

    .line 109
    iget v0, p0, Lcom/lge/camera/components/RotateDragView;->mL:I

    iget v1, p0, Lcom/lge/camera/components/RotateDragView;->mT:I

    iget v2, p0, Lcom/lge/camera/components/RotateDragView;->mR:I

    iget v3, p0, Lcom/lge/camera/components/RotateDragView;->mB:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/components/RotateDragView;->layout(IIII)V

    .line 110
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Lcom/lge/camera/components/RotateImageView;->onDetachedFromWindow()V

    .line 73
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/lge/camera/components/RotateImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 68
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/lge/camera/components/RotateDragView;->checkDiffOffset(IIII)V

    .line 54
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 46
    iget v0, p0, Lcom/lge/camera/components/RotateDragView;->mWidth:I

    iget v1, p0, Lcom/lge/camera/components/RotateDragView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/components/RotateDragView;->setMeasuredDimension(II)V

    .line 47
    return-void
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lge/camera/components/RotateDragView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 114
    return-void
.end method

.method public show(II)V
    .locals 3
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 78
    iget v1, p0, Lcom/lge/camera/components/RotateDragView;->mRegistrationX:I

    sub-int v1, p1, v1

    iput v1, p0, Lcom/lge/camera/components/RotateDragView;->mL:I

    .line 79
    iget v1, p0, Lcom/lge/camera/components/RotateDragView;->mRegistrationY:I

    sub-int v1, p2, v1

    iput v1, p0, Lcom/lge/camera/components/RotateDragView;->mT:I

    .line 80
    iget v1, p0, Lcom/lge/camera/components/RotateDragView;->mRegistrationX:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/lge/camera/components/RotateDragView;->mWidth:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/lge/camera/components/RotateDragView;->mR:I

    .line 81
    iget v1, p0, Lcom/lge/camera/components/RotateDragView;->mRegistrationY:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/lge/camera/components/RotateDragView;->mHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/lge/camera/components/RotateDragView;->mB:I

    .line 85
    iget-object v1, p0, Lcom/lge/camera/components/RotateDragView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateDragView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 88
    .local v0, mp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/lge/camera/components/RotateDragView;->mL:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 89
    iget v1, p0, Lcom/lge/camera/components/RotateDragView;->mT:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 90
    iget v1, p0, Lcom/lge/camera/components/RotateDragView;->mR:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 91
    iget v1, p0, Lcom/lge/camera/components/RotateDragView;->mB:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 93
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/RotateDragView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    return-void
.end method
