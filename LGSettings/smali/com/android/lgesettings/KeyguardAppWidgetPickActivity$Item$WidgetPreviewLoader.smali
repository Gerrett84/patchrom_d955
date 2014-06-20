.class Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;
.super Landroid/os/AsyncTask;
.source "KeyguardAppWidgetPickActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WidgetPreviewLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$RectCache;,
        Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$PaintCache;,
        Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$CanvasCache;,
        Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$WeakReferenceThreadLocal;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mIconDpi:I

.field private mIsCameraWidget:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mResources:Landroid/content/res/Resources;

.field private mView:Landroid/widget/ImageView;

.field sCachedAppWidgetPreviewCanvas:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$CanvasCache;

.field sCachedAppWidgetPreviewDestRect:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$RectCache;

.field sCachedAppWidgetPreviewPaint:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$PaintCache;

.field sCachedAppWidgetPreviewSrcRect:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$RectCache;

.field final synthetic this$0:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "v"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->this$0:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;

    .line 219
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 404
    new-instance v2, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$CanvasCache;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$CanvasCache;-><init>(Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;)V

    iput-object v2, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->sCachedAppWidgetPreviewCanvas:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$CanvasCache;

    .line 405
    new-instance v2, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$RectCache;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$RectCache;-><init>(Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;)V

    iput-object v2, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->sCachedAppWidgetPreviewSrcRect:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$RectCache;

    .line 406
    new-instance v2, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$RectCache;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$RectCache;-><init>(Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;)V

    iput-object v2, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->sCachedAppWidgetPreviewDestRect:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$RectCache;

    .line 407
    new-instance v2, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$PaintCache;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$PaintCache;-><init>(Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;)V

    iput-object v2, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->sCachedAppWidgetPreviewPaint:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$PaintCache;

    .line 220
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mResources:Landroid/content/res/Resources;

    .line 221
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 222
    const-string v2, "activity"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 224
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mIconDpi:I

    .line 225
    iput-object p3, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mView:Landroid/widget/ImageView;

    .line 226
    iget-object v2, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 227
    .local v1, tag:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 228
    iget-object v2, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mIsCameraWidget:Z

    .line 229
    iget-object v2, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 231
    :cond_0
    return-void
.end method

