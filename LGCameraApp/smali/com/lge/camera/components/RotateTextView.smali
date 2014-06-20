.class public Lcom/lge/camera/components/RotateTextView;
.super Lcom/lge/camera/components/RotateView;
.source "RotateTextView.java"


# instance fields
.field private mPortrait:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/camera/components/RotateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/camera/components/RotateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/components/RotateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/RotateTextView;->mPortrait:Z

    .line 26
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/lge/camera/components/RotateView;->BASE_TEXT_PADDING_RATE:F

    .line 27
    return-void
.end method

.method private getDesiredHeight()I
    .locals 4

    .prologue
    .line 141
    iget-object v2, p0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v0

    .line 142
    .local v0, textHeight:F
    const/4 v1, 0x0

    .line 143
    .local v1, totalTextLineHeight:F
    iget-object v2, p0, Lcom/lge/camera/components/RotateView;->mTextLines:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/lge/camera/components/RotateView;->mTextLines:[Ljava/lang/String;

    array-length v2, v2

    int-to-float v2, v2

    mul-float v1, v0, v2

    .line 145
    iget v2, p0, Lcom/lge/camera/components/RotateView;->mTextPaddingTop:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lge/camera/components/RotateView;->mTextBasePadding:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/lge/camera/components/RotateView;->mTextPaddingBottom:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/lge/camera/components/RotateView;->mTextBasePadding:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 148
    :cond_0
    float-to-int v2, v1

    return v2
.end method

.method private getDesiredWidth()I
    .locals 5

    .prologue
    .line 126
    const/4 v2, 0x0

    .line 127
    .local v2, width:F
    iget-object v3, p0, Lcom/lge/camera/components/RotateView;->mTextLines:[Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, textWidth:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/components/RotateView;->mTextLines:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 130
    iget-object v3, p0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/lge/camera/components/RotateView;->mTextLines:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 131
    const v3, 0x3db851ec

    mul-float/2addr v3, v1

    add-float/2addr v1, v3

    .line 132
    iget v3, p0, Lcom/lge/camera/components/RotateView;->mTextPaddingLeft:I

    int-to-float v3, v3

    iget v4, p0, Lcom/lge/camera/components/RotateView;->mTextBasePadding:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/lge/camera/components/RotateView;->mTextPaddingRight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/lge/camera/components/RotateView;->mTextBasePadding:F

    add-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 133
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    .end local v0           #i:I
    .end local v1           #textWidth:F
    :cond_0
    float-to-int v3, v2

    return v3
.end method

.method private mergeStrings([Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 3
    .parameter "strings"

    .prologue
    .line 165
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 166
    .local v1, mergedText:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/components/RotateView;->mTextLines:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 167
    if-eqz v0, :cond_0

    .line 168
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/components/RotateView;->mTextLines:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_1
    return-object v1
.end method

.method private setTextLines([Ljava/lang/String;)V
    .locals 3
    .parameter "textLines"

    .prologue
    .line 152
    if-eqz p1, :cond_1

    .line 153
    iput-object p1, p0, Lcom/lge/camera/components/RotateView;->mTextLines:[Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/lge/camera/components/RotateView;->mTextLines:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 155
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/components/RotateView;->mTextLines:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/lge/camera/components/RotateView;->mPath:[Landroid/graphics/Path;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/lge/camera/components/RotateView;->mPath:[Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    aput-object v2, v1, v0

    .line 155
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method private wordWrap(I)[Ljava/lang/String;
    .locals 14
    .parameter "maxWidth"

    .prologue
    const/16 v13, 0x20

    const/4 v12, 0x5

    const/4 v11, 0x0

    .line 178
    iget-object v8, p0, Lcom/lge/camera/components/RotateView;->mTextLines:[Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/lge/camera/components/RotateTextView;->mergeStrings([Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 179
    .local v4, mergedText:Ljava/lang/StringBuffer;
    int-to-float v8, p1

    iget v9, p0, Lcom/lge/camera/components/RotateView;->mTextPaddingLeft:I

    int-to-float v9, v9

    iget v10, p0, Lcom/lge/camera/components/RotateView;->mTextBasePadding:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/camera/components/RotateView;->mTextPaddingRight:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/camera/components/RotateView;->mTextBasePadding:F

    add-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int p1, v8

    .line 180
    int-to-float v8, p1

    int-to-float v9, p1

    const v10, 0x3db851ec

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int p1, v8

    .line 181
    const/4 v2, 0x0

    .line 182
    .local v2, lineLength:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v7, textLines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_2

    if-ge v1, v12, :cond_2

    .line 184
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    if-ne v8, v13, :cond_0

    .line 185
    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 187
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, remainText:Ljava/lang/String;
    new-array v3, v12, [F

    .line 191
    .local v3, measuredWidth:[F
    add-int/lit8 p1, p1, 0x14

    .line 192
    iget-object v8, p0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    int-to-float v10, p1

    invoke-virtual {v8, v5, v9, v10, v3}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v2

    .line 194
    invoke-virtual {v4, v11, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, currentLine:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 196
    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 197
    if-gez v2, :cond_1

    .line 198
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 201
    :cond_1
    invoke-virtual {v4, v11, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {v4, v11, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    .end local v0           #currentLine:Ljava/lang/String;
    .end local v3           #measuredWidth:[F
    .end local v5           #remainText:Ljava/lang/String;
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v6, v8, [Ljava/lang/String;

    .line 206
    .local v6, result:[Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 207
    return-object v6
.end method


# virtual methods
.method protected canvasRotate(Landroid/graphics/Canvas;II)V
    .locals 5
    .parameter "canvas"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const v4, 0x7fffffff

    const/high16 v3, 0x4000

    .line 75
    iget v2, p0, Lcom/lge/camera/components/RotateView;->mRotatePivotLeft:I

    int-to-float v0, v2

    .line 76
    .local v0, pivotX:F
    iget v2, p0, Lcom/lge/camera/components/RotateView;->mRotatePivotTop:I

    int-to-float v1, v2

    .line 78
    .local v1, pivotY:F
    iget v2, p0, Lcom/lge/camera/components/RotateView;->mRotatePivotLeft:I

    if-ne v2, v4, :cond_0

    .line 79
    int-to-float v2, p2

    div-float v0, v2, v3

    .line 81
    :cond_0
    iget v2, p0, Lcom/lge/camera/components/RotateView;->mRotatePivotTop:I

    if-ne v2, v4, :cond_1

    .line 82
    int-to-float v2, p3

    div-float v1, v2, v3

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/components/RotateView;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    invoke-virtual {v2}, Lcom/lge/camera/components/RotationInfo;->getCurrentDegree()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 93
    return-void
.end method

.method protected checkBackground(Landroid/graphics/Canvas;)Z
    .locals 1
    .parameter "canvas"

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public getTextPaintWidth()I
    .locals 2

    .prologue
    .line 102
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 103
    .local v0, p:Landroid/graphics/Paint;
    iget v1, p0, Lcom/lge/camera/components/RotateView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 104
    iget-object v1, p0, Lcom/lge/camera/components/RotateView;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    return v1
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v8, 0x4000

    const/high16 v7, -0x8000

    .line 31
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 32
    .local v4, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 33
    .local v1, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 34
    .local v5, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 38
    .local v2, heightSize:I
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateTextView;->setTextPaint()V

    .line 40
    if-ne v4, v8, :cond_2

    .line 42
    move v3, v5

    .line 55
    .local v3, width:I
    :cond_0
    :goto_0
    if-ne v1, v8, :cond_5

    .line 57
    move v0, v2

    .line 70
    .local v0, height:I
    :cond_1
    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/lge/camera/components/RotateTextView;->setMeasuredDimension(II)V

    .line 71
    return-void

    .line 44
    .end local v0           #height:I
    .end local v3           #width:I
    :cond_2
    iget-boolean v6, p0, Lcom/lge/camera/components/RotateTextView;->mPortrait:Z

    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/lge/camera/components/RotateTextView;->getDesiredHeight()I

    move-result v3

    .line 45
    .restart local v3       #width:I
    :goto_2
    if-ne v4, v7, :cond_0

    .line 46
    iget-boolean v6, p0, Lcom/lge/camera/components/RotateTextView;->mPortrait:Z

    if-nez v6, :cond_3

    if-le v3, v5, :cond_3

    .line 47
    invoke-direct {p0, v5}, Lcom/lge/camera/components/RotateTextView;->wordWrap(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/components/RotateView;->mLandscapeTextLines:[Ljava/lang/String;

    .line 48
    iget-object v6, p0, Lcom/lge/camera/components/RotateView;->mLandscapeTextLines:[Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/lge/camera/components/RotateTextView;->setTextLines([Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/lge/camera/components/RotateTextView;->getDesiredWidth()I

    move-result v3

    .line 51
    :cond_3
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    .line 44
    .end local v3           #width:I
    :cond_4
    invoke-direct {p0}, Lcom/lge/camera/components/RotateTextView;->getDesiredWidth()I

    move-result v3

    goto :goto_2

    .line 59
    .restart local v3       #width:I
    :cond_5
    iget-boolean v6, p0, Lcom/lge/camera/components/RotateTextView;->mPortrait:Z

    if-eqz v6, :cond_7

    invoke-direct {p0}, Lcom/lge/camera/components/RotateTextView;->getDesiredWidth()I

    move-result v0

    .line 60
    .restart local v0       #height:I
    :goto_3
    if-ne v1, v7, :cond_1

    .line 61
    iget-boolean v6, p0, Lcom/lge/camera/components/RotateTextView;->mPortrait:Z

    if-eqz v6, :cond_6

    if-le v0, v2, :cond_6

    .line 62
    invoke-direct {p0, v2}, Lcom/lge/camera/components/RotateTextView;->wordWrap(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/components/RotateView;->mPortraitTextLines:[Ljava/lang/String;

    .line 63
    iget-object v6, p0, Lcom/lge/camera/components/RotateView;->mPortraitTextLines:[Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/lge/camera/components/RotateTextView;->setTextLines([Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/lge/camera/components/RotateTextView;->getDesiredWidth()I

    move-result v0

    .line 66
    :cond_6
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 59
    .end local v0           #height:I
    :cond_7
    invoke-direct {p0}, Lcom/lge/camera/components/RotateTextView;->getDesiredHeight()I

    move-result v0

    goto :goto_3
.end method

.method public setRotated(I)V
    .locals 2
    .parameter "degree"

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, portrait:Z
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/components/RotateView;->mPortraitTextLines:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/lge/camera/components/RotateTextView;->setTextLines([Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x1

    .line 119
    :goto_0
    iget-boolean v1, p0, Lcom/lge/camera/components/RotateTextView;->mPortrait:Z

    if-eq v1, v0, :cond_1

    .line 120
    iput-boolean v0, p0, Lcom/lge/camera/components/RotateTextView;->mPortrait:Z

    .line 121
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateTextView;->invalidate()V

    .line 123
    :cond_1
    return-void

    .line 115
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/components/RotateView;->mLandscapeTextLines:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/lge/camera/components/RotateTextView;->setTextLines([Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    goto :goto_0
.end method
