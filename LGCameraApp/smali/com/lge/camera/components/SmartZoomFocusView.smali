.class public Lcom/lge/camera/components/SmartZoomFocusView;
.super Landroid/view/View;
.source "SmartZoomFocusView.java"


# instance fields
.field private mCurrentDegree:I

.field private mFocusBitmapAuto:Landroid/graphics/Bitmap;

.field private mFocusBitmapAutoHeight:I

.field private mFocusBitmapAutoRes:I

.field private mFocusBitmapAutoWidth:I

.field private mFocusBitmapManual:Landroid/graphics/Bitmap;

.field private mFocusBitmapManualHeight:I

.field private mFocusBitmapManualRes:I

.field private mFocusBitmapManualWidth:I

.field private mFocusMode:I

.field private mLeftTopX:I

.field private mLeftTopY:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPreviousDegree:I

.field private mPreviousFocusMode:I

.field private mRect:Landroid/graphics/Rect;

.field private mRightBottomX:I

.field private mRightBottomY:I

.field private mSubWindowHandlerThick:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 17
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopX:I

    .line 18
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopY:I

    .line 19
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomX:I

    .line 20
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomY:I

    .line 22
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusMode:I

    .line 23
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousFocusMode:I

    .line 25
    invoke-virtual {p0}, Lcom/lge/camera/components/SmartZoomFocusView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mSubWindowHandlerThick:I

    .line 27
    iput-object v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    .line 28
    iput-object v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    .line 29
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousDegree:I

    .line 30
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    .line 32
    const v0, 0x7f020365

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoRes:I

    .line 33
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoWidth:I

    .line 34
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoHeight:I

    .line 36
    const v0, 0x7f020366

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualRes:I

    .line 37
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualWidth:I

    .line 38
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualHeight:I

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPaint:Landroid/graphics/Paint;

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRect:Landroid/graphics/Rect;

    .line 42
    invoke-virtual {p0}, Lcom/lge/camera/components/SmartZoomFocusView;->prepare()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 4
    .parameter "context"
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 17
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopX:I

    .line 18
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopY:I

    .line 19
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomX:I

    .line 20
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomY:I

    .line 22
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusMode:I

    .line 23
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousFocusMode:I

    .line 25
    invoke-virtual {p0}, Lcom/lge/camera/components/SmartZoomFocusView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mSubWindowHandlerThick:I

    .line 27
    iput-object v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    .line 28
    iput-object v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    .line 29
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousDegree:I

    .line 30
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    .line 32
    const v0, 0x7f020365

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoRes:I

    .line 33
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoWidth:I

    .line 34
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoHeight:I

    .line 36
    const v0, 0x7f020366

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualRes:I

    .line 37
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualWidth:I

    .line 38
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualHeight:I

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPaint:Landroid/graphics/Paint;

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRect:Landroid/graphics/Rect;

    .line 57
    iput p2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopX:I

    .line 58
    iput p3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopY:I

    .line 59
    iput p4, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomX:I

    .line 60
    iput p5, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomY:I

    .line 61
    invoke-virtual {p0}, Lcom/lge/camera/components/SmartZoomFocusView;->prepare()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopX:I

    .line 18
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopY:I

    .line 19
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomX:I

    .line 20
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomY:I

    .line 22
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusMode:I

    .line 23
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousFocusMode:I

    .line 25
    invoke-virtual {p0}, Lcom/lge/camera/components/SmartZoomFocusView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mSubWindowHandlerThick:I

    .line 27
    iput-object v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    .line 28
    iput-object v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    .line 29
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousDegree:I

    .line 30
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    .line 32
    const v0, 0x7f020365

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoRes:I

    .line 33
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoWidth:I

    .line 34
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoHeight:I

    .line 36
    const v0, 0x7f020366

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualRes:I

    .line 37
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualWidth:I

    .line 38
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualHeight:I

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPaint:Landroid/graphics/Paint;

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRect:Landroid/graphics/Rect;

    .line 52
    invoke-virtual {p0}, Lcom/lge/camera/components/SmartZoomFocusView;->prepare()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopX:I

    .line 18
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopY:I

    .line 19
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomX:I

    .line 20
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomY:I

    .line 22
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusMode:I

    .line 23
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousFocusMode:I

    .line 25
    invoke-virtual {p0}, Lcom/lge/camera/components/SmartZoomFocusView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mSubWindowHandlerThick:I

    .line 27
    iput-object v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    .line 28
    iput-object v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    .line 29
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousDegree:I

    .line 30
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    .line 32
    const v0, 0x7f020365

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoRes:I

    .line 33
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoWidth:I

    .line 34
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoHeight:I

    .line 36
    const v0, 0x7f020366

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualRes:I

    .line 37
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualWidth:I

    .line 38
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualHeight:I

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPaint:Landroid/graphics/Paint;

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRect:Landroid/graphics/Rect;

    .line 47
    invoke-virtual {p0}, Lcom/lge/camera/components/SmartZoomFocusView;->prepare()V

    .line 48
    return-void
.end method

