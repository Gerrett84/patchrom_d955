.class public Lcom/lge/camera/components/DragView;
.super Landroid/view/View;
.source "DragView.java"


# static fields
.field private static final DRAG_SCALE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "DragView"


# instance fields
.field private mAnimationScale:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mLayout:Landroid/view/ViewGroup;

.field private mPaint:Landroid/graphics/Paint;

.field private mRegistrationX:I

.field private mRegistrationY:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/lge/camera/components/DragView;->mAnimationScale:F

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/graphics/Bitmap;IIIIII)V
    .locals 9
    .parameter "context"
    .parameter "vg"
    .parameter "bitmap"
    .parameter "regX"
    .parameter "regY"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/lge/camera/components/DragView;->mAnimationScale:F

    .line 38
    iput-object p2, p0, Lcom/lge/camera/components/DragView;->mLayout:Landroid/view/ViewGroup;

    .line 40
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 41
    .local v6, scale:Landroid/graphics/Matrix;
    move/from16 v0, p8

    int-to-float v8, v0

    .line 42
    .local v8, scaleFactor:F
    const/4 v1, 0x0

    add-float/2addr v1, v8

    div-float v8, v1, v8

    .line 43
    invoke-virtual {v6, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 44
    const/4 v7, 0x1

    move-object v1, p3

    move v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p9

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/components/DragView;->mBitmap:Landroid/graphics/Bitmap;

    .line 46
    iget-object v1, p0, Lcom/lge/camera/components/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/lge/camera/components/DragView;->mWidth:I

    .line 47
    iget-object v1, p0, Lcom/lge/camera/components/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/lge/camera/components/DragView;->mHeight:I

    .line 49
    add-int/lit8 v1, p4, 0x0

    iput v1, p0, Lcom/lge/camera/components/DragView;->mRegistrationX:I

    .line 50
    add-int/lit8 v1, p5, 0x0

    iput v1, p0, Lcom/lge/camera/components/DragView;->mRegistrationY:I

    .line 51
    return-void
.end method


# virtual methods
.method public move(II)V
    .locals 5
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 123
    iget v0, p0, Lcom/lge/camera/components/DragView;->mRegistrationX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/lge/camera/components/DragView;->mRegistrationY:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/lge/camera/components/DragView;->mRegistrationX:I

    sub-int v2, p1, v2

    invoke-virtual {p0}, Lcom/lge/camera/components/DragView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lge/camera/components/DragView;->mRegistrationY:I

    sub-int v3, p2, v3

    invoke-virtual {p0}, Lcom/lge/camera/components/DragView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/components/DragView;->layout(IIII)V

    .line 124
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 80
    iget-object v0, p0, Lcom/lge/camera/components/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 81
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 62
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 63
    .local v5, p:Landroid/graphics/Paint;
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    const v0, -0x7722ffef

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    invoke-virtual {p0}, Lcom/lge/camera/components/DragView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/lge/camera/components/DragView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 67
    iget v7, p0, Lcom/lge/camera/components/DragView;->mAnimationScale:F

    .line 68
    .local v7, scale:F
    const v0, 0x3f7fbe77

    cmpg-float v0, v7, v0

    if-gez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/lge/camera/components/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v8, v0

    .line 70
    .local v8, width:F
    mul-float v0, v8, v7

    sub-float v0, v8, v0

    const/high16 v2, 0x4000

    div-float v6, v0, v2

    .line 71
    .local v6, offset:F
    invoke-virtual {p1, v6, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 72
    invoke-virtual {p1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 74
    .end local v6           #offset:F
    .end local v8           #width:F
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/DragView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/lge/camera/components/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 75
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lge/camera/components/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/lge/camera/components/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/components/DragView;->setMeasuredDimension(II)V

    .line 56
    return-void
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lge/camera/components/DragView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 128
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .parameter "paint"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/lge/camera/components/DragView;->mPaint:Landroid/graphics/Paint;

    .line 85
    invoke-virtual {p0}, Lcom/lge/camera/components/DragView;->invalidate()V

    .line 86
    return-void
.end method

.method public show(II)V
    .locals 7
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 90
    iget v5, p0, Lcom/lge/camera/components/DragView;->mRegistrationX:I

    sub-int v1, p1, v5

    .line 91
    .local v1, l:I
    iget v5, p0, Lcom/lge/camera/components/DragView;->mRegistrationY:I

    sub-int v4, p2, v5

    .line 92
    .local v4, t:I
    iget v5, p0, Lcom/lge/camera/components/DragView;->mRegistrationX:I

    sub-int v5, p1, v5

    iget v6, p0, Lcom/lge/camera/components/DragView;->mWidth:I

    add-int v3, v5, v6

    .line 93
    .local v3, r:I
    iget v5, p0, Lcom/lge/camera/components/DragView;->mRegistrationY:I

    sub-int v5, p2, v5

    iget v6, p0, Lcom/lge/camera/components/DragView;->mHeight:I

    add-int v0, v5, v6

    .line 97
    .local v0, b:I
    iget-object v5, p0, Lcom/lge/camera/components/DragView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 99
    invoke-virtual {p0}, Lcom/lge/camera/components/DragView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 100
    .local v2, mp:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 101
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 102
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 103
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 105
    invoke-virtual {p0, v2}, Lcom/lge/camera/components/DragView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    return-void
.end method
