.class public Lcom/lge/camera/components/RotateImageButton;
.super Lcom/lge/camera/components/RotateView;
.source "RotateImageButton.java"


# static fields
.field private static final DIAGONAL_FACTOR:F = 1.41421f


# instance fields
.field private mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mRotateBgResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/camera/components/RotateImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/camera/components/RotateImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/components/RotateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgResource:I

    .line 31
    const v0, 0x3dcccccd

    iput v0, p0, Lcom/lge/camera/components/RotateView;->BASE_TEXT_PADDING_RATE:F

    .line 32
    return-void
.end method

.method private applyRotateImageScale(Landroid/graphics/Canvas;IIII)V
    .locals 25
    .parameter "canvas"
    .parameter "viewWidth"
    .parameter "viewHeight"
    .parameter "bgCenterX"
    .parameter "bgCenterY"

    .prologue
    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/RotateImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 253
    .local v11, imageSrc:Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_0

    .line 254
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 256
    .local v7, imageBounds:Landroid/graphics/Rect;
    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v12, v21, v22

    .line 257
    .local v12, imageWidth:I
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v8, v21, v22

    .line 259
    .local v8, imageHeight:I
    int-to-float v0, v12

    move/from16 v21, v0

    int-to-float v0, v8

    move/from16 v22, v0

    div-float v9, v21, v22

    .line 260
    .local v9, imageRatio:F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v20, v21, v22

    .line 262
    .local v20, viewRatio:F
    cmpg-float v21, v20, v9

    if-gez v21, :cond_1

    .line 263
    const/high16 v10, 0x3f80

    .line 264
    .local v10, imageScale:F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v12

    move/from16 v22, v0

    div-float v10, v21, v22

    .line 265
    int-to-float v0, v8

    move/from16 v21, v0

    mul-float v21, v21, v10

    move/from16 v0, v21

    float-to-int v8, v0

    .line 266
    move/from16 v12, p2

    .line 273
    .end local v10           #imageScale:F
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/camera/components/RotationInfo;->getCurrentDegree()I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    .line 274
    .local v3, cosA:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/camera/components/RotationInfo;->getCurrentDegree()I

    move-result v21

    rsub-int/lit8 v21, v21, 0x5a

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    .line 275
    .local v5, cosRevA:D
    int-to-double v0, v12

    move-wide/from16 v21, v0

    mul-double v21, v21, v3

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    int-to-double v0, v8

    move-wide/from16 v23, v0

    mul-double v23, v23, v5

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->abs(D)D

    move-result-wide v23

    add-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v18, v0

    .line 276
    .local v18, rw:I
    int-to-double v0, v12

    move-wide/from16 v21, v0

    mul-double v21, v21, v5

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    int-to-double v0, v8

    move-wide/from16 v23, v0

    mul-double v23, v23, v3

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->abs(D)D

    move-result-wide v23

    add-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-int v13, v0

    .line 278
    .local v13, rh:I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v17, v21, v22

    .line 279
    .local v17, rotatedImageScaleW:F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v13

    move/from16 v22, v0

    div-float v16, v21, v22

    .line 280
    .local v16, rotatedImageScaleH:F
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v13

    move/from16 v22, v0

    div-float v14, v21, v22

    .line 281
    .local v14, rotateImageRatio:F
    const/high16 v15, 0x3f80

    .line 282
    .local v15, rotatedImageScale:F
    cmpg-float v21, v20, v14

    if-gez v21, :cond_2

    .line 283
    move/from16 v15, v17

    .line 290
    :goto_1
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v15, v15, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 302
    .end local v3           #cosA:D
    .end local v5           #cosRevA:D
    .end local v7           #imageBounds:Landroid/graphics/Rect;
    .end local v8           #imageHeight:I
    .end local v9           #imageRatio:F
    .end local v12           #imageWidth:I
    .end local v13           #rh:I
    .end local v14           #rotateImageRatio:F
    .end local v15           #rotatedImageScale:F
    .end local v16           #rotatedImageScaleH:F
    .end local v17           #rotatedImageScaleW:F
    .end local v18           #rw:I
    .end local v20           #viewRatio:F
    :cond_0
    return-void

    .line 268
    .restart local v7       #imageBounds:Landroid/graphics/Rect;
    .restart local v8       #imageHeight:I
    .restart local v9       #imageRatio:F
    .restart local v12       #imageWidth:I
    .restart local v20       #viewRatio:F
    :cond_1
    const/high16 v19, 0x3f80

    .line 269
    .local v19, scale:F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v8

    move/from16 v22, v0

    div-float v19, v21, v22

    .line 270
    int-to-float v0, v12

    move/from16 v21, v0

    mul-float v21, v21, v19

    move/from16 v0, v21

    float-to-int v12, v0

    .line 271
    move/from16 v8, p3

    goto/16 :goto_0

    .line 285
    .end local v19           #scale:F
    .restart local v3       #cosA:D
    .restart local v5       #cosRevA:D
    .restart local v13       #rh:I
    .restart local v14       #rotateImageRatio:F
    .restart local v15       #rotatedImageScale:F
    .restart local v16       #rotatedImageScaleH:F
    .restart local v17       #rotatedImageScaleW:F
    .restart local v18       #rw:I
    :cond_2
    move/from16 v15, v16

    goto :goto_1