.method private setPosition(IIII)V
    .locals 0
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"

    .prologue
    .line 92
    iput p1, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopX:I

    .line 93
    iput p2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopY:I

    .line 94
    iput p3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomX:I

    .line 95
    iput p4, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomY:I

    .line 96
    return-void
.end method

.method private updatePosition()V
    .locals 5

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopX:I

    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopY:I

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomX:I

    iget v4, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 100
    invoke-virtual {p0}, Lcom/lge/camera/components/SmartZoomFocusView;->invalidate()V

    .line 101
    return-void
.end method


# virtual methods
.method public getSmartZoomFocusViewMode()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusMode:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0xb4

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/16 v6, 0xff

    .line 121
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 122
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_4

    .line 124
    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusMode:I

    if-ne v2, v7, :cond_5

    .line 125
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0x66

    const/16 v4, 0xd3

    const/16 v5, 0xec

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 129
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mSubWindowHandlerThick:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 131
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 133
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopX:I

    iget v4, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopY:I

    iget v5, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomX:I

    iget v6, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomY:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 136
    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomX:I

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopX:I

    add-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 137
    .local v0, centerX:I
    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomY:I

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopY:I

    add-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 139
    .local v1, centerY:I
    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusMode:I

    if-ne v2, v7, :cond_7

    .line 140
    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousDegree:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusMode:I

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousFocusMode:I

    if-eq v2, v3, :cond_3

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/components/SmartZoomFocusView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoRes:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    .line 145
    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    if-ne v2, v8, :cond_6

    .line 146
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    invoke-static {v2, v3}, Lcom/lge/camera/util/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    .line 150
    :goto_1
    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousDegree:I

    .line 151
    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusMode:I

    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousFocusMode:I

    .line 153
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 171
    .end local v0           #centerX:I
    .end local v1           #centerY:I
    :cond_4
    :goto_2
    return-void

    .line 127
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v3, v6, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto/16 :goto_0

    .line 148
    .restart local v0       #centerX:I
    .restart local v1       #centerY:I
    :cond_6
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    add-int/lit16 v3, v3, 0xb4

    rem-int/lit16 v3, v3, 0x168

    invoke-static {v2, v3}, Lcom/lge/camera/util/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 155
    :cond_7
    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousDegree:I

    if-ne v2, v3, :cond_8

    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusMode:I

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousFocusMode:I

    if-eq v2, v3, :cond_b

    .line 156
    :cond_8
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_9

    .line 157
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 159
    :cond_9
    invoke-virtual {p0}, Lcom/lge/camera/components/SmartZoomFocusView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualRes:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    .line 160
    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    if-ne v2, v8, :cond_c

    .line 161
    :cond_a
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    invoke-static {v2, v3}, Lcom/lge/camera/util/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    .line 165
    :goto_3
    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousDegree:I

    .line 166
    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusMode:I

    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousFocusMode:I

    .line 168
    :cond_b
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 163
    :cond_c
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    add-int/lit16 v3, v3, 0xb4

    rem-int/lit16 v3, v3, 0x168

    invoke-static {v2, v3}, Lcom/lge/camera/util/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    goto :goto_3
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/lge/camera/components/SmartZoomFocusView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoRes:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    .line 66
    invoke-virtual {p0}, Lcom/lge/camera/components/SmartZoomFocusView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualRes:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    .line 67
    iget-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoWidth:I

    .line 68
    iget-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoHeight:I

    .line 69
    iget-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualWidth:I

    .line 70
    iget-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualHeight:I

    .line 71
    iget v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoWidth:I

    sput v0, Lcom/lge/camera/properties/CameraConstants;->SMARTZOOM_AUTO_ZOOM_AREA_MARGIN_WIDTH:I

    .line 72
    iget v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoHeight:I

    sput v0, Lcom/lge/camera/properties/CameraConstants;->SMARTZOOM_AUTO_ZOOM_AREA_MARGIN_HEIGHT:I

    .line 73
    iget v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualWidth:I

    sput v0, Lcom/lge/camera/properties/CameraConstants;->SMARTZOOM_MANUAL_ZOOM_AREA_MARGIN_WIDTH:I

    .line 74
    iget v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualHeight:I

    sput v0, Lcom/lge/camera/properties/CameraConstants;->SMARTZOOM_MANUAL_ZOOM_AREA_MARGIN_HEIGHT:I

    .line 75
    return-void
.end method

.method public setPositionAndUpdate(IIIII)V
    .locals 0
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"
    .parameter "orientation"

    .prologue
    .line 104
    iput p5, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/camera/components/SmartZoomFocusView;->setPosition(IIII)V

    .line 106
    invoke-direct {p0}, Lcom/lge/camera/components/SmartZoomFocusView;->updatePosition()V

    .line 107
    return-void
.end method

.method public setSmartZoomFocusViewMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 110
    iput p1, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusMode:I

    .line 111
    return-void
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    iput-object v1, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRect:Landroid/graphics/Rect;

    .line 79
    iput-object v1, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPaint:Landroid/graphics/Paint;

    .line 81
    iget-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 83
    iput-object v1, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 87
    iput-object v1, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    .line 89
    :cond_1
    return-void
.end method
