.class public Lcom/lge/camera/components/CameraCoverView;
.super Landroid/widget/ImageView;
.source "CameraCoverView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;
    }
.end annotation


# static fields
.field public static final APERTURE_ANGLE:I = 0x2d

.field public static final APERTURE_COUNT:I = 0x8

.field public static final DEGREE_END:I = 0x28

.field public static final DRAW_ANI_START:I = 0x1

.field public static final DRAW_END:I = 0x2

.field public static final DRAW_IDLE:I

.field public static mIsOpen:Z


# instance fields
.field private currentDegree:F

.field private drawableHeight:F

.field private drawableWidth:F

.field private mDrawState:I

.field private mListener:Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;

.field private pX:F

.field private rootDx:F

.field private rootDy:F

.field private saveCount:I

.field private transX:F

.field private viewHeight:F

.field private viewWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/camera/components/CameraCoverView;->mIsOpen:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 39
    iput v1, p0, Lcom/lge/camera/components/CameraCoverView;->saveCount:I

    .line 40
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    .line 41
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->drawableWidth:F

    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->drawableHeight:F

    .line 42
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->viewWidth:F

    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->viewHeight:F

    .line 43
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->rootDx:F

    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->rootDy:F

    .line 44
    iput v1, p0, Lcom/lge/camera/components/CameraCoverView;->mDrawState:I

    .line 45
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->pX:F

    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->transX:F

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/CameraCoverView;->mListener:Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput v1, p0, Lcom/lge/camera/components/CameraCoverView;->saveCount:I

    .line 40
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    .line 41
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->drawableWidth:F

    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->drawableHeight:F

    .line 42
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->viewWidth:F

    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->viewHeight:F

    .line 43
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->rootDx:F

    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->rootDy:F

    .line 44
    iput v1, p0, Lcom/lge/camera/components/CameraCoverView;->mDrawState:I

    .line 45
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->pX:F

    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->transX:F

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/CameraCoverView;->mListener:Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;

    .line 24
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

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput v1, p0, Lcom/lge/camera/components/CameraCoverView;->saveCount:I

    .line 40
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    .line 41
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->drawableWidth:F

    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->drawableHeight:F

    .line 42
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->viewWidth:F

    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->viewHeight:F

    .line 43
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->rootDx:F

    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->rootDy:F

    .line 44
    iput v1, p0, Lcom/lge/camera/components/CameraCoverView;->mDrawState:I

    .line 45
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->pX:F

    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->transX:F

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/CameraCoverView;->mListener:Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;

    .line 28
    return-void
.end method

.method public static isCoverOpen()Z
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/lge/camera/components/CameraCoverView;->mIsOpen:Z

    return v0
.end method


