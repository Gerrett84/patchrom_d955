.class public Lcom/android/lgesettings/LauncherActivityEx$IconResizer;
.super Ljava/lang/Object;
.source "LauncherActivityEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/LauncherActivityEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IconResizer"
.end annotation


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mIconHeight:I

.field private mIconWidth:I

.field private final mOldBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/lgesettings/LauncherActivityEx;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/LauncherActivityEx;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 256
    iput-object p1, p0, Lcom/android/lgesettings/LauncherActivityEx$IconResizer;->this$0:Lcom/android/lgesettings/LauncherActivityEx;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput v1, p0, Lcom/android/lgesettings/LauncherActivityEx$IconResizer;->mIconWidth:I

    .line 251
    iput v1, p0, Lcom/android/lgesettings/LauncherActivityEx$IconResizer;->mIconHeight:I

    .line 253
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/lgesettings/LauncherActivityEx$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    .line 254
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Lcom/android/lgesettings/LauncherActivityEx$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 257
    iget-object v1, p0, Lcom/android/lgesettings/LauncherActivityEx$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 260
    invoke-virtual {p1}, Lcom/android/lgesettings/LauncherActivityEx;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 261
    .local v0, resources:Landroid/content/res/Resources;
    const/high16 v1, 0x105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/lgesettings/LauncherActivityEx$IconResizer;->mIconHeight:I

    iput v1, p0, Lcom/android/lgesettings/LauncherActivityEx$IconResizer;->mIconWidth:I

    .line 263
    return-void
.end method


# virtual methods
.method public createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 14
    .parameter "icon"

    .prologue
    const/4 v13, 0x0

    .line 266
    iget v8, p0, Lcom/android/lgesettings/LauncherActivityEx$IconResizer;->mIconWidth:I

    .line 267
    .local v8, width:I
    iget v2, p0, Lcom/android/lgesettings/LauncherActivityEx$IconResizer;->mIconHeight:I

    .line 269
    .local v2, height:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 270
    .local v4, iconWidth:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 272
    .local v3, iconHeight:I
    instance-of v11, p1, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v11, :cond_0

    move-object v5, p1

    .line 273
    check-cast v5, Landroid/graphics/drawable/PaintDrawable;

    .line 274
    .local v5, painter:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 275
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 278
    .end local v5           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_0
    if-lez v8, :cond_3

    if-lez v2, :cond_3

    .line 279
    if-lt v8, v4, :cond_1

    if-ge v2, v3, :cond_6

    .line 280
    :cond_1
    int-to-float v11, v4

    int-to-float v12, v3

    div-float v6, v11, v12

    .line 282
    .local v6, ratio:F
    if-le v4, v3, :cond_4

    .line 283
    int-to-float v11, v8

    div-float/2addr v11, v6

    float-to-int v2, v11

    .line 288
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 290
    .local v0, c:Landroid/graphics/Bitmap$Config;
    :goto_1
    iget v11, p0, Lcom/android/lgesettings/LauncherActivityEx$IconResizer;->mIconWidth:I

    iget v12, p0, Lcom/android/lgesettings/LauncherActivityEx$IconResizer;->mIconHeight:I

    invoke-static {v11, v12, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 291
    .local v7, thumb:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/lgesettings/LauncherActivityEx$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 292
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 298
    iget-object v11, p0, Lcom/android/lgesettings/LauncherActivityEx$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 299
    iget v11, p0, Lcom/android/lgesettings/LauncherActivityEx$IconResizer;->mIconWidth:I

    sub-int/2addr v11, v8

    div-int/lit8 v9, v11, 0x2

    .line 300
    .local v9, x:I
    iget v11, p0, Lcom/android/lgesettings/LauncherActivityEx$IconResizer;->mIconHeight:I

    sub-int/2addr v11, v2

    div-int/lit8 v10, v11, 0x2

    .line 301
    .local v10, y:I
    add-int v11, v9, v8

    add-int v12, v10, v2

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 302
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 303
    iget-object v11, p0, Lcom/android/lgesettings/LauncherActivityEx$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 304
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    iget-object v11, p0, Lcom/android/lgesettings/LauncherActivityEx$IconResizer;->this$0:Lcom/android/lgesettings/LauncherActivityEx;

    invoke-virtual {v11}, Lcom/android/lgesettings/LauncherActivityEx;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {p1, v11, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 305
    .restart local p1
    invoke-virtual {v1, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 321
    .end local v0           #c:Landroid/graphics/Bitmap$Config;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v6           #ratio:F
    .end local v7           #thumb:Landroid/graphics/Bitmap;
    .end local v9           #x:I
    .end local v10           #y:I
    :cond_3
    :goto_2
    return-object p1

    .line 284
    .restart local v6       #ratio:F
    :cond_4
    if-le v3, v4, :cond_2

    .line 285
    int-to-float v11, v2

    mul-float/2addr v11, v6

    float-to-int v8, v11

    goto :goto_0

    .line 288
    :cond_5
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    .line 306
    .end local v6           #ratio:F
    :cond_6
    if-ge v4, v8, :cond_3

    if-ge v3, v2, :cond_3

    .line 307
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 308
    .restart local v0       #c:Landroid/graphics/Bitmap$Config;
    iget v11, p0, Lcom/android/lgesettings/LauncherActivityEx$IconResizer;->mIconWidth:I

    iget v12, p0, Lcom/android/lgesettings/LauncherActivityEx$IconResizer;->mIconHeight:I

    invoke-static {v11, v12, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 309
    .restart local v7       #thumb:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/lgesettings/LauncherActivityEx$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 310
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 311
    iget-object v11, p0, Lcom/android/lgesettings/LauncherActivityEx$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 312
    sub-int v11, v8, v4

    div-int/lit8 v9, v11, 0x2

    .line 313
    .restart local v9       #x:I
    sub-int v11, v2, v3

    div-int/lit8 v10, v11, 0x2

    .line 314
    .restart local v10       #y:I
    add-int v11, v9, v4

    add-int v12, v10, v3

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 315
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 316
    iget-object v11, p0, Lcom/android/lgesettings/LauncherActivityEx$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 317
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    iget-object v11, p0, Lcom/android/lgesettings/LauncherActivityEx$IconResizer;->this$0:Lcom/android/lgesettings/LauncherActivityEx;

    invoke-virtual {v11}, Lcom/android/lgesettings/LauncherActivityEx;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {p1, v11, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 318
    .restart local p1
    invoke-virtual {v1, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method
