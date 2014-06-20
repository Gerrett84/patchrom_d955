.class public Lcom/lge/camera/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final DIRECTION_DOWN:I = 0x3

.field public static final DIRECTION_LEFT:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x1

.field public static final DIRECTION_UP:I = 0x2

.field private static final NUMBER_ONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraApp"

.field public static final UNCONSTRAINED:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method public static Assert(Z)V
    .locals 1
    .parameter "cond"

    .prologue
    .line 436
    if-nez p0, :cond_0

    .line 437
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 439
    :cond_0
    return-void
.end method

.method public static SizeString2WidthHeight(Ljava/lang/String;)[I
    .locals 7
    .parameter "sizeString"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 566
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 567
    .local v1, sizeArray:[I
    const-string v3, "@"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, removeAt:[Ljava/lang/String;
    aget-object v3, v0, v5

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 569
    .local v2, sizeStringArray:[Ljava/lang/String;
    aget-object v3, v2, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v5

    .line 570
    aget-object v3, v2, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v6

    .line 572
    return-object v1
.end method

.method public static adjustViewSize([I[I)[I
    .locals 10
    .parameter "standard"
    .parameter "input"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 577
    aget v4, p0, v8

    .line 578
    .local v4, nor_width:I
    aget v3, p0, v9

    .line 580
    .local v3, nor_height:I
    aget v2, p1, v8

    .line 581
    .local v2, inWidth:I
    aget v1, p1, v9

    .line 582
    .local v1, inHeight:I
    move v6, v2

    .line 583
    .local v6, outWidth:I
    move v5, v1

    .line 585
    .local v5, outHeight:I
    if-le v2, v1, :cond_1

    .line 586
    move v6, v4

    .line 587
    mul-int v7, v1, v6

    div-int v5, v7, v2

    .line 589
    if-le v5, v3, :cond_0

    .line 590
    move v5, v3

    .line 591
    mul-int v7, v2, v5

    div-int v6, v7, v1

    .line 603
    :cond_0
    :goto_0
    const/4 v7, 0x2

    new-array v0, v7, [I

    .line 604
    .local v0, adjustedSize:[I
    aput v6, v0, v8

    .line 605
    aput v5, v0, v9

    .line 607
    return-object v0

    .line 594
    .end local v0           #adjustedSize:[I
    :cond_1
    move v5, v3

    .line 595
    mul-int v7, v2, v5

    div-int v6, v7, v1

    .line 597
    if-le v6, v4, :cond_0

    .line 598
    move v6, v4

    .line 599
    mul-int v7, v1, v6

    div-int v5, v7, v2

    goto :goto_0
.end method

.method public static appendToCharSequenceArray([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 2
    .parameter "array"
    .parameter "element"

    .prologue
    .line 961
    array-length v0, p0

    .line 962
    .local v0, length:I
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/CharSequence;

    .line 963
    .restart local p0
    aput-object p1, p0, v0

    .line 964
    return-object p0
.end method

.method public static appendToIntArray([II)[I
    .locals 2
    .parameter "array"
    .parameter "element"

    .prologue
    .line 953
    array-length v0, p0

    .line 954
    .local v0, length:I
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    .line 955
    aput p1, p0, v0

    .line 956
    return-object p0
.end method

.method public static broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 682
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 684
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 685
    return-void
.end method

.method public static calcFitSizeOfImageForLCD(Landroid/app/Activity;III)[I
    .locals 12
    .parameter "activity"
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "orientation"

    .prologue
    .line 817
    const/4 v9, 0x2

    new-array v0, v9, [I

    .line 818
    .local v0, bitmapSize:[I
    const/4 v2, 0x0

    .line 819
    .local v2, dstWidth:I
    const/4 v1, 0x0

    .line 821
    .local v1, dstHeight:I
    if-eqz p0, :cond_3

    .line 822
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 823
    .local v7, outMetrics:Landroid/util/DisplayMetrics;
    const-string v9, "window"

    invoke-virtual {p0, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 824
    .local v8, wm:Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 826
    iget v6, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 827
    .local v6, lcdWidth:I
    iget v4, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 828
    .local v4, lcdHeight:I
    const/4 v9, 0x1

    if-eq p3, v9, :cond_0

    const/4 v9, 0x3

    if-ne p3, v9, :cond_1

    .line 830
    :cond_0
    iget v6, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 831
    iget v4, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 834
    :cond_1
    const/4 v3, 0x0

    .line 835
    .local v3, imageRatio:F
    const/4 v5, 0x0

    .line 837
    .local v5, lcdRatio:F
    if-lt p1, p2, :cond_8

    .line 838
    int-to-float v9, p1

    int-to-float v10, p2

    div-float v3, v9, v10

    .line 839
    int-to-float v9, v6

    int-to-float v10, v4

    div-float v5, v9, v10

    .line 840
    cmpl-float v9, v3, v5

    if-lez v9, :cond_5

    .line 841
    if-eqz p3, :cond_2

    const/4 v9, 0x2

    if-ne p3, v9, :cond_4

    .line 843
    :cond_2
    move v2, v6

    .line 844
    int-to-float v9, v6

    div-float/2addr v9, v3

    float-to-int v1, v9

    .line 884
    .end local v3           #imageRatio:F
    .end local v4           #lcdHeight:I
    .end local v5           #lcdRatio:F
    .end local v6           #lcdWidth:I
    .end local v7           #outMetrics:Landroid/util/DisplayMetrics;
    .end local v8           #wm:Landroid/view/WindowManager;
    :cond_3
    :goto_0
    const/4 v9, 0x0

    aput v2, v0, v9

    .line 885
    const/4 v9, 0x1

    aput v1, v0, v9

    .line 886
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dstWidth = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", dstHeight = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    return-object v0

    .line 846
    .restart local v3       #imageRatio:F
    .restart local v4       #lcdHeight:I
    .restart local v5       #lcdRatio:F
    .restart local v6       #lcdWidth:I
    .restart local v7       #outMetrics:Landroid/util/DisplayMetrics;
    .restart local v8       #wm:Landroid/view/WindowManager;
    :cond_4
    move v2, v4

    .line 847
    int-to-float v9, v4

    div-float/2addr v9, v3

    float-to-int v1, v9

    goto :goto_0

    .line 850
    :cond_5
    if-eqz p3, :cond_6

    const/4 v9, 0x2

    if-ne p3, v9, :cond_7

    .line 852
    :cond_6
    move v1, v4

    .line 853
    int-to-float v9, v4

    mul-float/2addr v9, v3

    float-to-int v2, v9

    goto :goto_0

    .line 855
    :cond_7
    move v2, v4

    .line 856
    int-to-float v9, v4

    div-float/2addr v9, v3

    float-to-int v1, v9

    goto :goto_0

    .line 860
    :cond_8
    int-to-float v9, p2

    int-to-float v10, p1

    div-float v3, v9, v10

    .line 861
    int-to-float v9, v6

    int-to-float v10, v4

    div-float v5, v9, v10

    .line 863
    cmpl-float v9, v3, v5

    if-lez v9, :cond_b

    .line 864
    if-eqz p3, :cond_9

    const/4 v9, 0x2

    if-ne p3, v9, :cond_a

    .line 866
    :cond_9
    move v1, v4

    .line 867
    int-to-float v9, v4

    div-float/2addr v9, v3

    float-to-int v2, v9

    goto :goto_0

    .line 869
    :cond_a
    move v1, v6

    .line 870
    int-to-float v9, v6

    div-float/2addr v9, v3

    float-to-int v2, v9

    goto :goto_0

    .line 873
    :cond_b
    if-eqz p3, :cond_c

    const/4 v9, 0x2

    if-ne p3, v9, :cond_d

    .line 875
    :cond_c
    move v1, v4

    .line 876
    int-to-float v9, v4

    div-float/2addr v9, v3

    float-to-int v2, v9

    goto :goto_0

    .line 878
    :cond_d
    move v2, v4

    .line 879
    int-to-float v9, v4

    mul-float/2addr v9, v3

    float-to-int v1, v9

    goto :goto_0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 518
    .local p0, object:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_0

    .line 519
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 521
    :cond_0
    return-object p0
.end method

.method public static clamp(III)I
    .locals 0
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 549
    if-le p0, p2, :cond_0

    .line 555
    .end local p2
    :goto_0
    return p2

    .line 552
    .restart local p2
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    .line 553
    goto :goto_0

    :cond_1
    move p2, p0

    .line 555
    goto :goto_0
.end method

.method public static clearImageViewBackgroundDrawable(Landroid/widget/ImageView;)V
    .locals 4
    .parameter "imageView"

    .prologue
    .line 398
    if-eqz p0, :cond_0

    .line 399
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 400
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 402
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 405
    :catch_0
    move-exception v1

    .line 406
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "clearImageViewDrawable Exception "

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static clearImageViewDrawable(Landroid/widget/ImageView;)V
    .locals 4
    .parameter "imageView"

    .prologue
    .line 353
    if-eqz p0, :cond_0

    .line 354
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 355
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 356
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 357
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 358
    invoke-static {v0}, Lcom/lge/camera/util/Util;->recycleBitmapDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v1

    .line 362
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "clearImageViewDrawable Exception "

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static clearImageViewDrawableOnly(Landroid/widget/ImageView;)V
    .locals 4
    .parameter "imageView"

    .prologue
    .line 368
    if-eqz p0, :cond_0

    .line 369
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 370
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 371
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 372
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v1

    .line 376
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "clearImageViewDrawable Exception "

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v6, 0x1

    const/4 v11, -0x1

    .line 317
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 318
    .local v4, w:D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 320
    .local v0, h:D
    if-ne p2, v11, :cond_1

    move v2, v6

    .line 322
    .local v2, lowerBound:I
    :goto_0
    if-ne p1, v11, :cond_2

    const/16 v3, 0x80

    .line 326
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 336
    .end local v2           #lowerBound:I
    :cond_0
    :goto_2
    return v2

    .line 320
    .end local v3           #upperBound:I
    :cond_1
    mul-double v7, v4, v0

    int-to-double v9, p2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_0

    .line 322
    .restart local v2       #lowerBound:I
    :cond_2
    int-to-double v7, p1

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    int-to-double v9, p1

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_1

    .line 330
    .restart local v3       #upperBound:I
    :cond_3
    if-ne p2, v11, :cond_4

    if-ne p1, v11, :cond_4

    move v2, v6

    .line 332
    goto :goto_2

    .line 333
    :cond_4
    if-eq p1, v11, :cond_0

    move v2, v3

    .line 336
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 5
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v1, 0x1

    .line 298
    if-ne p2, v1, :cond_0

    .line 312
    :goto_0
    return v1

    .line 299
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/lge/camera/util/Util;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 303
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    .line 304
    const/4 v1, 0x1

    .line 305
    .local v1, roundedSize:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 306
    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 309
    .end local v1           #roundedSize:I
    :cond_1
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 311
    .restart local v1       #roundedSize:I
    :cond_2
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "computeSampleSize() return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static convertDegree(Landroid/content/res/Resources;I)I
    .locals 1
    .parameter "resource"
    .parameter "degree"

    .prologue
    .line 921
    invoke-static {p0}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 924
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    add-int/lit8 v0, p1, 0x5a

    rem-int/lit16 p1, v0, 0x168

    goto :goto_0
.end method

.method public static convertDegreeToSurfaceRotation(I)I
    .locals 4
    .parameter "degree"

    .prologue
    const/4 v0, 0x0

    .line 937
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "degree = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    sparse-switch p0, :sswitch_data_0

    .line 948
    :goto_0
    :sswitch_0
    return v0

    .line 942
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 944
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 946
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 938
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public static convertLayoutDegree(Landroid/content/res/Resources;I)I
    .locals 1
    .parameter "resource"
    .parameter "degree"

    .prologue
    .line 929
    invoke-static {p0}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    add-int/lit16 v0, p1, 0x10e

    rem-int/lit16 p1, v0, 0x168

    goto :goto_0
.end method

.method public static createCaptureBitmap([BI)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "data"
    .parameter "orientation"

    .prologue
    .line 183
    const/4 v1, -0x1

    const v2, 0xc800

    invoke-static {p0, v1, v2}, Lcom/lge/camera/util/Util;->makeBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/lge/camera/util/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 185
    return-object v0
.end method

.method public static debugStackTrace(Ljava/lang/String;)V
    .locals 6
    .parameter "from"

    .prologue
    .line 626
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Debug] Printing stack trace : from - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 628
    .local v0, elements:[Ljava/lang/StackTraceElement;
    const/4 v1, 0x3

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 629
    aget-object v2, v0, v1

    .line 630
    .local v2, s:Ljava/lang/StackTraceElement;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Debug] \tat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 635
    .end local v2           #s:Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method

.method public static distance(FFFF)F
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 543
    sub-float v0, p0, p2

    .line 544
    .local v0, dx:F
    sub-float v1, p1, p3

    .line 545
    .local v1, dy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method

.method public static dpToPx(Landroid/content/Context;F)F
    .locals 3
    .parameter "context"
    .parameter "dp"

    .prologue
    .line 559
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 560
    .local v0, outMetrics:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 561
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 562
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, p1

    return v2
.end method

.method public static drawTextToBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IILjava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "gContext"
    .parameter "gBitmap"
    .parameter "x"
    .parameter "y"
    .parameter "gText"
    .parameter "gFontSize"
    .parameter "gColor"

    .prologue
    .line 138
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/lge/camera/util/Util;->drawTextToBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IILjava/lang/String;IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static drawTextToBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IILjava/lang/String;IILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "gContext"
    .parameter "gBitmap"
    .parameter "x"
    .parameter "y"
    .parameter "gText"
    .parameter "gFontSize"
    .parameter "gColor"
    .parameter "gTypeFace"

    .prologue
    const/4 v5, 0x1

    const/high16 v7, 0x3f80

    .line 144
    move-object v0, p1

    .line 146
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 148
    .local v1, bitmapConfig:Landroid/graphics/Bitmap$Config;
    if-nez v1, :cond_0

    .line 149
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 152
    :cond_0
    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 154
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 155
    .local v3, canvas:Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 156
    .local v4, paint:Landroid/graphics/Paint;
    invoke-virtual {v4, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    int-to-float v5, p5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 158
    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v4, v7, v5, v7, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 160
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 161
    .local v2, bounds:Landroid/graphics/Rect;
    const/4 v5, 0x0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, p4, v5, v6, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 163
    if-eqz p7, :cond_1

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-static {v5, p7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 167
    :cond_1
    int-to-float v5, p2

    int-to-float v6, p3

    invoke-virtual {v3, p4, v5, v6, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 169
    return-object v0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 525
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .locals 5
    .parameter "activity"

    .prologue
    const/16 v1, 0x5a

    .line 892
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 894
    .local v0, rotation:I
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisplayRotation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    packed-switch v0, :pswitch_data_0

    .line 901
    :goto_0
    :pswitch_0
    return v1

    .line 896
    :pswitch_1
    const/4 v1, 0x0

    goto :goto_0

    .line 898
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 899
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 895
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getFitSizeOfBitmapForLCD(Landroid/app/Activity;II)[I
    .locals 10
    .parameter "activity"
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    .line 779
    const/4 v7, 0x2

    new-array v0, v7, [I

    .line 780
    .local v0, bitmapSize:[I
    const/4 v2, 0x0

    .local v2, dstWidth:I
    const/4 v1, 0x0

    .line 782
    .local v1, dstHeight:I
    if-eqz p0, :cond_0

    .line 783
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0a0008

    invoke-static {v7, v8}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v6

    .line 784
    .local v6, lcdWidth:I
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0a0009

    invoke-static {v7, v8}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    .line 785
    .local v4, lcdHeight:I
    const/4 v3, 0x0

    .local v3, imageRatio:F
    const/4 v5, 0x0

    .line 787
    .local v5, lcdRatio:F
    if-lt p1, p2, :cond_2

    .line 788
    int-to-float v7, p1

    int-to-float v8, p2

    div-float v3, v7, v8

    .line 789
    int-to-float v7, v6

    int-to-float v8, v4

    div-float v5, v7, v8

    .line 790
    cmpl-float v7, v3, v5

    if-lez v7, :cond_1

    .line 791
    move v2, v6

    .line 792
    int-to-float v7, v6

    div-float/2addr v7, v3

    float-to-int v1, v7

    .line 810
    .end local v3           #imageRatio:F
    .end local v4           #lcdHeight:I
    .end local v5           #lcdRatio:F
    .end local v6           #lcdWidth:I
    :cond_0
    :goto_0
    const/4 v7, 0x0

    aput v2, v0, v7

    .line 811
    const/4 v7, 0x1

    aput v1, v0, v7

    .line 812
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dstWidth = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", dstHeight = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    return-object v0

    .line 794
    .restart local v3       #imageRatio:F
    .restart local v4       #lcdHeight:I
    .restart local v5       #lcdRatio:F
    .restart local v6       #lcdWidth:I
    :cond_1
    move v1, v4

    .line 795
    int-to-float v7, v4

    mul-float/2addr v7, v3

    float-to-int v2, v7

    goto :goto_0

    .line 798
    :cond_2
    int-to-float v7, p2

    int-to-float v8, p1

    div-float v3, v7, v8

    .line 799
    int-to-float v7, v6

    int-to-float v8, v4

    div-float v5, v7, v8

    .line 801
    cmpl-float v7, v3, v5

    if-lez v7, :cond_3

    .line 802
    move v1, v6

    .line 803
    int-to-float v7, v6

    div-float/2addr v7, v3

    float-to-int v2, v7

    goto :goto_0

    .line 805
    :cond_3
    move v2, v4

    .line 806
    int-to-float v7, v4

    mul-float/2addr v7, v3

    float-to-int v1, v7

    goto :goto_0
.end method

.method public static getIdFromUri(Landroid/app/Activity;Landroid/net/Uri;)J
    .locals 12
    .parameter "activity"
    .parameter "contentUri"

    .prologue
    const-wide/16 v10, -0x1

    .line 638
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 640
    .local v2, proj:[Ljava/lang/String;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 676
    :cond_0
    :goto_0
    return-wide v10

    .line 644
    :cond_1
    const/4 v8, 0x0

    .line 648
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 654
    if-eqz v8, :cond_4

    .line 655
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 656
    .local v7, count:I
    if-eqz v7, :cond_3

    .line 657
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 658
    .local v6, column_index:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 659
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 671
    .local v10, id:J
    if-eqz v8, :cond_0

    .line 672
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 673
    .end local v6           #column_index:I
    .end local v7           #count:I
    .end local v10           #id:J
    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    .line 668
    :catch_0
    move-exception v9

    .line 669
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "CameraApp"

    const-string v1, "Could not ID from URI"

    invoke-static {v0, v1, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 671
    if-eqz v8, :cond_0

    .line 672
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 671
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 672
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 673
    const/4 v8, 0x0

    .line 671
    :cond_2
    throw v0

    .restart local v7       #count:I
    :cond_3
    if-eqz v8, :cond_0

    .line 672
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 671
    .end local v7           #count:I
    :cond_4
    if-eqz v8, :cond_0

    .line 672
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public static getPictureSizeScale(ILjava/lang/String;ILjava/lang/String;)D
    .locals 7
    .parameter "cameraID"
    .parameter "shotMode"
    .parameter "projectCode"
    .parameter "pictureSize"

    .prologue
    const-wide v0, 0x3ff1c71c53f39d1bL

    const-wide v2, 0x3ff199999999999aL

    const-wide v4, 0x3fe999999999999aL

    .line 708
    const-string v6, "shotmode_continuous"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 709
    sparse-switch p2, :sswitch_data_0

    .line 741
    :cond_0
    :goto_0
    return-wide v0

    .line 713
    :sswitch_0
    const-wide v0, 0x3feccccccccccccdL

    goto :goto_0

    .line 718
    :cond_1
    const-string v6, "shotmode_panorama"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "shotmode_free_panorama"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    if-eq p0, v6, :cond_0

    .line 722
    const-string v0, "shotmode_dual_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 723
    const-wide v0, 0x4008cccccccccccdL

    goto :goto_0

    .line 727
    :cond_2
    sparse-switch p2, :sswitch_data_1

    move-wide v0, v4

    .line 741
    goto :goto_0

    :sswitch_1
    move-wide v0, v2

    .line 730
    goto :goto_0

    .line 733
    :sswitch_2
    const-string v0, "1280x960"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 734
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPictureSizeScale1 is = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v2

    .line 735
    goto :goto_0

    .line 737
    :cond_3
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPictureSizeScale2 is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v4

    .line 738
    goto :goto_0

    .line 709
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch

    .line 727
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_1
        0x7 -> :sswitch_2
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getSampleSize([BLjava/io/FileDescriptor;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)I
    .locals 9
    .parameter "jpegData"
    .parameter "fd"
    .parameter "filePath"
    .parameter "opts"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    const/4 v7, 0x0

    .line 748
    const/4 v3, 0x4

    .line 749
    .local v3, sampleSize:I
    if-nez p3, :cond_0

    move v4, v3

    .line 775
    .end local v3           #sampleSize:I
    .local v4, sampleSize:I
    :goto_0
    return v4

    .line 752
    .end local v4           #sampleSize:I
    .restart local v3       #sampleSize:I
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 753
    if-eqz p0, :cond_3

    .line 754
    array-length v6, p0

    invoke-static {p0, v7, v6, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 760
    :cond_1
    :goto_1
    iget v2, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 761
    .local v2, imageWidth:I
    iget v0, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 762
    .local v0, imageHeight:I
    if-lt v0, v2, :cond_5

    move v1, v0

    .line 763
    .local v1, imageLength:I
    :goto_2
    if-lt p5, p4, :cond_6

    move v5, p5

    .line 765
    .local v5, targetLength:I
    :goto_3
    if-lez v2, :cond_2

    if-gtz v0, :cond_7

    :cond_2
    move v4, v3

    .line 766
    .end local v3           #sampleSize:I
    .restart local v4       #sampleSize:I
    goto :goto_0

    .line 755
    .end local v0           #imageHeight:I
    .end local v1           #imageLength:I
    .end local v2           #imageWidth:I
    .end local v4           #sampleSize:I
    .end local v5           #targetLength:I
    .restart local v3       #sampleSize:I
    :cond_3
    if-eqz p1, :cond_4

    .line 756
    const/4 v6, 0x0

    invoke-static {p1, v6, p3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 757
    :cond_4
    if-eqz p2, :cond_1

    .line 758
    invoke-static {p2, p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_1

    .restart local v0       #imageHeight:I
    .restart local v2       #imageWidth:I
    :cond_5
    move v1, v2

    .line 762
    goto :goto_2

    .restart local v1       #imageLength:I
    :cond_6
    move v5, p4

    .line 763
    goto :goto_3

    .line 768
    .restart local v5       #targetLength:I
    :cond_7
    const/4 v3, 0x1

    .line 769
    :goto_4
    div-int/lit8 v6, v1, 0x2

    if-lt v6, v5, :cond_8

    .line 770
    div-int/lit8 v1, v1, 0x2

    .line 771
    mul-int/lit8 v3, v3, 0x2

    goto :goto_4

    .line 773
    :cond_8
    iput-boolean v7, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 774
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSampleSize is = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 775
    .end local v3           #sampleSize:I
    .restart local v4       #sampleSize:I
    goto :goto_0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    .local p1, s:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 225
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    .end local v0           #i:I
    :goto_1
    return v0

    .line 224
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static isConfigureLandscape(Landroid/content/res/Resources;)Z
    .locals 3
    .parameter "resource"

    .prologue
    const/4 v0, 0x0

    .line 906
    if-eqz p0, :cond_0

    .line 907
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 909
    :cond_0
    return v0
.end method

.method public static isEqualDegree(Landroid/content/res/Resources;II)Z
    .locals 3
    .parameter "resource"
    .parameter "current"
    .parameter "input"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 913
    invoke-static {p0}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 914
    if-ne p1, p2, :cond_1

    .line 916
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 914
    goto :goto_0

    .line 916
    :cond_2
    add-int/lit8 v2, p1, 0x5a

    rem-int/lit16 v2, v2, 0x168

    if-eq v2, p2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isPowerOf2(I)Z
    .locals 1
    .parameter "n"

    .prologue
    .line 529
    neg-int v0, p0

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadBitmapfromFile(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "strFilename"
    .parameter "samplesize"

    .prologue
    .line 342
    const/4 v0, 0x0

    .line 344
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 345
    .local v1, opts:Landroid/graphics/BitmapFactory$Options;
    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 346
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 348
    return-object v0
.end method

.method public static makeBitmap([BII)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "jpegData"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 234
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 235
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 236
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 238
    iget-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v5, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v5, :cond_1

    .line 240
    :cond_0
    const-string v3, "CameraApp"

    const-string v4, "makeBitmap decordByteArray fail"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v2

    .line 243
    .restart local v1       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v3, -0x1

    invoke-static {v1, v3, p2}, Lcom/lge/camera/util/Util;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 244
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "maxNumOfPixels : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "options.inSampleSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 247
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 248
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 249
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 251
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 252
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    const-string v3, "CameraApp"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static makeBitmap([BZ)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "jpegData"
    .parameter "isFlip"

    .prologue
    const/4 v3, -0x1

    .line 259
    :try_start_0
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 260
    .local v9, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 261
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v2, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 262
    iget-boolean v1, v9, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v1, :cond_0

    iget v1, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v1, v3, :cond_0

    iget v1, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v1, v3, :cond_1

    .line 264
    :cond_0
    const/4 v7, 0x0

    .line 290
    .end local v9           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v7

    .line 266
    .restart local v9       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 267
    const/4 v1, 0x1

    iput-boolean v1, v9, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 268
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 269
    const/4 v1, 0x1

    iput-boolean v1, v9, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 270
    if-eqz p1, :cond_4

    .line 271
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v2, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 272
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 273
    .local v5, sideInversion:Landroid/graphics/Matrix;
    invoke-static {p0}, Lcom/lge/camera/util/ExifUtil;->getOrientation([B)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/ExifUtil;->getOrientation([B)I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 274
    :cond_2
    const/high16 v1, 0x3f80

    const/high16 v2, -0x4080

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 279
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 281
    .local v7, convertBmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 282
    const/4 v0, 0x0

    .line 283
    goto :goto_0

    .line 276
    .end local v7           #convertBmp:Landroid/graphics/Bitmap;
    :cond_3
    const/high16 v1, -0x4080

    const/high16 v2, 0x3f80

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 288
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #sideInversion:Landroid/graphics/Matrix;
    .end local v9           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v8

    .line 289
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    const-string v1, "CameraApp"

    const-string v2, "Got oom exception "

    invoke-static {v1, v2, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    const/4 v7, 0x0

    goto :goto_0

    .line 285
    .end local v8           #ex:Ljava/lang/OutOfMemoryError;
    .restart local v9       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_4
    const/4 v1, 0x0

    :try_start_1
    array-length v2, p0

    invoke-static {p0, v1, v2, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_0
.end method

.method public static makeBitmapFromRawData([BII)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "rawData"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 191
    :try_start_0
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 192
    .local v0, bf:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 193
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 194
    .local v1, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v0           #bf:Ljava/nio/ByteBuffer;
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 196
    :catch_0
    move-exception v2

    .line 197
    .local v2, ex:Ljava/lang/OutOfMemoryError;
    const-string v3, "CameraApp"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 533
    add-int/lit8 p0, p0, -0x1

    .line 534
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 535
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 536
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 537
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 538
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 539
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static recursiveRecycle(Landroid/view/View;)V
    .locals 5
    .parameter "rootView"

    .prologue
    const/4 v4, 0x0

    .line 411
    if-nez p0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-virtual {p0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 417
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v1, p0

    .line 418
    check-cast v1, Landroid/view/ViewGroup;

    .line 419
    .local v1, group:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 420
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 421
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Util;->recursiveRecycle(Landroid/view/View;)V

    .line 420
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 424
    :cond_1
    instance-of v3, p0, Landroid/widget/AdapterView;

    if-nez v3, :cond_2

    .line 425
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 429
    .end local v0           #count:I
    .end local v1           #group:Landroid/view/ViewGroup;
    .end local v2           #i:I
    :cond_2
    instance-of v3, p0, Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    .line 430
    check-cast p0, Landroid/widget/ImageView;

    .end local p0
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 432
    :cond_3
    const/4 p0, 0x0

    .line 433
    .restart local p0
    goto :goto_0
.end method

.method public static recycleBitmapDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "drawable"

    .prologue
    .line 382
    if-eqz p0, :cond_1

    .line 383
    :try_start_0
    instance-of v3, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 384
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 385
    .local v1, bm:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 386
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 389
    .end local v1           #bm:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :cond_1
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v2

    .line 392
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "CameraApp"

    const-string v4, "recycleBitmapDrawable Exception "

    invoke-static {v3, v4, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static requestUpBoxBackupPhoto(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .parameter "context"
    .parameter "filepath"
    .parameter "cond"

    .prologue
    .line 688
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isUPlusBox()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_1

    .line 689
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "SetUplusBoxMode : model is not supported."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    :goto_0
    return-void

    .line 693
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 694
    .local v1, pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 697
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "lg.uplusbox.intent.action.CLOUD_BACKUP_PHOTO"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    const-string v2, "extra_file_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 699
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "b"
    .parameter "degrees"

    .prologue
    const/high16 v3, 0x4000

    .line 84
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 85
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 86
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 89
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 91
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    const/4 p0, 0x0

    .line 94
    move-object p0, v7

    .line 101
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 96
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .line 98
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OutOfMemoryError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "b"
    .parameter "degrees"
    .parameter "mirror"

    .prologue
    const/high16 v4, 0x4000

    const/4 v3, 0x0

    .line 105
    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    if-eqz p0, :cond_3

    .line 106
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 107
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 109
    if-eqz p2, :cond_2

    .line 110
    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 111
    add-int/lit16 v0, p1, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 112
    if-eqz p1, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_4

    .line 113
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 122
    :cond_2
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 124
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_3

    .line 125
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    const/4 p0, 0x0

    .line 127
    move-object p0, v7

    .line 134
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    return-object p0

    .line 114
    .restart local v5       #m:Landroid/graphics/Matrix;
    :cond_4
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_5

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_6

    .line 115
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 117
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid degrees="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :catch_0
    move-exception v8

    .line 131
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OutOfMemoryError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static slideIn(Landroid/view/View;IILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 3
    .parameter "view"
    .parameter "from"
    .parameter "duration"
    .parameter "al"

    .prologue
    const/4 v2, 0x0

    .line 474
    if-nez p0, :cond_0

    .line 475
    const/4 v0, 0x0

    .line 502
    :goto_0
    return-object v0

    .line 477
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 478
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 480
    packed-switch p1, :pswitch_data_0

    .line 494
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 482
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x78

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 497
    .local v0, anim:Landroid/view/animation/Animation;
    :goto_1
    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 498
    invoke-virtual {v0, p3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 499
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 501
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 485
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x78

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 486
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_1

    .line 488
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x78

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 489
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_1

    .line 491
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x78

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 492
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_1

    .line 480
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static slideOut(Landroid/view/View;IILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 3
    .parameter "view"
    .parameter "to"
    .parameter "duration"
    .parameter "al"

    .prologue
    const/4 v2, 0x0

    .line 442
    if-nez p0, :cond_0

    .line 443
    const/4 v0, 0x0

    .line 470
    :goto_0
    return-object v0

    .line 445
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 446
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 448
    packed-switch p1, :pswitch_data_0

    .line 462
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 450
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x78

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 465
    .local v0, anim:Landroid/view/animation/Animation;
    :goto_1
    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 466
    invoke-virtual {v0, p3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 467
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 469
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 453
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x78

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 454
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_1

    .line 456
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x78

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 457
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_1

    .line 459
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x78

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 460
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_1

    .line 448
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static startAlphaAnimation(Landroid/view/View;IIILandroid/view/animation/Animation$AnimationListener;)V
    .locals 3
    .parameter "view"
    .parameter "start"
    .parameter "end"
    .parameter "duration"
    .parameter "al"

    .prologue
    .line 507
    if-nez p0, :cond_0

    .line 515
    :goto_0
    return-void

    .line 510
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 511
    .local v0, anim:Landroid/view/animation/Animation;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 512
    invoke-virtual {v0, p4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 513
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 514
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