.end method

.method private configureBounds()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 207
    iget-object v1, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getWidth()I

    move-result v0

    .line 211
    .local v0, longerSide:I
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getHeight()I

    move-result v0

    .line 214
    :cond_1
    int-to-float v1, v0

    const v2, 0x3fb504d5

    mul-float/2addr v1, v2

    int-to-float v2, v0

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/lge/camera/components/RotateView;->mExpand4Rotate:I

    .line 215
    return-void
.end method

.method private updateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 194
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/RotateImageButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    :cond_0
    iput-object p1, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 197
    if-eqz p1, :cond_2

    .line 198
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 199
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 202
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/components/RotateImageButton;->configureBounds()V

    .line 204
    :cond_2
    return-void
.end method


# virtual methods
.method protected canvasRotate(Landroid/graphics/Canvas;II)V
    .locals 6
    .parameter "canvas"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    .line 86
    div-int/lit8 v4, p2, 0x2

    .line 87
    .local v4, bgCenterX:I
    div-int/lit8 v5, p3, 0x2

    .line 88
    .local v5, bgCenterY:I
    iget-object v0, p0, Lcom/lge/camera/components/RotateView;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/components/RotationInfo;->getCurrentDegree()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    int-to-float v1, v4

    int-to-float v2, v5

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 90
    iget-boolean v0, p0, Lcom/lge/camera/components/RotateView;->mRotateInsideView:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 91
    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/components/RotateImageButton;->applyRotateImageScale(Landroid/graphics/Canvas;IIII)V

    .line 94
    :cond_0
    iget-boolean v0, p0, Lcom/lge/camera/components/RotateView;->mRotateIconOnly:Z

    if-nez v0, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 98
    :cond_1
    return-void
.end method

.method protected checkBackground(Landroid/graphics/Canvas;)Z
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 103
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 105
    if-nez v2, :cond_0

    move v5, v6

    .line 130
    :goto_0
    return v5

    .line 110
    :cond_0
    instance-of v5, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_1

    move-object v5, v2

    .line 111
    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 112
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    .line 113
    goto :goto_0

    .line 117
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 118
    .local v1, bounds:Landroid/graphics/Rect;
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->left:I

    sub-int v4, v5, v7

    .line 119
    .local v4, drawableWidth:I
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    sub-int v3, v5, v7

    .line 121
    .local v3, drawableHeight:I
    if-eqz v4, :cond_2

    if-nez v3, :cond_3

    .line 122
    :cond_2
    const-string v5, "CameraApp"

    const-string v7, "drawable width,height is zero, return"

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 123
    goto :goto_0

    .line 127
    :cond_3
    iget-boolean v5, p0, Lcom/lge/camera/components/RotateView;->mRotateIconOnly:Z

    if-eqz v5, :cond_4

    .line 128
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 130
    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 218
    invoke-super {p0}, Lcom/lge/camera/components/RotateView;->drawableStateChanged()V

    .line 219
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 220
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 223
    :cond_0
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackgroundResource()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgResource:I

    return v0
.end method