# virtual methods
.method public getDrawState()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/lge/camera/components/CameraCoverView;->mDrawState:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    const/high16 v6, 0x40a0

    const/high16 v4, 0x4000

    const/4 v5, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraCoverView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 86
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lge/camera/components/CameraCoverView;->drawableWidth:F

    .line 87
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lge/camera/components/CameraCoverView;->drawableHeight:F

    .line 89
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->drawableWidth:F

    cmpg-float v2, v2, v5

    if-lez v2, :cond_0

    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->drawableHeight:F

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->mDrawState:I

    packed-switch v2, :pswitch_data_0

    .line 129
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v2

    iput v2, p0, Lcom/lge/camera/components/CameraCoverView;->saveCount:I

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 132
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraCoverView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lge/camera/components/CameraCoverView;->viewWidth:F

    .line 133
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraCoverView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lge/camera/components/CameraCoverView;->viewHeight:F

    .line 135
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->drawableWidth:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/lge/camera/components/CameraCoverView;->viewWidth:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    iput v2, p0, Lcom/lge/camera/components/CameraCoverView;->rootDx:F

    .line 136
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->drawableHeight:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/lge/camera/components/CameraCoverView;->viewHeight:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    iput v2, p0, Lcom/lge/camera/components/CameraCoverView;->rootDy:F

    .line 137
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->drawableWidth:F

    const v3, 0x3e19999a

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/lge/camera/components/CameraCoverView;->pX:F

    .line 138
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->drawableWidth:F

    div-float/2addr v2, v4

    iput v2, p0, Lcom/lge/camera/components/CameraCoverView;->transX:F

    .line 140
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->rootDx:F

    neg-float v2, v2

    iget v3, p0, Lcom/lge/camera/components/CameraCoverView;->rootDy:F

    neg-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 142
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/16 v2, 0x8

    if-ge v1, v2, :cond_5

    .line 143
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->transX:F

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 144
    if-lez v1, :cond_3

    .line 145
    const/high16 v2, 0x4234

    iget v3, p0, Lcom/lge/camera/components/CameraCoverView;->transX:F

    iget v4, p0, Lcom/lge/camera/components/CameraCoverView;->drawableHeight:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 147
    :cond_3
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    iget v3, p0, Lcom/lge/camera/components/CameraCoverView;->pX:F

    invoke-virtual {p1, v2, v3, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 148
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 149
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    neg-float v2, v2

    iget v3, p0, Lcom/lge/camera/components/CameraCoverView;->pX:F

    invoke-virtual {p1, v2, v3, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 150
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->transX:F

    neg-float v2, v2

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 95
    .end local v1           #i:I
    :pswitch_0
    iput v5, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    .line 96
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraCoverView;->invalidate()V

    .line 97
    iget-object v2, p0, Lcom/lge/camera/components/CameraCoverView;->mListener:Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;

    if-eqz v2, :cond_2

    .line 98
    iget-object v2, p0, Lcom/lge/camera/components/CameraCoverView;->mListener:Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;

    invoke-interface {v2}, Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;->onCoverCloseAnimationEnd()V

    .line 99
    iput-object v3, p0, Lcom/lge/camera/components/CameraCoverView;->mListener:Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;

    goto :goto_1

    .line 103
    :pswitch_1
    sget-boolean v2, Lcom/lge/camera/components/CameraCoverView;->mIsOpen:Z

    if-eqz v2, :cond_4

    .line 104
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    iget v3, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    div-float/2addr v3, v6

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    .line 105
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraCoverView;->invalidate()V

    .line 106
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    const/high16 v3, 0x4220

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 107
    const/4 v2, 0x2

    iput v2, p0, Lcom/lge/camera/components/CameraCoverView;->mDrawState:I

    .line 108
    iput v5, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    goto/16 :goto_0

    .line 112
    :cond_4
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    iget v3, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    div-float/2addr v3, v6

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    .line 113
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraCoverView;->invalidate()V

    .line 114
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_2

    .line 115
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/camera/components/CameraCoverView;->mDrawState:I

    .line 116
    iput v5, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    goto/16 :goto_1

    .line 121
    :pswitch_2
    iput v5, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    .line 122
    iget-object v2, p0, Lcom/lge/camera/components/CameraCoverView;->mListener:Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/lge/camera/components/CameraCoverView;->mListener:Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;

    invoke-interface {v2}, Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;->onCoverOpenAnimationEnd()V

    .line 124
    iput-object v3, p0, Lcom/lge/camera/components/CameraCoverView;->mListener:Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;

    goto/16 :goto_0

    .line 153
    .restart local v1       #i:I
    :cond_5
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->saveCount:I

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDrawState(IZ)V
    .locals 2
    .parameter "state"
    .parameter "open"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraCoverView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->mDrawState:I

    .line 59
    :goto_0
    sput-boolean p2, Lcom/lge/camera/components/CameraCoverView;->mIsOpen:Z

    .line 60
    sget-boolean v0, Lcom/lge/camera/components/CameraCoverView;->mIsOpen:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    .line 62
    iget v0, p0, Lcom/lge/camera/components/CameraCoverView;->mDrawState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraCoverView;->invalidate()V

    .line 65
    :cond_0
    return-void

    .line 56
    :cond_1
    iput p1, p0, Lcom/lge/camera/components/CameraCoverView;->mDrawState:I

    goto :goto_0

    .line 60
    :cond_2
    const/high16 v0, 0x4220

    goto :goto_1
.end method

.method public setOnCameraCoverListener(Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lge/camera/components/CameraCoverView;->mListener:Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;

    .line 50
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/camera/components/CameraCoverView;->mIsOpen:Z

    .line 79
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    return-void
.end method
