.class public Lcom/lge/camera/components/PanoThumbView;
.super Landroid/widget/RelativeLayout;
.source "PanoThumbView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraApp"


# instance fields
.field private ARROW_MARGIN:I

.field private BOTTOM_MARGIN:I

.field public final DIRECTION_DOWN:I

.field public final DIRECTION_INIT:I

.field public final DIRECTION_LEFT:I

.field public final DIRECTION_RIGHT:I

.field public final DIRECTION_UP:I

.field private GUIDE_BOX_MARGIN:I

.field private THUMB_MARGIN:I

.field private mDHeight:I

.field private mDWidth:I

.field private mDirect:I

.field private mThumbHeight:I

.field private mThumbWidth:I

.field private mThumbnail:Landroid/graphics/Bitmap;

.field private mTotalHeight:I

.field private mTotalWidth:I

.field private moveRatioHeight:F

.field private moveRatioWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput v1, p0, Lcom/lge/camera/components/PanoThumbView;->DIRECTION_INIT:I

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/camera/components/PanoThumbView;->DIRECTION_RIGHT:I

    .line 24
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/components/PanoThumbView;->DIRECTION_LEFT:I

    .line 25
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/camera/components/PanoThumbView;->DIRECTION_DOWN:I

    .line 26
    const/4 v0, 0x4

    iput v0, p0, Lcom/lge/camera/components/PanoThumbView;->DIRECTION_UP:I

    .line 27
    iput v1, p0, Lcom/lge/camera/components/PanoThumbView;->mDirect:I

    .line 36
    iput v1, p0, Lcom/lge/camera/components/PanoThumbView;->THUMB_MARGIN:I

    .line 37
    iput v1, p0, Lcom/lge/camera/components/PanoThumbView;->ARROW_MARGIN:I

    .line 38
    iput v1, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    .line 39
    iput v1, p0, Lcom/lge/camera/components/PanoThumbView;->GUIDE_BOX_MARGIN:I

    .line 46
    const v0, 0x7f0a0091

    invoke-static {p1, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/PanoThumbView;->ARROW_MARGIN:I

    .line 47
    const v0, 0x7f0a0090

    invoke-static {p1, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/PanoThumbView;->THUMB_MARGIN:I

    .line 48
    invoke-virtual {p0}, Lcom/lge/camera/components/PanoThumbView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0092

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    .line 49
    const v0, 0x7f0a0093

    invoke-static {p1, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/PanoThumbView;->GUIDE_BOX_MARGIN:I

    .line 50
    return-void
.end method

.method private setGuidRect()V
    .locals 10

    .prologue
    const/16 v9, 0xe

    const/16 v8, 0xf

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 66
    iget v4, p0, Lcom/lge/camera/components/PanoThumbView;->mDirect:I

    if-eqz v4, :cond_0

    .line 115
    :goto_0
    return-void

    .line 69
    :cond_0
    const-string v4, "CameraApp"

    const-string v5, "setGuidRect"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const v4, 0x7f090116

    invoke-virtual {p0, v4}, Lcom/lge/camera/components/PanoThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 72
    .local v1, movingRectImage:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 73
    .local v0, mlp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 74
    const-string v4, "NO_R2L"

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 75
    const v4, 0x7f090115

    invoke-virtual {p0, v4}, Lcom/lge/camera/components/PanoThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 76
    .local v2, nextRectImage:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 77
    .local v3, nlp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v3}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 78
    const-string v4, "NO_R2L"

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 80
    iget v4, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 81
    iget v4, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 82
    iget v4, p0, Lcom/lge/camera/components/PanoThumbView;->THUMB_MARGIN:I

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 83
    iget v4, p0, Lcom/lge/camera/components/PanoThumbView;->THUMB_MARGIN:I

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 84
    iput v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 85
    iget v4, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 86
    invoke-virtual {v0, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 87
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget v4, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 90
    iget v4, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 91
    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 92
    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 93
    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 94
    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 95
    invoke-virtual {v3, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 97
    iget v4, p0, Lcom/lge/camera/components/PanoThumbView;->mDirect:I

    packed-switch v4, :pswitch_data_0

    .line 114
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 99
    :pswitch_0
    invoke-virtual {v3, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 102
    :pswitch_1
    invoke-virtual {v3, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 103
    const/16 v4, 0xb

    invoke-virtual {v3, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 106
    :pswitch_2
    invoke-virtual {v3, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 109
    :pswitch_3
    invoke-virtual {v3, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setNextRect()V
    .locals 9

    .prologue
    const/16 v8, 0xf

    const/16 v4, 0xe

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 378
    iget v2, p0, Lcom/lge/camera/components/PanoThumbView;->mDirect:I

    if-nez v2, :cond_0

    .line 447
    :goto_0
    return-void

    .line 381
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "setNextRect"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const v2, 0x7f090115

    invoke-virtual {p0, v2}, Lcom/lge/camera/components/PanoThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 384
    .local v0, nextRectImage:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 385
    .local v1, nlp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v1}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 387
    const-string v2, "NO_R2L"

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 388
    iget v2, p0, Lcom/lge/camera/components/PanoThumbView;->mDirect:I

    packed-switch v2, :pswitch_data_0

    .line 445
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 390
    :pswitch_0
    iget v2, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 391
    iget v2, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 392
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->mDWidth:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 393
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNextRect nlp.leftMargin + mThumbWidth= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNextRect mTotalWidth= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/components/PanoThumbView;->mTotalWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->mTotalWidth:I

    if-lt v2, v3, :cond_1

    .line 396
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->GUIDE_BOX_MARGIN:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 398
    :cond_1
    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 399
    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 400
    iget v2, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 401
    invoke-virtual {v1, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 404
    :pswitch_1
    iget v2, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 405
    iget v2, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 406
    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 407
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->mDWidth:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 408
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->mTotalWidth:I

    if-lt v2, v3, :cond_2

    .line 409
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->GUIDE_BOX_MARGIN:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 411
    :cond_2
    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 412
    iget v2, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 413
    invoke-virtual {v1, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 414
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 417
    :pswitch_2
    iget v2, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 418
    iget v2, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 419
    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 420
    iget v2, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 421
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->mDHeight:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 422
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->mTotalHeight:I

    if-lt v2, v3, :cond_3

    .line 423
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->GUIDE_BOX_MARGIN:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 425
    :cond_3
    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 426
    invoke-virtual {v1, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 427
    const/16 v2, 0xa

    invoke-virtual {v1, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 430
    :pswitch_3
    iget v2, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 431
    iget v2, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 432
    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 433
    iget v2, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 434
    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 435
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->mDHeight:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 436
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->mTotalHeight:I

    if-lt v2, v3, :cond_4

    .line 437
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->GUIDE_BOX_MARGIN:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 439
    :cond_4
    invoke-virtual {v1, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 440
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 388
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public arrowAnimation(Z)V
    .locals 5
    .parameter "start"

    .prologue
    .line 275
    const v3, 0x7f090117

    invoke-virtual {p0, v3}, Lcom/lge/camera/components/PanoThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 277
    .local v1, arrowView:Landroid/widget/ImageView;
    :try_start_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 278
    .local v0, ad:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_0

    .line 279
    if-eqz p1, :cond_1

    .line 280
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 288
    .end local v0           #ad:Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    :goto_0
    return-void

    .line 282
    .restart local v0       #ad:Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    .end local v0           #ad:Landroid/graphics/drawable/AnimationDrawable;
    :catch_0
    move-exception v2

    .line 286
    .local v2, e:Ljava/lang/ClassCastException;
    const-string v3, "CameraApp"

    const-string v4, "ClassCastException : "

    invoke-static {v3, v4, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public init(IIIIIIII)V
    .locals 2
    .parameter "tW"
    .parameter "tH"
    .parameter "w"
    .parameter "h"
    .parameter "dw"
    .parameter "dh"
    .parameter "enginInputW"
    .parameter "engineInputH"

    .prologue
    .line 53
    iput p1, p0, Lcom/lge/camera/components/PanoThumbView;->mTotalWidth:I

    .line 54
    iput p2, p0, Lcom/lge/camera/components/PanoThumbView;->mTotalHeight:I

    .line 55
    iput p3, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    .line 56
    iput p4, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    .line 57
    iput p5, p0, Lcom/lge/camera/components/PanoThumbView;->mDWidth:I

    .line 58
    iput p6, p0, Lcom/lge/camera/components/PanoThumbView;->mDHeight:I

    .line 59
    iget v0, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    int-to-float v0, v0

    int-to-float v1, p7

    div-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/PanoThumbView;->moveRatioWidth:F

    .line 60
    iget v0, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    int-to-float v0, v0

    int-to-float v1, p8

    div-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/PanoThumbView;->moveRatioHeight:F

    .line 62
    invoke-direct {p0}, Lcom/lge/camera/components/PanoThumbView;->setGuidRect()V

    .line 63
    return-void
.end method

.method public setDirection(II)V
    .locals 13
    .parameter "direction"
    .parameter "degree"

    .prologue
    const/16 v12, 0xc

    const/16 v11, 0xb

    const/16 v10, 0x9

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 118
    iput p1, p0, Lcom/lge/camera/components/PanoThumbView;->mDirect:I

    .line 119
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mDirect:I

    if-nez v5, :cond_0

    .line 242
    :goto_0
    return-void

    .line 123
    :cond_0
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Panorama Thumb - direction : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", degree = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/lge/camera/components/PanoThumbView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 126
    add-int/lit16 v5, p2, 0x10e

    rem-int/lit16 p2, v5, 0x168

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/components/PanoThumbView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 130
    .local v2, lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v2}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 131
    invoke-virtual {v2, v12, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 133
    const v5, 0x7f090117

    invoke-virtual {p0, v5}, Lcom/lge/camera/components/PanoThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 134
    .local v1, arrowView:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 135
    .local v0, alp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 137
    const v5, 0x7f090114

    invoke-virtual {p0, v5}, Lcom/lge/camera/components/PanoThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 138
    .local v3, thumbImage:Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 139
    .local v4, tlp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v4}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 140
    const-string v5, "NO_R2L"

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 142
    packed-switch p1, :pswitch_data_0

    .line 230
    :goto_1
    invoke-virtual {p0, v2}, Lcom/lge/camera/components/PanoThumbView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    const/16 v5, 0xb4

    invoke-static {v5, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/lge/camera/components/PanoThumbView;->setBackgroundColor(I)V

    .line 233
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    iget-object v5, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 239
    const v5, 0x7f090118

    invoke-virtual {p0, v5}, Lcom/lge/camera/components/PanoThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 241
    invoke-virtual {p0, v9}, Lcom/lge/camera/components/PanoThumbView;->arrowAnimation(Z)V

    goto/16 :goto_0

    .line 144
    :pswitch_0
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mTotalWidth:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 145
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 146
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->THUMB_MARGIN:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 147
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->THUMB_MARGIN:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 148
    iput v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 149
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 150
    invoke-virtual {v2, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 152
    const v5, 0x7f02040f

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    const-string v5, "NO_R2L"

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 154
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 155
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->ARROW_MARGIN:I

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 156
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 157
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 158
    const/16 v5, 0xf

    invoke-virtual {v0, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 159
    invoke-virtual {v0, v11, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 161
    invoke-virtual {v4, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 165
    :pswitch_1
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mTotalWidth:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 166
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 167
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->THUMB_MARGIN:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 168
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->THUMB_MARGIN:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 169
    iput v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 170
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 171
    invoke-virtual {v2, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 173
    const v5, 0x7f02040e

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    const-string v5, "NO_R2L"

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 175
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->ARROW_MARGIN:I

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 176
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 177
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 178
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 179
    const/16 v5, 0xf

    invoke-virtual {v0, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 180
    invoke-virtual {v0, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 182
    invoke-virtual {v4, v11, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 186
    :pswitch_2
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 187
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mTotalHeight:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 188
    iput v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 189
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 190
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->THUMB_MARGIN:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 191
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->THUMB_MARGIN:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 192
    invoke-virtual {v2, v11, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 194
    const v5, 0x7f02040d

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    const-string v5, "NO_R2L"

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 196
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 197
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 198
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 199
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->ARROW_MARGIN:I

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 200
    const/16 v5, 0xe

    invoke-virtual {v0, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 201
    invoke-virtual {v0, v12, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 203
    const/16 v5, 0xa

    invoke-virtual {v4, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 207
    :pswitch_3
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 208
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mTotalHeight:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 209
    iput v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 210
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 211
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->THUMB_MARGIN:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 212
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->THUMB_MARGIN:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 213
    invoke-virtual {v2, v11, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 215
    const v5, 0x7f020410

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    const-string v5, "NO_R2L"

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 217
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 218
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 219
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->ARROW_MARGIN:I

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 220
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 221
    const/16 v5, 0xe

    invoke-virtual {v0, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 222
    const/16 v5, 0xa

    invoke-virtual {v0, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 224
    invoke-virtual {v4, v12, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setMovingRect(III)V
    .locals 12
    .parameter "hMove"
    .parameter "vMove"
    .parameter "direction"

    .prologue
    const/16 v11, 0xf

    const/16 v10, 0xe

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 291
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mDirect:I

    if-nez v5, :cond_0

    .line 375
    :goto_0
    return-void

    .line 294
    :cond_0
    const/4 v4, 0x0

    .line 296
    .local v4, transMove:I
    const v5, 0x7f090116

    invoke-virtual {p0, v5}, Lcom/lge/camera/components/PanoThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 297
    .local v1, movingRectImage:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 298
    .local v0, mlp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 300
    const v5, 0x7f090115

    invoke-virtual {p0, v5}, Lcom/lge/camera/components/PanoThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 301
    .local v2, nextRectImage:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 303
    .local v3, nlp:Landroid/widget/RelativeLayout$LayoutParams;
    const-string v5, "NO_R2L"

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 304
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mDirect:I

    packed-switch v5, :pswitch_data_0

    .line 368
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 370
    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    .line 371
    const-string v5, "CameraApp"

    const-string v6, "setMovingRect setNextRect"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-direct {p0}, Lcom/lge/camera/components/PanoThumbView;->setNextRect()V

    .line 374
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/components/PanoThumbView;->invalidate()V

    goto :goto_0

    .line 306
    :pswitch_0
    int-to-float v5, p1

    iget v6, p0, Lcom/lge/camera/components/PanoThumbView;->moveRatioWidth:F

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 307
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 308
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 309
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 310
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v7, p0, Lcom/lge/camera/components/PanoThumbView;->mDWidth:I

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 311
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, p0, Lcom/lge/camera/components/PanoThumbView;->GUIDE_BOX_MARGIN:I

    if-gt v5, v6, :cond_2

    .line 312
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->GUIDE_BOX_MARGIN:I

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 314
    :cond_2
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 315
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 316
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 317
    invoke-virtual {v0, v11, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 320
    :pswitch_1
    neg-int v5, p1

    int-to-float v5, v5

    iget v6, p0, Lcom/lge/camera/components/PanoThumbView;->moveRatioWidth:F

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 321
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 322
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 323
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 324
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v7, p0, Lcom/lge/camera/components/PanoThumbView;->mDWidth:I

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 325
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v6, p0, Lcom/lge/camera/components/PanoThumbView;->GUIDE_BOX_MARGIN:I

    if-gt v5, v6, :cond_3

    .line 326
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->GUIDE_BOX_MARGIN:I

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 328
    :cond_3
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 329
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 330
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 331
    invoke-virtual {v0, v11, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 332
    const/16 v5, 0xb

    invoke-virtual {v0, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 335
    :pswitch_2
    int-to-float v5, p2

    iget v6, p0, Lcom/lge/camera/components/PanoThumbView;->moveRatioHeight:F

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 336
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 337
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 338
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 339
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 340
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 341
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v7, p0, Lcom/lge/camera/components/PanoThumbView;->mDHeight:I

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 342
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, p0, Lcom/lge/camera/components/PanoThumbView;->GUIDE_BOX_MARGIN:I

    if-gt v5, v6, :cond_4

    .line 343
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->GUIDE_BOX_MARGIN:I

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 345
    :cond_4
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 346
    invoke-virtual {v0, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 347
    const/16 v5, 0xa

    invoke-virtual {v0, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 350
    :pswitch_3
    neg-int v5, p2

    int-to-float v5, v5

    iget v6, p0, Lcom/lge/camera/components/PanoThumbView;->moveRatioHeight:F

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 351
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 352
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 353
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 354
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 355
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 356
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 357
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v7, p0, Lcom/lge/camera/components/PanoThumbView;->mDHeight:I

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 358
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v6, p0, Lcom/lge/camera/components/PanoThumbView;->GUIDE_BOX_MARGIN:I

    if-gt v5, v6, :cond_5

    .line 359
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->GUIDE_BOX_MARGIN:I

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 361
    :cond_5
    invoke-virtual {v0, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 362
    const/16 v5, 0xc

    invoke-virtual {v0, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 304
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;Z)V
    .locals 5
    .parameter "thumbnail"
    .parameter "nextGuide"

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 245
    iget v1, p0, Lcom/lge/camera/components/PanoThumbView;->mDirect:I

    if-eqz v1, :cond_0

    .line 246
    const v1, 0x7f090114

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/PanoThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 248
    :cond_0
    iput-object p1, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbnail:Landroid/graphics/Bitmap;

    .line 250
    if-nez p1, :cond_2

    .line 251
    invoke-virtual {p0}, Lcom/lge/camera/components/PanoThumbView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 252
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 253
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 254
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/PanoThumbView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    invoke-virtual {p0, v3}, Lcom/lge/camera/components/PanoThumbView;->setBackgroundColor(I)V

    .line 256
    const v1, 0x7f090117

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/PanoThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 257
    const v1, 0x7f090118

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/PanoThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 258
    const v1, 0x7f090116

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/PanoThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 259
    const v1, 0x7f090115

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/PanoThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 260
    invoke-virtual {p0, v3}, Lcom/lge/camera/components/PanoThumbView;->arrowAnimation(Z)V

    .line 262
    iput v3, p0, Lcom/lge/camera/components/PanoThumbView;->mDirect:I

    .line 263
    iget-object v1, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 265
    iput-object p1, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbnail:Landroid/graphics/Bitmap;

    .line 272
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    :goto_0
    return-void

    .line 268
    :cond_2
    if-eqz p2, :cond_1

    .line 269
    invoke-direct {p0}, Lcom/lge/camera/components/PanoThumbView;->setNextRect()V

    goto :goto_0
.end method
