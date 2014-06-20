.class public Lcom/lge/camera/components/PIPResizeHandlerView;
.super Landroid/view/View;
.source "PIPResizeHandlerView.java"


# instance fields
.field private mLeftTopX:I

.field private mLeftTopY:I

.field private mMovingEdges:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mResizeHandler_Bottom_Left:Landroid/graphics/Bitmap;

.field private mResizeHandler_Bottom_Right:Landroid/graphics/Bitmap;

.field private mResizeHandler_Top_Left:Landroid/graphics/Bitmap;

.field private mResizeHandler_Top_Right:Landroid/graphics/Bitmap;

.field private mRightBottomX:I

.field private mRightBottomY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopX:I

    .line 17
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopY:I

    .line 18
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomX:I

    .line 19
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomY:I

    .line 20
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Left:Landroid/graphics/Bitmap;

    .line 21
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Right:Landroid/graphics/Bitmap;

    .line 22
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Left:Landroid/graphics/Bitmap;

    .line 23
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Right:Landroid/graphics/Bitmap;

    .line 25
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mMovingEdges:I

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRect:Landroid/graphics/Rect;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 2
    .parameter "context"
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopX:I

    .line 17
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopY:I

    .line 18
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomX:I

    .line 19
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomY:I

    .line 20
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Left:Landroid/graphics/Bitmap;

    .line 21
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Right:Landroid/graphics/Bitmap;

    .line 22
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Left:Landroid/graphics/Bitmap;

    .line 23
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Right:Landroid/graphics/Bitmap;

    .line 25
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mMovingEdges:I

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRect:Landroid/graphics/Rect;

    .line 41
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/lge/camera/components/PIPResizeHandlerView;->setPosition(IIII)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopX:I

    .line 17
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopY:I

    .line 18
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomX:I

    .line 19
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomY:I

    .line 20
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Left:Landroid/graphics/Bitmap;

    .line 21
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Right:Landroid/graphics/Bitmap;

    .line 22
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Left:Landroid/graphics/Bitmap;

    .line 23
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Right:Landroid/graphics/Bitmap;

    .line 25
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mMovingEdges:I

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRect:Landroid/graphics/Rect;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopX:I

    .line 17
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopY:I

    .line 18
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomX:I

    .line 19
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomY:I

    .line 20
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Left:Landroid/graphics/Bitmap;

    .line 21
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Right:Landroid/graphics/Bitmap;

    .line 22
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Left:Landroid/graphics/Bitmap;

    .line 23
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Right:Landroid/graphics/Bitmap;

    .line 25
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mMovingEdges:I

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRect:Landroid/graphics/Rect;

    .line 33
    return-void
.end method

.method private drawResizeHandlerCorner(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/lge/camera/components/PIPResizeHandlerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4040

    invoke-static {v2, v3}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 86
    .local v1, subWindowHandlerThick:I
    iget-object v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Left:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/lge/camera/components/PIPResizeHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020461

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Left:Landroid/graphics/Bitmap;

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Right:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/lge/camera/components/PIPResizeHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020463

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Right:Landroid/graphics/Bitmap;

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Left:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/lge/camera/components/PIPResizeHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020462

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Left:Landroid/graphics/Bitmap;

    .line 95
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Right:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 96
    invoke-virtual {p0}, Lcom/lge/camera/components/PIPResizeHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020464

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Right:Landroid/graphics/Bitmap;

    .line 99
    :cond_3
    iget v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mMovingEdges:I

    if-nez v2, :cond_10

    const/4 v0, 0x1

    .line 101
    .local v0, notMoving:Z
    :goto_0
    iget v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_5

    :cond_4
    if-eqz v0, :cond_6

    .line 103
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Left:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopX:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomY:I

    iget-object v5, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Left:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 107
    :cond_6
    iget v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_8

    :cond_7
    if-eqz v0, :cond_9

    .line 109
    :cond_8
    iget-object v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Right:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomX:I

    iget-object v4, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Right:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomY:I

    iget-object v5, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Right:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 113
    :cond_9
    iget v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_b

    :cond_a
    if-eqz v0, :cond_c

    .line 115
    :cond_b
    iget-object v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Left:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopX:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopY:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 119
    :cond_c
    iget v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_d

    iget v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_e

    :cond_d
    if-eqz v0, :cond_f

    .line 121
    :cond_e
    iget-object v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Right:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomX:I

    iget-object v4, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Right:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopY:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 126
    :cond_f
    return-void

    .line 99
    .end local v0           #notMoving:Z
    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    iget-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/lge/camera/components/PIPResizeHandlerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x4040

    invoke-static {v1, v2}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v0, v1

    .line 70
    .local v0, subWindowHandlerThick:I
    iget-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/16 v3, 0x5d

    const/16 v4, 0xcd

    const/16 v5, 0xe6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 71
    iget-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    iget-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41b0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 74
    iget-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    iget-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopX:I

    iget v3, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopY:I

    iget v4, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomX:I

    iget v5, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomY:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 77
    iget-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 80
    .end local v0           #subWindowHandlerThick:I
    :cond_0
    invoke-direct {p0, p1}, Lcom/lge/camera/components/PIPResizeHandlerView;->drawResizeHandlerCorner(Landroid/graphics/Canvas;)V

    .line 81
    return-void
.end method

.method public setPosition(IIII)V
    .locals 0
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"

    .prologue
    .line 50
    iput p1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopX:I

    .line 51
    iput p2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopY:I

    .line 52
    iput p3, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomX:I

    .line 53
    iput p4, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomY:I

    .line 54
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRect:Landroid/graphics/Rect;

    .line 46
    iput-object v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mPaint:Landroid/graphics/Paint;

    .line 47
    return-void
.end method

.method public updatePosition(I)V
    .locals 5
    .parameter "direction"

    .prologue
    .line 57
    iput p1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mMovingEdges:I

    .line 58
    iget-object v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopX:I

    iget v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopY:I

    iget v3, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomX:I

    iget v4, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 59
    invoke-virtual {p0}, Lcom/lge/camera/components/PIPResizeHandlerView;->invalidate()V

    .line 60
    return-void
.end method
