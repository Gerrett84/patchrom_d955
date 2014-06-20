.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperManager$Globals$SprintChameleonAttributes;
    }
.end annotation


# static fields
.field private static final MSG_CLEAR_WALLPAPER:I = 0x1


# instance fields
.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mService:Landroid/app/IWallpaperManager;

.field private mWallpaper:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .parameter "looper"

    .prologue
    .line 236
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 237
    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 238
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 239
    new-instance v1, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v1, p0, p1}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    .line 252
    return-void
.end method

.method static synthetic access$002(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 227
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 227
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 227
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "context"

    .prologue
    .line 330
    :try_start_0
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 331
    .local v8, params:Landroid/os/Bundle;
    iget-object v12, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v12, p0, v8}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 332
    .local v3, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_7

    .line 333
    const-string/jumbo v12, "width"

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 334
    .local v11, width:I
    const-string v12, "height"

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 337
    .local v4, height:I
    sget-boolean v12, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v12, :cond_8

    .line 338
    const-string v12, "drmKey"

    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 339
    .local v1, decInfo:[B
    if-eqz v1, :cond_8

    .line 340
    const/4 v6, 0x0

    .line 342
    .local v6, is:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-static {v12, v1}, Lcom/lge/lgdrm/DrmContentSession;->openDrmStream(Ljava/io/FileDescriptor;[B)Lcom/lge/lgdrm/DrmStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v6

    .line 343
    if-nez v6, :cond_1

    .line 344
    const/4 v12, 0x0

    .line 374
    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 375
    if-eqz v6, :cond_0

    .line 376
    invoke-virtual {v6}, Lcom/lge/lgdrm/DrmStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 404
    .end local v1           #decInfo:[B
    .end local v3           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v4           #height:I
    .end local v6           #is:Ljava/io/InputStream;
    .end local v8           #params:Landroid/os/Bundle;
    .end local v11           #width:I
    :cond_0
    :goto_0
    return-object v12

    .line 347
    .restart local v1       #decInfo:[B
    .restart local v3       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v4       #height:I
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v8       #params:Landroid/os/Bundle;
    .restart local v11       #width:I
    :cond_1
    const/4 v9, 0x0

    .line 348
    .local v9, sampleSize:I
    :try_start_3
    invoke-virtual {v6}, Lcom/lge/lgdrm/DrmStream;->available()I

    move-result v10

    .line 353
    .local v10, size:I
    const v12, 0x4b000

    if-lt v10, v12, :cond_3

    .line 354
    const/4 v5, 0x0

    .line 355
    .local v5, i:I
    const/4 v5, 0x2

    :goto_1
    div-int v12, v10, v5

    const v13, 0x4b000

    if-le v12, v13, :cond_2

    .line 357
    mul-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 359
    :cond_2
    move v9, v5

    .line 362
    .end local v5           #i:I
    :cond_3
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 363
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz v9, :cond_4

    .line 364
    iput v9, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 366
    :cond_4
    const/4 v12, 0x0

    invoke-static {v6, v12, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 368
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {p1, v0, v11, v4}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v12

    .line 374
    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 375
    if-eqz v6, :cond_0

    .line 376
    invoke-virtual {v6}, Lcom/lge/lgdrm/DrmStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 378
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v9           #sampleSize:I
    .end local v10           #size:I
    :catch_0
    move-exception v13

    goto :goto_0

    .line 369
    :catch_1
    move-exception v2

    .line 370
    .local v2, e:Ljava/lang/OutOfMemoryError;
    :try_start_5
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Can\'t decode file"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 374
    :try_start_6
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 375
    if-eqz v6, :cond_5

    .line 376
    invoke-virtual {v6}, Lcom/lge/lgdrm/DrmStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 381
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :cond_5
    :goto_2
    const/4 v12, 0x0

    goto :goto_0

    .line 373
    :catchall_0
    move-exception v12

    .line 374
    :try_start_7
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 375
    if-eqz v6, :cond_6

    .line 376
    invoke-virtual {v6}, Lcom/lge/lgdrm/DrmStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 373
    :cond_6
    :goto_3
    :try_start_8
    throw v12
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    .line 401
    .end local v1           #decInfo:[B
    .end local v3           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v4           #height:I
    .end local v6           #is:Ljava/io/InputStream;
    .end local v8           #params:Landroid/os/Bundle;
    .end local v11           #width:I
    :catch_2
    move-exception v12

    .line 404
    :cond_7
    :goto_4
    const/4 v12, 0x0

    goto :goto_0

    .line 387
    .restart local v3       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v4       #height:I
    .restart local v8       #params:Landroid/os/Bundle;
    .restart local v11       #width:I
    :cond_8
    :try_start_9
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 388
    .restart local v7       #options:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13, v7}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 390
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    invoke-static {p1, v0, v11, v4}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_4

    move-result-object v12

    .line 395
    :try_start_a
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_0

    .line 396
    :catch_3
    move-exception v13

    goto :goto_0

    .line 391
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_4
    move-exception v2

    .line 392
    .restart local v2       #e:Ljava/lang/OutOfMemoryError;
    :try_start_b
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Can\'t decode file"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 395
    :try_start_c
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_4

    .line 396
    :catch_5
    move-exception v12

    goto :goto_4

    .line 394
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :catchall_1
    move-exception v12

    .line 395
    :try_start_d
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_2

    .line 394
    :goto_5
    :try_start_e
    throw v12
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_2

    .line 371
    .restart local v1       #decInfo:[B
    .restart local v6       #is:Ljava/io/InputStream;
    :catch_6
    move-exception v12

    .line 374
    :try_start_f
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 375
    if-eqz v6, :cond_5

    .line 376
    invoke-virtual {v6}, Lcom/lge/lgdrm/DrmStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_2

    .line 378
    :catch_7
    move-exception v12

    goto :goto_2

    .line 396
    .end local v1           #decInfo:[B
    .end local v6           #is:Ljava/io/InputStream;
    :catch_8
    move-exception v13

    goto :goto_5

    .line 378
    .restart local v1       #decInfo:[B
    .restart local v6       #is:Ljava/io/InputStream;
    :catch_9
    move-exception v13

    goto :goto_3
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 741
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x1080222

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 743
    .local v3, is:Ljava/io/InputStream;
    if-eqz v3, :cond_0

    .line 744
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v5

    .line 745
    .local v5, width:I
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 748
    .local v2, height:I
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 749
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x0

    invoke-static {v3, v6, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 750
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {p1, v0, v5, v2}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 755
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 764
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #height:I
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #width:I
    :goto_0
    return-object v6

    .line 751
    .restart local v2       #height:I
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #width:I
    :catch_0
    move-exception v1

    .line 752
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Can\'t decode stream"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 755
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .end local v2           #height:I
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #width:I
    :cond_0
    :goto_1
    move-object v6, v7

    .line 764
    goto :goto_0

    .line 754
    .restart local v2       #height:I
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #width:I
    :catchall_0
    move-exception v6

    .line 755
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 754
    :goto_2
    :try_start_6
    throw v6
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 761
    .end local v2           #height:I
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #width:I
    :catch_1
    move-exception v6

    goto :goto_1

    .line 756
    .restart local v2       #height:I
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #width:I
    :catch_2
    move-exception v8

    goto :goto_2

    .restart local v1       #e:Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v6

    goto :goto_1

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_4
    move-exception v7

    goto :goto_0
.end method

.method private getDefaultWallpaperLockedFromCarrierPartition(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 421
    const/4 v4, 0x0

    .line 422
    .local v4, fis:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 426
    .local v0, bis:Ljava/io/BufferedInputStream;
    const-string/jumbo v11, "ro.sprint.hfa.flag"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 427
    .local v8, phoneActivated:Ljava/lang/String;
    const-string v11, "activationOK"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 480
    :goto_0
    return-object v10

    .line 434
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    const-string v11, "/carrier/media/default_wallpaper.jpg"

    invoke-direct {v5, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_7

    .line 435
    .end local v4           #fis:Ljava/io/FileInputStream;
    .local v5, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_a

    .line 437
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .local v1, bis:Ljava/io/BufferedInputStream;
    if-eqz v5, :cond_2

    .line 438
    :try_start_2
    iget-object v11, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v11}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v9

    .line 439
    .local v9, width:I
    iget-object v11, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v11}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_b

    move-result v6

    .line 442
    .local v6, height:I
    :try_start_3
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 443
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x0

    invoke-static {v1, v11, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 445
    .local v2, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-static {p1, v2, v11, v12}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v11

    .line 452
    if-eqz v5, :cond_1

    .line 453
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_b

    .line 476
    :cond_1
    :goto_1
    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    .line 477
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    move-object v10, v11

    .line 445
    goto :goto_0

    .line 446
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #bm:Landroid/graphics/Bitmap;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    .line 447
    .local v3, e:Ljava/lang/OutOfMemoryError;
    :try_start_5
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Can\'t decode stream"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 452
    if-eqz v5, :cond_2

    .line 453
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_b

    .line 476
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    .end local v6           #height:I
    .end local v9           #width:I
    :cond_2
    :goto_2
    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    .line 477
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v4, v5

    .line 478
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 448
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v6       #height:I
    .restart local v9       #width:I
    :catch_1
    move-exception v3

    .line 449
    .local v3, e:Ljava/lang/NullPointerException;
    :try_start_7
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Image Decoding Error"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 452
    if-eqz v5, :cond_2

    .line 453
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_b

    goto :goto_2

    .line 455
    .end local v3           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v11

    goto :goto_2

    .line 451
    :catchall_0
    move-exception v11

    .line 452
    if-eqz v5, :cond_3

    .line 453
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_b

    .line 451
    :cond_3
    :goto_3
    :try_start_a
    throw v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_b

    .line 460
    .end local v6           #height:I
    .end local v9           #width:I
    :catch_3
    move-exception v3

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v4, v5

    .line 461
    .end local v5           #fis:Ljava/io/FileInputStream;
    .local v3, e:Ljava/io/FileNotFoundException;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :goto_4
    :try_start_b
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "default_wallpaper.jpg is not exist in carrier partition"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 476
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    .line 477
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :goto_5
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 463
    :catch_4
    move-exception v3

    .line 464
    .local v3, e:Ljava/lang/SecurityException;
    :goto_6
    :try_start_c
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "SecurityException in getDefaultWallpaperLockedFromCarrierPartition"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 476
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    goto :goto_5

    .line 466
    .end local v3           #e:Ljava/lang/SecurityException;
    :catch_5
    move-exception v3

    .line 467
    .local v3, e:Ljava/io/IOException;
    :goto_7
    :try_start_d
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "IOException in getDefaultWallpaperLockedFromCarrierPartition"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 476
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    goto :goto_5

    .line 469
    .end local v3           #e:Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 470
    .local v3, e:Landroid/os/RemoteException;
    :goto_8
    :try_start_e
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "RemoteException in getDefaultWallpaperLockedFromCarrierPartition"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 476
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    goto :goto_5

    .line 472
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_7
    move-exception v3

    .line 473
    .local v3, e:Ljava/lang/NullPointerException;
    :goto_9
    :try_start_f
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Image Decoding Error in getDefaultWallpaperLockedFromCarrierPartition"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 476
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    goto :goto_5

    .end local v3           #e:Ljava/lang/NullPointerException;
    :catchall_1
    move-exception v10

    :goto_a
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    .line 477
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    .line 476
    throw v10

    .line 455
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v6       #height:I
    .restart local v9       #width:I
    :catch_8
    move-exception v12

    goto :goto_3

    .restart local v2       #bm:Landroid/graphics/Bitmap;
    .restart local v7       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_9
    move-exception v10

    goto/16 :goto_1

    .line 476
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #bm:Landroid/graphics/Bitmap;
    .end local v6           #height:I
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v9           #width:I
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v10

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_a

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v10

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_a

    .line 472
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_a
    move-exception v3

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_9

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_b
    move-exception v3

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_9

    .line 469
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_c
    move-exception v3

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_8

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_d
    move-exception v3

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_8

    .line 466
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_e
    move-exception v3

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_7

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_f
    move-exception v3

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_7

    .line 463
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_10
    move-exception v3

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_6

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_11
    move-exception v3

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_6

    .line 460
    :catch_12
    move-exception v3

    goto :goto_4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_13
    move-exception v3

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method private getDefaultWallpaperLockedFromNetworkCode(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 21
    .parameter "context"

    .prologue
    .line 502
    const/4 v6, 0x0

    .line 504
    .local v6, is:Ljava/io/InputStream;
    :try_start_0
    const-string/jumbo v17, "ro.sprint.hfa.flag"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 505
    .local v10, phoneActivated:Ljava/lang/String;
    const-string v17, "activationOK"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 506
    const-string/jumbo v17, "ro.cdma.home.operator.numeric"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 509
    .local v7, networkCode:Ljava/lang/String;
    const/4 v8, 0x0

    .line 510
    .local v8, noOfCarrier:I
    const-string/jumbo v17, "ro.lge.chameleon_no_of_carrier"

    const-string v18, "0"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 511
    .local v13, strNoOfCarrier:Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 513
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v8, :cond_3

    .line 514
    const-string/jumbo v15, "ro.lge.chameleon_shut_wall_"

    .line 517
    .local v15, strPropNameOfCarrierInfo:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 518
    const-string v17, "11111,0,0,0,0,0"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 519
    .local v14, strPropCarrierInfo:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "fisher === strPropNameOfCarrierInfo: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "fisher === strPropCarrierInfo: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    new-instance v11, Landroid/app/WallpaperManager$Globals$SprintChameleonAttributes;

    invoke-direct {v11, v14}, Landroid/app/WallpaperManager$Globals$SprintChameleonAttributes;-><init>(Ljava/lang/String;)V

    .line 524
    .local v11, r:Landroid/app/WallpaperManager$Globals$SprintChameleonAttributes;
    iget-object v0, v11, Landroid/app/WallpaperManager$Globals$SprintChameleonAttributes;->networkCode:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 525
    iget-object v0, v11, Landroid/app/WallpaperManager$Globals$SprintChameleonAttributes;->resourceName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 526
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v17

    const-string v18, "defaultWallpaper: 0"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/16 v17, 0x0

    .line 573
    .end local v5           #i:I
    .end local v7           #networkCode:Ljava/lang/String;
    .end local v8           #noOfCarrier:I
    .end local v10           #phoneActivated:Ljava/lang/String;
    .end local v11           #r:Landroid/app/WallpaperManager$Globals$SprintChameleonAttributes;
    .end local v13           #strNoOfCarrier:Ljava/lang/String;
    .end local v14           #strPropCarrierInfo:Ljava/lang/String;
    .end local v15           #strPropNameOfCarrierInfo:Ljava/lang/String;
    :goto_1
    return-object v17

    .line 528
    .restart local v5       #i:I
    .restart local v7       #networkCode:Ljava/lang/String;
    .restart local v8       #noOfCarrier:I
    .restart local v10       #phoneActivated:Ljava/lang/String;
    .restart local v11       #r:Landroid/app/WallpaperManager$Globals$SprintChameleonAttributes;
    .restart local v13       #strNoOfCarrier:Ljava/lang/String;
    .restart local v14       #strPropCarrierInfo:Ljava/lang/String;
    .restart local v15       #strPropNameOfCarrierInfo:Ljava/lang/String;
    :cond_0
    iget-object v0, v11, Landroid/app/WallpaperManager$Globals$SprintChameleonAttributes;->resourceName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "no"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 529
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v17

    const-string v18, "defaultWallpaper: no"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/16 v17, 0x0

    goto :goto_1

    .line 533
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    iget-object v0, v11, Landroid/app/WallpaperManager$Globals$SprintChameleonAttributes;->resourceName:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "drawable"

    const-string v20, "android"

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 534
    .local v12, resID:I
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "chameleonStringResourceID: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    if-nez v12, :cond_2

    .line 536
    const/16 v17, 0x0

    goto :goto_1

    .line 538
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 543
    .end local v11           #r:Landroid/app/WallpaperManager$Globals$SprintChameleonAttributes;
    .end local v12           #resID:I
    .end local v14           #strPropCarrierInfo:Ljava/lang/String;
    .end local v15           #strPropNameOfCarrierInfo:Ljava/lang/String;
    :cond_3
    if-nez v6, :cond_6

    .line 544
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v17

    const-string v18, "chameleonNetworkIDNotMatched"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/16 v17, 0x0

    goto :goto_1

    .line 513
    .restart local v11       #r:Landroid/app/WallpaperManager$Globals$SprintChameleonAttributes;
    .restart local v14       #strPropCarrierInfo:Ljava/lang/String;
    .restart local v15       #strPropNameOfCarrierInfo:Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 548
    .end local v5           #i:I
    .end local v7           #networkCode:Ljava/lang/String;
    .end local v8           #noOfCarrier:I
    .end local v11           #r:Landroid/app/WallpaperManager$Globals$SprintChameleonAttributes;
    .end local v13           #strNoOfCarrier:Ljava/lang/String;
    .end local v14           #strPropCarrierInfo:Ljava/lang/String;
    .end local v15           #strPropNameOfCarrierInfo:Ljava/lang/String;
    :cond_5
    const/16 v17, 0x0

    goto :goto_1

    .line 552
    .restart local v5       #i:I
    .restart local v7       #networkCode:Ljava/lang/String;
    .restart local v8       #noOfCarrier:I
    .restart local v13       #strNoOfCarrier:Ljava/lang/String;
    :cond_6
    if-eqz v6, :cond_7

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v16

    .line 554
    .local v16, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    .line 557
    .local v4, height:I
    :try_start_1
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 558
    .local v9, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-static {v6, v0, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 559
    .local v2, bm:Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v2, v1, v4}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v17

    .line 564
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 565
    :catch_0
    move-exception v18

    goto/16 :goto_1

    .line 560
    .end local v2           #bm:Landroid/graphics/Bitmap;
    .end local v9           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v3

    .line 561
    .local v3, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Can\'t decode stream"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 564
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 573
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    .end local v4           #height:I
    .end local v5           #i:I
    .end local v7           #networkCode:Ljava/lang/String;
    .end local v8           #noOfCarrier:I
    .end local v10           #phoneActivated:Ljava/lang/String;
    .end local v13           #strNoOfCarrier:Ljava/lang/String;
    .end local v16           #width:I
    :cond_7
    :goto_2
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 563
    .restart local v4       #height:I
    .restart local v5       #i:I
    .restart local v7       #networkCode:Ljava/lang/String;
    .restart local v8       #noOfCarrier:I
    .restart local v10       #phoneActivated:Ljava/lang/String;
    .restart local v13       #strNoOfCarrier:Ljava/lang/String;
    .restart local v16       #width:I
    :catchall_0
    move-exception v17

    .line 564
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 563
    :goto_3
    :try_start_6
    throw v17
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 570
    .end local v4           #height:I
    .end local v5           #i:I
    .end local v7           #networkCode:Ljava/lang/String;
    .end local v8           #noOfCarrier:I
    .end local v10           #phoneActivated:Ljava/lang/String;
    .end local v13           #strNoOfCarrier:Ljava/lang/String;
    .end local v16           #width:I
    :catch_2
    move-exception v17

    goto :goto_2

    .line 565
    .restart local v4       #height:I
    .restart local v5       #i:I
    .restart local v7       #networkCode:Ljava/lang/String;
    .restart local v8       #noOfCarrier:I
    .restart local v10       #phoneActivated:Ljava/lang/String;
    .restart local v13       #strNoOfCarrier:Ljava/lang/String;
    .restart local v16       #width:I
    :catch_3
    move-exception v18

    goto :goto_3

    .restart local v3       #e:Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v17

    goto :goto_2
.end method

.method private getDefaultWallpaperLockedH3G(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 20
    .parameter "context"

    .prologue
    .line 581
    const/4 v14, 0x0

    .line 582
    .local v14, operatorCode:Ljava/lang/String;
    const-string/jumbo v17, "persist.sys.first-boot"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 584
    .local v8, firstBoot:Ljava/lang/String;
    const/4 v9, 0x0

    .line 585
    .local v9, fis:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 586
    .local v3, bis:Ljava/io/BufferedInputStream;
    const/4 v6, 0x0

    .line 588
    .local v6, defaultWallpaperFile:Ljava/lang/String;
    const-string v17, "1"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_2

    .line 590
    const-string/jumbo v17, "persist.sys.first-mcc"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 603
    :goto_0
    const-string v17, "232"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 605
    const-string v6, "/system/media/wallpaper_h3gat.jpg"

    .line 607
    :cond_0
    const-string v17, "222"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 609
    const-string v6, "/system/media/wallpaper_h3git.jpg"

    .line 612
    :cond_1
    if-nez v6, :cond_4

    .line 613
    const/16 v17, 0x0

    .line 656
    :goto_1
    return-object v17

    .line 594
    :cond_2
    const-string/jumbo v17, "persist.sys.mcc-list"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 595
    .local v13, mccList:Ljava/lang/String;
    const/16 v17, 0x2c

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 596
    .local v12, length:I
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "mccList : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " , length : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    if-gez v12, :cond_3

    .line 598
    move-object v14, v13

    goto :goto_0

    .line 600
    :cond_3
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 616
    .end local v12           #length:I
    .end local v13           #mccList:Ljava/lang/String;
    :cond_4
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    .line 617
    .end local v9           #fis:Ljava/io/FileInputStream;
    .local v10, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_8

    .line 619
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .local v4, bis:Ljava/io/BufferedInputStream;
    if-eqz v4, :cond_6

    .line 620
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v16

    .line 621
    .local v16, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_9

    move-result v11

    .line 624
    .local v11, height:I
    :try_start_3
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 625
    .local v15, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-static {v4, v0, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 626
    .local v5, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v5, v1, v2}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v17

    .line 631
    if-eqz v10, :cond_5

    .line 632
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_9

    .line 652
    :cond_5
    :goto_2
    invoke-static {v10}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    .line 653
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    move-object v3, v4

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .line 626
    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 627
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #bm:Landroid/graphics/Bitmap;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    .line 628
    .local v7, e:Ljava/lang/OutOfMemoryError;
    :try_start_5
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Can\'t decode stream"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 631
    if-eqz v10, :cond_6

    .line 632
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_9

    .line 652
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    .end local v11           #height:I
    .end local v16           #width:I
    :cond_6
    :goto_3
    invoke-static {v10}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    .line 653
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    move-object v3, v4

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .line 656
    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    :goto_4
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 630
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v11       #height:I
    .restart local v16       #width:I
    :catchall_0
    move-exception v17

    .line 631
    if-eqz v10, :cond_7

    .line 632
    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_9

    .line 630
    :cond_7
    :goto_5
    :try_start_8
    throw v17
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_9

    .line 639
    .end local v11           #height:I
    .end local v16           #width:I
    :catch_1
    move-exception v7

    move-object v3, v4

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .line 640
    .end local v10           #fis:Ljava/io/FileInputStream;
    .local v7, e:Ljava/io/FileNotFoundException;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    :goto_6
    :try_start_9
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v17

    const-string v18, "FileNotFoundException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 652
    invoke-static {v9}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    .line 653
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :goto_7
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    goto :goto_4

    .line 642
    :catch_2
    move-exception v7

    .line 643
    .local v7, e:Ljava/lang/SecurityException;
    :goto_8
    :try_start_a
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v17

    const-string v18, "SecurityException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 652
    invoke-static {v9}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    goto :goto_7

    .line 645
    .end local v7           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v7

    .line 646
    .local v7, e:Ljava/io/IOException;
    :goto_9
    :try_start_b
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v17

    const-string v18, "IOException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 652
    invoke-static {v9}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    goto :goto_7

    .line 648
    .end local v7           #e:Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 649
    .local v7, e:Landroid/os/RemoteException;
    :goto_a
    :try_start_c
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v17

    const-string v18, "RemoteException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 652
    invoke-static {v9}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    goto :goto_7

    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v17

    :goto_b
    invoke-static {v9}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    .line 653
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    .line 652
    throw v17

    .line 634
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v11       #height:I
    .restart local v16       #width:I
    :catch_5
    move-exception v18

    goto :goto_5

    .local v7, e:Ljava/lang/OutOfMemoryError;
    :catch_6
    move-exception v17

    goto :goto_3

    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    .restart local v5       #bm:Landroid/graphics/Bitmap;
    .restart local v15       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_7
    move-exception v18

    goto/16 :goto_2

    .line 652
    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #bm:Landroid/graphics/Bitmap;
    .end local v11           #height:I
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #width:I
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v17

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_b

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v17

    move-object v3, v4

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_b

    .line 648
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v7

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_a

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catch_9
    move-exception v7

    move-object v3, v4

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_a

    .line 645
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catch_a
    move-exception v7

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_9

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catch_b
    move-exception v7

    move-object v3, v4

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_9

    .line 642
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catch_c
    move-exception v7

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_8

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catch_d
    move-exception v7

    move-object v3, v4

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_8

    .line 639
    :catch_e
    move-exception v7

    goto :goto_6

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catch_f
    move-exception v7

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_6
.end method

.method private getDefaultWallpaperLockedORG(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 20
    .parameter "context"

    .prologue
    .line 661
    const/4 v14, 0x0

    .line 662
    .local v14, operatorCode:Ljava/lang/String;
    const-string/jumbo v17, "persist.sys.first-boot"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 664
    .local v8, firstBoot:Ljava/lang/String;
    const/4 v9, 0x0

    .line 665
    .local v9, fis:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 666
    .local v3, bis:Ljava/io/BufferedInputStream;
    const/4 v6, 0x0

    .line 668
    .local v6, defaultWallpaperFile:Ljava/lang/String;
    const-string v17, "1"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_2

    .line 670
    const-string/jumbo v17, "persist.sys.first-mcc"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 683
    :goto_0
    const-string v17, "208"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "260"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "226"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 685
    :cond_0
    const-string v6, "/system/media/wallpaper_org.png"

    .line 692
    :cond_1
    if-nez v6, :cond_4

    .line 693
    const/16 v17, 0x0

    .line 736
    :goto_1
    return-object v17

    .line 674
    :cond_2
    const-string/jumbo v17, "persist.sys.mcc-list"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 675
    .local v13, mccList:Ljava/lang/String;
    const/16 v17, 0x2c

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 676
    .local v12, length:I
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "mccList : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " , length : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    if-gez v12, :cond_3

    .line 678
    move-object v14, v13

    goto :goto_0

    .line 680
    :cond_3
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 696
    .end local v12           #length:I
    .end local v13           #mccList:Ljava/lang/String;
    :cond_4
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    .line 697
    .end local v9           #fis:Ljava/io/FileInputStream;
    .local v10, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_8

    .line 699
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .local v4, bis:Ljava/io/BufferedInputStream;
    if-eqz v4, :cond_6

    .line 700
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v16

    .line 701
    .local v16, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_9

    move-result v11

    .line 704
    .local v11, height:I
    :try_start_3
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 705
    .local v15, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-static {v4, v0, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 706
    .local v5, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v5, v1, v2}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v17

    .line 711
    if-eqz v10, :cond_5

    .line 712
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_9

    .line 732
    :cond_5
    :goto_2
    invoke-static {v10}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    .line 733
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    move-object v3, v4

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .line 706
    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 707
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #bm:Landroid/graphics/Bitmap;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    .line 708
    .local v7, e:Ljava/lang/OutOfMemoryError;
    :try_start_5
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Can\'t decode stream"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 711
    if-eqz v10, :cond_6

    .line 712
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_9

    .line 732
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    .end local v11           #height:I
    .end local v16           #width:I
    :cond_6
    :goto_3
    invoke-static {v10}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    .line 733
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    move-object v3, v4

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .line 736
    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    :goto_4
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 710
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v11       #height:I
    .restart local v16       #width:I
    :catchall_0
    move-exception v17

    .line 711
    if-eqz v10, :cond_7

    .line 712
    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_9

    .line 710
    :cond_7
    :goto_5
    :try_start_8
    throw v17
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_9

    .line 719
    .end local v11           #height:I
    .end local v16           #width:I
    :catch_1
    move-exception v7

    move-object v3, v4

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .line 720
    .end local v10           #fis:Ljava/io/FileInputStream;
    .local v7, e:Ljava/io/FileNotFoundException;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    :goto_6
    :try_start_9
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v17

    const-string v18, "FileNotFoundException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 732
    invoke-static {v9}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    .line 733
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :goto_7
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    goto :goto_4

    .line 722
    :catch_2
    move-exception v7

    .line 723
    .local v7, e:Ljava/lang/SecurityException;
    :goto_8
    :try_start_a
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v17

    const-string v18, "SecurityException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 732
    invoke-static {v9}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    goto :goto_7

    .line 725
    .end local v7           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v7

    .line 726
    .local v7, e:Ljava/io/IOException;
    :goto_9
    :try_start_b
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v17

    const-string v18, "IOException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 732
    invoke-static {v9}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    goto :goto_7

    .line 728
    .end local v7           #e:Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 729
    .local v7, e:Landroid/os/RemoteException;
    :goto_a
    :try_start_c
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v17

    const-string v18, "RemoteException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 732
    invoke-static {v9}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    goto :goto_7

    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v17

    :goto_b
    invoke-static {v9}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    .line 733
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    .line 732
    throw v17

    .line 714
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v11       #height:I
    .restart local v16       #width:I
    :catch_5
    move-exception v18

    goto :goto_5

    .local v7, e:Ljava/lang/OutOfMemoryError;
    :catch_6
    move-exception v17

    goto :goto_3

    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    .restart local v5       #bm:Landroid/graphics/Bitmap;
    .restart local v15       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_7
    move-exception v18

    goto/16 :goto_2

    .line 732
    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #bm:Landroid/graphics/Bitmap;
    .end local v11           #height:I
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #width:I
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v17

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_b

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v17

    move-object v3, v4

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_b

    .line 728
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v7

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_a

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catch_9
    move-exception v7

    move-object v3, v4

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_a

    .line 725
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catch_a
    move-exception v7

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_9

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catch_b
    move-exception v7

    move-object v3, v4

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_9

    .line 722
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catch_c
    move-exception v7

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_8

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catch_d
    move-exception v7

    move-object v3, v4

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_8

    .line 719
    :catch_e
    move-exception v7

    goto :goto_6

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catch_f
    move-exception v7

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_6
.end method

.method private static quiteinputStream(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 412
    if-eqz p0, :cond_0

    .line 413
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public forgetLoadedWallpaper()V
    .locals 1

    .prologue
    .line 322
    monitor-enter p0

    .line 323
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 325
    monitor-exit p0

    .line 326
    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWallpaperChanged()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 261
    return-void
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "returnDefault"

    .prologue
    .line 264
    monitor-enter p0

    .line 265
    :try_start_0
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 266
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 317
    :goto_0
    return-object v2

    .line 268
    :cond_0
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 269
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 271
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :try_start_2
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 277
    :goto_1
    if-eqz p2, :cond_a

    .line 278
    :try_start_3
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v2, :cond_9

    .line 280
    const-string/jumbo v2, "ro.build.target_operator"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, operator:Ljava/lang/String;
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPR_CHAMELEON:Z

    if-eqz v2, :cond_5

    .line 285
    const-string v2, "SPR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "BM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 286
    :cond_2
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLockedFromCarrierPartition(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 288
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 289
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLockedFromNetworkCode(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 290
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 291
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 297
    :cond_3
    :goto_2
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 274
    .end local v1           #operator:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 275
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "No memory load current wallpaper"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 295
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    .restart local v1       #operator:Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 298
    :cond_5
    const-string v2, "H3G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 299
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLockedH3G(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 300
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-nez v2, :cond_6

    .line 301
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 312
    :cond_6
    :goto_3
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto/16 :goto_0

    .line 302
    :cond_7
    const-string v2, "ORG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 303
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLockedORG(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 304
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-nez v2, :cond_6

    .line 305
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    goto :goto_3

    .line 311
    :cond_8
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    goto :goto_3

    .line 314
    .end local v1           #operator:Ljava/lang/String;
    :cond_9
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 317
    :cond_a
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method