.method private combineImages(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "checkBitmap"
    .parameter "camBitmap"

    .prologue
    .line 286
    const/4 v3, 0x0

    .line 287
    .local v3, cs:Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0e0023

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 288
    .local v5, maxWidth:I
    iget-object v10, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0e0055

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 290
    .local v4, maxHeight:I
    iget-object v10, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0e005f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 292
    .local v1, checkBoxRightMarginRight:I
    invoke-direct {p0, p2, v5, v4}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->resizeCameraBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 294
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 295
    .local v0, cameraHeight:I
    sub-int v10, v4, v0

    div-int/lit8 v10, v10, 0x2

    int-to-float v9, v10

    .line 296
    .local v9, y_pos:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v6, v10

    .line 298
    .local v6, x_pos:F
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 299
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 300
    .local v2, comboImage:Landroid/graphics/Canvas;
    invoke-static {}, Lcom/android/lgesettings/Utils;->isRTLLanguage()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {}, Lcom/android/lgesettings/Utils;->isEnglishDigitRTLLanguage()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 302
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v10, v1

    sub-int v10, v5, v10

    int-to-float v7, v10

    .line 304
    .local v7, x_pos_cameraicon_rtl:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int v10, v5, v10

    int-to-float v8, v10

    .line 305
    .local v8, x_pos_checkbox_rtl:F
    const/4 v10, 0x0

    invoke-virtual {v2, p2, v7, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 306
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2, p1, v8, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 312
    .end local v7           #x_pos_cameraicon_rtl:F
    .end local v8           #x_pos_checkbox_rtl:F
    :goto_0
    return-object v3

    .line 309
    :cond_1
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v2, p1, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 310
    const/4 v10, 0x0

    invoke-virtual {v2, p2, v6, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getCamereBitmap()Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    .line 253
    const/4 v2, 0x0

    .line 254
    .local v2, finalBitmap:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 255
    .local v0, cameraIcon:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 256
    .local v1, checkImage:Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->this$0:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;

    #getter for: Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;->access$000(Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "show_camera_widget"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 258
    .local v6, isChecked:I
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 259
    .local v5, intent:Landroid/content/Intent;
    const-string v8, "com.lge.camera"

    const-string v9, "com.lge.camera.CameraApp"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    iget-object v8, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->this$0:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;

    #getter for: Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;->access$000(Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;)Landroid/content/Context;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 262
    iget-object v7, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 263
    .local v7, mPm:Landroid/content/pm/PackageManager;
    if-eqz v7, :cond_0

    .line 264
    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 265
    .local v4, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v4, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 266
    .local v3, icon:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v3, :cond_1

    .line 267
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 274
    .end local v3           #icon:Landroid/graphics/drawable/BitmapDrawable;
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v7           #mPm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    if-nez v6, :cond_2

    .line 275
    iget-object v8, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f020085

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 281
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->combineImages(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 282
    return-object v2

    .line 269
    .restart local v3       #icon:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4       #info:Landroid/content/pm/ResolveInfo;
    .restart local v7       #mPm:Landroid/content/pm/PackageManager;
    :cond_1
    iget-object v8, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f020082

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 278
    .end local v3           #icon:Landroid/graphics/drawable/BitmapDrawable;
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v7           #mPm:Landroid/content/pm/PackageManager;
    :cond_2
    iget-object v8, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f020084

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1
.end method

.method private getWidgetPreview(Landroid/content/ComponentName;IIII)Landroid/graphics/Bitmap;
    .locals 26
    .parameter "provider"
    .parameter "previewImage"
    .parameter "iconId"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    .line 412
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    .line 413
    .local v22, packageName:Ljava/lang/String;
    if-gez p4, :cond_0

    const p4, 0x7fffffff

    .line 414
    :cond_0
    if-gez p5, :cond_1

    const p5, 0x7fffffff

    .line 417
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0e0004

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 419
    .local v9, appIconSize:I
    const/4 v11, 0x0

    .line 420
    .local v11, drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->access$100()Lcom/android/lgesettings/AppThemeWidget;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 421
    invoke-static {}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->access$100()Lcom/android/lgesettings/AppThemeWidget;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/lgesettings/AppThemeWidget;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 424
    :cond_2
    if-eqz p2, :cond_3

    if-nez v11, :cond_3

    .line 425
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1, v7}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 426
    if-nez v11, :cond_3

    .line 427
    const-string v4, "KeyguardAppWidgetPickActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t load widget preview drawable 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for provider: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_3
    const/4 v6, 0x0

    .line 435
    .local v6, defaultPreview:Landroid/graphics/Bitmap;
    if-eqz v11, :cond_6

    const/16 v25, 0x1

    .line 436
    .local v25, widgetPreviewExists:Z
    :goto_0
    if-eqz v25, :cond_7

    .line 437
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    .line 438
    .local v18, bitmapWidth:I
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    .line 460
    .local v17, bitmapHeight:I
    :cond_4
    :goto_1
    const/high16 v23, 0x3f80

    .line 461
    .local v23, scale:F
    move/from16 v0, v18

    move/from16 v1, p4

    if-le v0, v1, :cond_5

    .line 462
    move/from16 v0, p4

    int-to-float v4, v0

    move/from16 v0, v18

    int-to-float v7, v0

    div-float v23, v4, v7

    .line 464
    :cond_5
    move/from16 v0, v18

    int-to-float v4, v0

    mul-float v4, v4, v23

    float-to-int v15, v4

    .line 465
    .local v15, finalPreviewWidth:I
    move/from16 v0, v17

    int-to-float v4, v0

    mul-float v4, v4, v23

    float-to-int v0, v4

    move/from16 v16, v0

    .line 467
    .local v16, finalPreviewHeight:I
    move/from16 v18, v15

    .line 468
    move/from16 v0, v16

    move/from16 v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 470
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 474
    .local v12, preview:Landroid/graphics/Bitmap;
    if-eqz v25, :cond_9

    .line 475
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v16}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 494
    :goto_2
    return-object v12

    .line 435
    .end local v12           #preview:Landroid/graphics/Bitmap;
    .end local v15           #finalPreviewWidth:I
    .end local v16           #finalPreviewHeight:I
    .end local v17           #bitmapHeight:I
    .end local v18           #bitmapWidth:I
    .end local v23           #scale:F
    .end local v25           #widgetPreviewExists:Z
    :cond_6
    const/16 v25, 0x0

    goto :goto_0

    .line 441
    .restart local v25       #widgetPreviewExists:Z
    :cond_7
    move/from16 v18, v9

    .line 442
    .restart local v18       #bitmapWidth:I
    move/from16 v17, v9

    .line 443
    .restart local v17       #bitmapHeight:I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 447
    const/4 v5, 0x0

    .line 448
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    if-lez p3, :cond_8

    .line 449
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 450
    :cond_8
    if-eqz v5, :cond_4

    .line 451
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move v10, v9

    invoke-direct/range {v4 .. v10}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 454
    :catch_0
    move-exception v4

    goto :goto_1

    .line 478
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .restart local v12       #preview:Landroid/graphics/Bitmap;
    .restart local v15       #finalPreviewWidth:I
    .restart local v16       #finalPreviewHeight:I
    .restart local v23       #scale:F
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->sCachedAppWidgetPreviewCanvas:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$CanvasCache;

    invoke-virtual {v4}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$CanvasCache;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/Canvas;

    .line 479
    .local v19, c:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->sCachedAppWidgetPreviewSrcRect:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$RectCache;

    invoke-virtual {v4}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$RectCache;->get()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/graphics/Rect;

    .line 480
    .local v24, src:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->sCachedAppWidgetPreviewDestRect:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$RectCache;

    invoke-virtual {v4}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$RectCache;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/graphics/Rect;

    .line 481
    .local v20, dest:Landroid/graphics/Rect;
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 482
    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v7, v8, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 483
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v4, v7, v15, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 485
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->sCachedAppWidgetPreviewPaint:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$PaintCache;

    invoke-virtual {v4}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$PaintCache;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/graphics/Paint;

    .line 486
    .local v21, p:Landroid/graphics/Paint;
    if-nez v21, :cond_a

    .line 487
    new-instance v21, Landroid/graphics/Paint;

    .end local v21           #p:Landroid/graphics/Paint;
    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    .line 488
    .restart local v21       #p:Landroid/graphics/Paint;
    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 489
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->sCachedAppWidgetPreviewPaint:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$PaintCache;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$PaintCache;->set(Ljava/lang/Object;)V

    .line 491
    :cond_a
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 492
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2
.end method

.method private renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    .locals 8
    .parameter "d"
    .parameter "bitmap"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 528
    const/high16 v7, 0x3f80

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V

    .line 529
    return-void
.end method

.method private renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V
    .locals 4
    .parameter "d"
    .parameter "bitmap"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "scale"

    .prologue
    .line 533
    if-eqz p2, :cond_0

    .line 534
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 535
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {v0, p7, p7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 536
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 537
    .local v1, oldBounds:Landroid/graphics/Rect;
    add-int v2, p3, p5

    add-int v3, p4, p6

    invoke-virtual {p1, p3, p4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 538
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 539
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 540
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 542
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v1           #oldBounds:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private resizeCameraBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "camBitmap"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    const/4 v3, 0x0

    .line 316
    const/4 v10, 0x0

    .line 318
    .local v10, cs:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 319
    .local v8, bitmapWidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 320
    .local v7, bitmapHeight:I
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 322
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    const/high16 v11, 0x3f80

    .line 323
    .local v11, scale:F
    iget-object v0, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0e005e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 326
    .local v9, cameraWidgetHeight:I
    int-to-float v0, v9

    int-to-float v2, v7

    div-float v11, v0, v2

    .line 328
    int-to-float v0, v8

    mul-float/2addr v0, v11

    float-to-int v5, v0

    .line 329
    .local v5, finalPreviewWidth:I
    int-to-float v0, v7

    mul-float/2addr v0, v11

    float-to-int v6, v0

    .line 331
    .local v6, finalPreviewHeight:I
    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 332
    invoke-static {v6, p3}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 334
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    .line 335
    invoke-direct/range {v0 .. v6}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 337
    return-object p1
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .parameter "params"

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    const/4 v6, 0x0

    .line 236
    .local v6, b:Landroid/graphics/Bitmap;
    iget-boolean v0, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mIsCameraWidget:Z

    if-eqz v0, :cond_1

    .line 237
    invoke-direct {p0}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->getCamereBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 247
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->publishProgress([Ljava/lang/Object;)V

    .line 249
    .end local v6           #b:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 239
    .restart local v6       #b:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0e0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 241
    .local v4, appWidgetPreviewWidth:I
    iget-object v0, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0e0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 243
    .local v5, appWidgetPreviewHeight:I
    new-instance v1, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->this$0:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;

    iget-object v0, v0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->this$0:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;

    iget-object v2, v2, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;->className:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->this$0:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;

    iget v2, v0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;->appWidgetPreviewId:I

    iget-object v0, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->this$0:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;

    iget v3, v0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;->iconId:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->getWidgetPreview(Landroid/content/ComponentName;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0
.end method

.method public getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 497
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "resources"
    .parameter "iconId"

    .prologue
    .line 504
    :try_start_0
    iget v2, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 509
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v0

    .line 505
    :catch_0
    move-exception v1

    .line 506
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 509
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "packageName"
    .parameter "iconId"

    .prologue
    .line 515
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 519
    .local v1, resources:Landroid/content/res/Resources;
    :goto_0
    if-eqz v1, :cond_0

    .line 520
    if-eqz p2, :cond_0

    .line 521
    invoke-virtual {p0, v1, p2}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 524
    :goto_1
    return-object v2

    .line 516
    .end local v1           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 517
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .restart local v1       #resources:Landroid/content/res/Resources;
    goto :goto_0

    .line 524
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1
.end method

.method public varargs onProgressUpdate([Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 341
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 342
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 344
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 212
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->onProgressUpdate([Landroid/graphics/Bitmap;)V

    return-void
.end method
