.class public Lcom/lge/camera/components/BurstShotProgressBar;
.super Landroid/widget/ImageView;
.source "BurstShotProgressBar.java"


# static fields
.field public static final FORWARD:I = 0x0

.field public static final REVERSE:I = 0x1


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mCurs:I

.field private mDirection:I

.field private mDrawWidth:I

.field private mHeight:I

.field private mMax:I

.field private mPadding:I

.field private mStep:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 9
    const-string v0, "CameraApp"

    iput-object v0, p0, Lcom/lge/camera/components/BurstShotProgressBar;->TAG:Ljava/lang/String;

    .line 13
    const/16 v0, 0x14

    iput v0, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mMax:I

    .line 14
    iput v1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mPadding:I

    .line 15
    iput v1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mCurs:I

    .line 20
    iput v1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mDirection:I

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    const-string v0, "CameraApp"

    iput-object v0, p0, Lcom/lge/camera/components/BurstShotProgressBar;->TAG:Ljava/lang/String;

    .line 13
    const/16 v0, 0x14

    iput v0, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mMax:I

    .line 14
    iput v1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mPadding:I

    .line 15
    iput v1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mCurs:I

    .line 20
    iput v1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mDirection:I

    .line 28
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mMax:I

    return v0
.end method

.method public initBurstShotProgressBar(III)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "maxCount"

    .prologue
    .line 31
    iput p1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mWidth:I

    .line 32
    iput p2, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mHeight:I

    .line 33
    iput p3, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mMax:I

    .line 34
    iget v0, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mWidth:I

    iget v1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mDrawWidth:I

    .line 35
    iget v0, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mMax:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mDrawWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mStep:F

    .line 36
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 55
    iget v1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mCurs:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mStep:F

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 56
    .local v0, value:I
    iget v1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mDirection:I

    if-nez v1, :cond_0

    .line 57
    iget v1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mHeight:I

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 61
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 62
    return-void

    .line 59
    :cond_0
    iget v1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mDrawWidth:I

    sub-int/2addr v1, v0

    iget v2, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mDrawWidth:I

    iget v3, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mHeight:I

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0
.end method

.method public setDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 43
    iput p1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mDirection:I

    .line 44
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 47
    iget v0, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mMax:I

    if-le p1, v0, :cond_0

    .line 48
    iget p1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mMax:I

    .line 49
    :cond_0
    iput p1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mCurs:I

    .line 50
    invoke-virtual {p0}, Lcom/lge/camera/components/BurstShotProgressBar;->invalidate()V

    .line 51
    return-void
.end method
