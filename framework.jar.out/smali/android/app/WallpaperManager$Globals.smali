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
    .line 241
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 242
    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 243
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 244
    new-instance v1, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v1, p0, p1}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    .line 257
    return-void
.end method

.method static synthetic access$002(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 232
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 232
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 232
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "context"

    .prologue
    .line 327
    :try_start_0
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 328
    .local v8, params:Landroid/os/Bundle;
    iget-object v12, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v12, p0, v8}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 329
    .local v3, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_7

    .line 330
    const-string/jumbo v12, "width"

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 331
    .local v11, width:I
    const-string v12, "height"

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 334
    .local v4, height:I
    sget-boolean v12, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v12, :cond_8

    .line 335
    const-string v12, "drmKey"

    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 336
    .local v1, decInfo:[B
    if-eqz v1, :cond_8

    .line 337
    const/4 v6, 0x0

    .line 339
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

    .line 340
    if-nez v6, :cond_1

    .line 341
    const/4 v12, 0x0

    .line 371
    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 372
    if-eqz v6, :cond_0

    .line 373
    invoke-virtual {v6}, Lcom/lge/lgdrm/DrmStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 401
    .end local v1           #decInfo:[B
    .end local v3           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v4           #height:I
    .end local v6           #is:Ljava/io/InputStream;
    .end local v8           #params:Landroid/os/Bundle;
    .end local v11           #width:I
    :cond_0
    :goto_0
    return-object v12

    .line 344
    .restart local v1       #decInfo:[B
    .restart local v3       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v4       #height:I
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v8       #params:Landroid/os/Bundle;
    .restart local v11       #width:I
    :cond_1
    const/4 v9, 0x0

    .line 345
    .local v9, sampleSize:I
    :try_start_3
    invoke-virtual {v6}, Lcom/lge/lgdrm/DrmStream;->available()I

    move-result v10

    .line 350
    .local v10, size:I
    const v12, 0x4b000

    if-lt v10, v12, :cond_3

    .line 351
    const/4 v5, 0x0

    .line 352
    .local v5, i:I
    const/4 v5, 0x2

    :goto_1
    div-int v12, v10, v5

    const v13, 0x4b000

    if-le v12, v13, :cond_2

    .line 354
    mul-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 356
    :cond_2
    move v9, v5

    .line 359
    .end local v5           #i:I
    :cond_3
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 360
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz v9, :cond_4

    .line 361
    iput v9, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 363
    :cond_4
    const/4 v12, 0x0

    invoke-static {v6, v12, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 365
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {p1, v0, v11, v4}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v12

    .line 371
    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 372
    if-eqz v6, :cond_0

    .line 373
    invoke-virtual {v6}, Lcom/lge/lgdrm/DrmStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 375
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v9           #sampleSize:I
    .end local v10           #size:I
    :catch_0
    move-exception v13

    goto :goto_0

    .line 366
    :catch_1
    move-exception v2

    .line 367
    .local v2, e:Ljava/lang/OutOfMemoryError;
    :try_start_5
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Can\'t decode file"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 371
    :try_start_6
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 372
    if-eqz v6, :cond_5

    .line 373
    invoke-virtual {v6}, Lcom/lge/lgdrm/DrmStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 378
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :cond_5
    :goto_2
    const/4 v12, 0x0

    goto :goto_0

    .line 370
    :catchall_0
    move-exception v12

    .line 371
    :try_start_7
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 372
    if-eqz v6, :cond_6

    .line 373
    invoke-virtual {v6}, Lcom/lge/lgdrm/DrmStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 370
    :cond_6
    :goto_3
    :try_start_8
    throw v12
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    .line 398
    .end local v1           #decInfo:[B
    .end local v3           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v4           #height:I
    .end local v6           #is:Ljava/io/InputStream;
    .end local v8           #params:Landroid/os/Bundle;
    .end local v11           #width:I
    :catch_2
    move-exception v12

    .line 401
    :cond_7
    :goto_4
    const/4 v12, 0x0

    goto :goto_0

    .line 384
    .restart local v3       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v4       #height:I
    .restart local v8       #params:Landroid/os/Bundle;
    .restart local v11       #width:I
    :cond_8
    :try_start_9
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 385
    .restart local v7       #options:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13, v7}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 387
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    invoke-static {p1, v0, v11, v4}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_4

    move-result-object v12

    .line 392
    :try_start_a
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_0

    .line 393
    :catch_3
    move-exception v13

    goto :goto_0

    .line 388
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_4
    move-exception v2

    .line 389
    .restart local v2       #e:Ljava/lang/OutOfMemoryError;
    :try_start_b
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Can\'t decode file"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 392
    :try_start_c
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_4

    .line 393
    :catch_5
    move-exception v12

    goto :goto_4

    .line 391
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :catchall_1
    move-exception v12

    .line 392
    :try_start_d
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_2

    .line 391
    :goto_5
    :try_start_e
    throw v12
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_2

    .line 368
    .restart local v1       #decInfo:[B
    .restart local v6       #is:Ljava/io/InputStream;
    :catch_6
    move-exception v12

    .line 371
    :try_start_f
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 372
    if-eqz v6, :cond_5

    .line 373
    invoke-virtual {v6}, Lcom/lge/lgdrm/DrmStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_2

    .line 375
    :catch_7
    move-exception v12

    goto :goto_2

    .line 393
    .end local v1           #decInfo:[B
    .end local v6           #is:Ljava/io/InputStream;
    :catch_8
    move-exception v13

    goto :goto_5

    .line 375
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

    .line 579
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x1080222

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 581
    .local v3, is:Ljava/io/InputStream;
    if-eqz v3, :cond_0

    .line 582
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v5

    .line 583
    .local v5, width:I
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 586
    .local v2, height:I
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 587
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x0

    invoke-static {v3, v6, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 588
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {p1, v0, v5, v2}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 593
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 602
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #height:I
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #width:I
    :goto_0
    return-object v6

    .line 589
    .restart local v2       #height:I
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #width:I
    :catch_0
    move-exception v1

    .line 590
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Can\'t decode stream"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 593
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

    .line 602
    goto :goto_0

    .line 592
    .restart local v2       #height:I
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #width:I
    :catchall_0
    move-exception v6

    .line 593
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 592
    :goto_2
    :try_start_6
    throw v6
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 599
    .end local v2           #height:I
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #width:I
    :catch_1
    move-exception v6

    goto :goto_1

    .line 594
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

    .line 418
    const/4 v4, 0x0

    .line 419
    .local v4, fis:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 423
    .local v0, bis:Ljava/io/BufferedInputStream;
    const-string/jumbo v11, "ro.sprint.hfa.flag"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 424
    .local v8, phoneActivated:Ljava/lang/String;
    const-string v11, "activationOK"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 477
    :goto_0
    return-object v10

    .line 431
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

    .line 432
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

    .line 434
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .local v1, bis:Ljava/io/BufferedInputStream;
    if-eqz v5, :cond_2

    .line 435
    :try_start_2
    iget-object v11, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v11}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v9

    .line 436
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

    .line 439
    .local v6, height:I
    :try_start_3
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 440
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x0

    invoke-static {v1, v11, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 442
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

    .line 449
    if-eqz v5, :cond_1

    .line 450
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_b

    .line 473
    :cond_1
    :goto_1
    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    .line 474
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    move-object v10, v11

    .line 442
    goto :goto_0

    .line 443
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #bm:Landroid/graphics/Bitmap;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    .line 444
    .local v3, e:Ljava/lang/OutOfMemoryError;
    :try_start_5
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Can\'t decode stream"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 449
    if-eqz v5, :cond_2

    .line 450
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_b

    .line 473
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    .end local v6           #height:I
    .end local v9           #width:I
    :cond_2
    :goto_2
    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    .line 474
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v4, v5

    .line 475
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 445
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v6       #height:I
    .restart local v9       #width:I
    :catch_1
    move-exception v3

    .line 446
    .local v3, e:Ljava/lang/NullPointerException;
    :try_start_7
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Image Decoding Error"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 449
    if-eqz v5, :cond_2

    .line 450
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

    .line 452
    .end local v3           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v11

    goto :goto_2

    .line 448
    :catchall_0
    move-exception v11

    .line 449
    if-eqz v5, :cond_3

    .line 450
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_b

    .line 448
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

    .line 457
    .end local v6           #height:I
    .end local v9           #width:I
    :catch_3
    move-exception v3

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v4, v5

    .line 458
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

    .line 473
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    .line 474
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :goto_5
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 460
    :catch_4
    move-exception v3

    .line 461
    .local v3, e:Ljava/lang/SecurityException;
    :goto_6
    :try_start_c
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "SecurityException in getDefaultWallpaperLockedFromCarrierPartition"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 473
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    goto :goto_5

    .line 463
    .end local v3           #e:Ljava/lang/SecurityException;
    :catch_5
    move-exception v3

    .line 464
    .local v3, e:Ljava/io/IOException;
    :goto_7
    :try_start_d
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "IOException in getDefaultWallpaperLockedFromCarrierPartition"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 473
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    goto :goto_5

    .line 466
    .end local v3           #e:Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 467
    .local v3, e:Landroid/os/RemoteException;
    :goto_8
    :try_start_e
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "RemoteException in getDefaultWallpaperLockedFromCarrierPartition"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 473
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    goto :goto_5

    .line 469
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_7
    move-exception v3

    .line 470
    .local v3, e:Ljava/lang/NullPointerException;
    :goto_9
    :try_start_f
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Image Decoding Error in getDefaultWallpaperLockedFromCarrierPartition"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 473
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    goto :goto_5

    .end local v3           #e:Ljava/lang/NullPointerException;
    :catchall_1
    move-exception v10

    :goto_a
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    .line 474
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    .line 473
    throw v10

    .line 452
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

    .line 473
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

    .line 469
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

    .line 466
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

    .line 463
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

    .line 460
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

    .line 457
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
    .line 499
    const/4 v6, 0x0

    .line 501
    .local v6, is:Ljava/io/InputStream;
    :try_start_0
    const-string/jumbo v17, "ro.sprint.hfa.flag"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 502
    .local v10, phoneActivated:Ljava/lang/String;
    const-string v17, "activationOK"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 503
    const-string/jumbo v17, "ro.cdma.home.operator.numeric"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 506
    .local v7, networkCode:Ljava/lang/String;
    const/4 v8, 0x0

    .line 507
    .local v8, noOfCarrier:I
    const-string/jumbo v17, "ro.lge.chameleon_no_of_carrier"

    const-string v18, "0"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 508
    .local v13, strNoOfCarrier:Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 510
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v8, :cond_3

    .line 511
    const-string/jumbo v15, "ro.lge.chameleon_shut_wall_"

    .line 514
    .local v15, strPropNameOfCarrierInfo:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 515
    const-string v17, "11111,0,0,0,0,0"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 516
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

    .line 517
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

    .line 519
    new-instance v11, Landroid/app/WallpaperManager$Globals$SprintChameleonAttributes;

    invoke-direct {v11, v14}, Landroid/app/WallpaperManager$Globals$SprintChameleonAttributes;-><init>(Ljava/lang/String;)V

    .line 521
    .local v11, r:Landroid/app/WallpaperManager$Globals$SprintChameleonAttributes;
    iget-object v0, v11, Landroid/app/WallpaperManager$Globals$SprintChameleonAttributes;->networkCode:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 522
    iget-object v0, v11, Landroid/app/WallpaperManager$Globals$SprintChameleonAttributes;->resourceName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 523
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v17

    const-string v18, "defaultWallpaper: 0"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/16 v17, 0x0

    .line 570
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

    .line 525
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

    .line 526
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v17

    const-string v18, "defaultWallpaper: no"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/16 v17, 0x0

    goto :goto_1

    .line 530
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    iget-object v0, v11, Landroid/app/WallpaperManager$Globals$SprintChameleonAttributes;->resourceName:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "drawable"

    const-string v20, "android"

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 531
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

    .line 532
    if-nez v12, :cond_2

    .line 533
    const/16 v17, 0x0

    goto :goto_1

    .line 535
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 540
    .end local v11           #r:Landroid/app/WallpaperManager$Globals$SprintChameleonAttributes;
    .end local v12           #resID:I
    .end local v14           #strPropCarrierInfo:Ljava/lang/String;
    .end local v15           #strPropNameOfCarrierInfo:Ljava/lang/String;
    :cond_3
    if-nez v6, :cond_6

    .line 541
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v17

    const-string v18, "chameleonNetworkIDNotMatched"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/16 v17, 0x0

    goto :goto_1

    .line 510
    .restart local v11       #r:Landroid/app/WallpaperManager$Globals$SprintChameleonAttributes;
    .restart local v14       #strPropCarrierInfo:Ljava/lang/String;
    .restart local v15       #strPropNameOfCarrierInfo:Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 545
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

    .line 549
    .restart local v5       #i:I
    .restart local v7       #networkCode:Ljava/lang/String;
    .restart local v8       #noOfCarrier:I
    .restart local v13       #strNoOfCarrier:Ljava/lang/String;
    :cond_6
    if-eqz v6, :cond_7

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v16

    .line 551
    .local v16, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    .line 554
    .local v4, height:I
    :try_start_1
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 555
    .local v9, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-static {v6, v0, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 556
    .local v2, bm:Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v2, v1, v4}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v17

    .line 561
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 562
    :catch_0
    move-exception v18

    goto/16 :goto_1

    .line 557
    .end local v2           #bm:Landroid/graphics/Bitmap;
    .end local v9           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v3

    .line 558
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

    .line 561
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 570
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

    .line 560
    .restart local v4       #height:I
    .restart local v5       #i:I
    .restart local v7       #networkCode:Ljava/lang/String;
    .restart local v8       #noOfCarrier:I
    .restart local v10       #phoneActivated:Ljava/lang/String;
    .restart local v13       #strNoOfCarrier:Ljava/lang/String;
    .restart local v16       #width:I
    :catchall_0
    move-exception v17

    .line 561
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 560
    :goto_3
    :try_start_6
    throw v17
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 567
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

    .line 562
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

.method private static quiteinputStream(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 409
    if-eqz p0, :cond_0

    .line 410
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 412
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public forgetLoadedWallpaper()V
    .locals 1

    .prologue
    .line 319
    monitor-enter p0

    .line 320
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 322
    monitor-exit p0

    .line 323
    return-void

    .line 322
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
    .line 265
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 266
    return-void
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "returnDefault"

    .prologue
    .line 269
    monitor-enter p0

    .line 270
    :try_start_0
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 271
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 314
    :goto_0
    return-object v2

    .line 273
    :cond_0
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 274
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 276
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    :try_start_2
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 282
    :goto_1
    if-eqz p2, :cond_7

    .line 283
    :try_start_3
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v2, :cond_6

    .line 288
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPR_CHAMELEON:Z

    if-eqz v2, :cond_5

    .line 289
    const-string/jumbo v2, "ro.build.target_operator"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, operator:Ljava/lang/String;
    const-string v2, "SPR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "BM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 291
    :cond_2
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLockedFromCarrierPartition(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 293
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 294
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLockedFromNetworkCode(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 295
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 296
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 302
    :cond_3
    :goto_2
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 279
    .end local v1           #operator:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 280
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "No memory load current wallpaper"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 300
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    .restart local v1       #operator:Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 308
    .end local v1           #operator:Ljava/lang/String;
    :cond_5
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 309
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 311
    :cond_6
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 314
    :cond_7
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