.method public getTextPaintWidth()I
    .locals 4

    .prologue
    .line 135
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 136
    .local v0, p:Landroid/graphics/Paint;
    iget v2, p0, Lcom/lge/camera/components/RotateView;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 137
    iget-object v2, p0, Lcom/lge/camera/components/RotateView;->mText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v1, v2

    .line 138
    .local v1, textWidth:I
    int-to-float v2, v1

    iget v3, p0, Lcom/lge/camera/components/RotateView;->BASE_TEXT_PADDING_RATE:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v2, v1

    return v2
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "dr"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->invalidate()V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-super {p0, p1}, Lcom/lge/camera/components/RotateView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v10, 0x4000

    .line 36
    const/4 v8, 0x0

    .local v8, measuredWidth:I
    const/4 v7, 0x0

    .line 37
    .local v7, measuredHeight:I
    const/4 v3, 0x0

    .local v3, contentWidth:I
    const/4 v2, 0x0

    .line 39
    .local v2, contentHeight:I
    iget-object v9, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_1

    .line 40
    iget-object v9, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 41
    .local v1, bgWidth:I
    iget-object v9, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 43
    .local v0, bgHeight:I
    if-ge v3, v1, :cond_0

    .line 44
    move v3, v1

    .line 46
    :cond_0
    if-ge v2, v0, :cond_1

    .line 47
    move v2, v0

    .line 51
    .end local v0           #bgHeight:I
    .end local v1           #bgWidth:I
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 52
    .local v4, imageDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_3

    .line 53
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    .line 54
    .local v6, imageWidth:I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    .line 56
    .local v5, imageHeight:I
    if-ge v3, v6, :cond_2

    .line 57
    move v3, v6

    .line 59
    :cond_2
    if-ge v2, v5, :cond_3

    .line 60
    move v2, v5

    .line 66
    .end local v5           #imageHeight:I
    .end local v6           #imageWidth:I
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    if-ne v9, v10, :cond_4

    .line 67
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 73
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    if-ne v9, v10, :cond_5

    .line 74
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 81
    :goto_1
    invoke-virtual {p0, v8, v7}, Lcom/lge/camera/components/RotateImageButton;->setMeasuredDimension(II)V

    .line 82
    return-void

    .line 70
    :cond_4
    move v8, v3

    goto :goto_0

    .line 77
    :cond_5
    move v7, v2

    goto :goto_1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 180
    invoke-direct {p0, p1}, Lcom/lge/camera/components/RotateImageButton;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->requestLayout()V

    .line 183
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->invalidate()V

    .line 185
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 6
    .parameter "resId"

    .prologue
    .line 153
    iget v3, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgResource:I

    if-eq v3, p1, :cond_1

    .line 154
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/lge/camera/components/RotateImageButton;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    iput p1, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgResource:I

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgResource:I

    if-eqz v3, :cond_0

    .line 160
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 161
    .local v2, rsrc:Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    iget v3, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgResource:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 167
    .end local v2           #rsrc:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/lge/camera/components/RotateImageButton;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->requestLayout()V

    .line 170
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->invalidate()V

    .line 172
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void

    .line 162
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 163
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgResource:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 239
    invoke-super {p0, p1, p2, p3, p4}, Lcom/lge/camera/components/RotateView;->setFrame(IIII)Z

    move-result v0

    .line 240
    .local v0, changed:Z
    invoke-direct {p0}, Lcom/lge/camera/components/RotateImageButton;->configureBounds()V

    .line 241
    return v0
.end method

.method public setRotateIconOnly(Z)V
    .locals 1
    .parameter "rotateIconOnly"

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/lge/camera/components/RotateView;->mRotateIconOnly:Z

    if-eq v0, p1, :cond_0

    .line 246
    iput-boolean p1, p0, Lcom/lge/camera/components/RotateView;->mRotateIconOnly:Z

    .line 247
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->invalidate()V

    .line 249
    :cond_0
    return-void
.end method

.method public setRotated(I)V
    .locals 2
    .parameter "degree"

    .prologue
    .line 143
    if-lez p1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/lge/camera/components/RotateView;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotationInfo;->setCurrentDegree(I)V

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/components/RotateView;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/RotationInfo;->setTargetDegree(I)V

    .line 149
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->invalidate()V

    .line 150
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/RotateView;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotationInfo;->setCurrentDegree(I)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/lge/camera/components/RotateView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
