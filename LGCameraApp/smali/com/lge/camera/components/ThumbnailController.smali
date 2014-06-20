.class public Lcom/lge/camera/components/ThumbnailController;
.super Ljava/lang/Object;
.source "ThumbnailController.java"


# instance fields
.field private mButton:Landroid/widget/ImageView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDefaultImage:I

.field private mResources:Landroid/content/res/Resources;

.field private mShouldAnimateThumb:Z

.field private mThumb:Landroid/graphics/Bitmap;

.field private mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

.field private mThumbs:[Landroid/graphics/drawable/Drawable;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/widget/ImageView;Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "resources"
    .parameter "button"
    .parameter "contentResolver"

    .prologue
    const v2, 0x7f02037c

    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v2, p0, Lcom/lge/camera/components/ThumbnailController;->mDefaultImage:I

    .line 61
    iput-object p1, p0, Lcom/lge/camera/components/ThumbnailController;->mResources:Landroid/content/res/Resources;

    .line 62
    iput-object p3, p0, Lcom/lge/camera/components/ThumbnailController;->mContentResolver:Landroid/content/ContentResolver;

    .line 63
    iput-object p2, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 65
    iget-object v0, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/widget/ImageView;Landroid/content/ContentResolver;Z)V
    .locals 2
    .parameter "resources"
    .parameter "button"
    .parameter "contentResolver"
    .parameter "isSecureCamera"

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const v0, 0x7f02037c

    iput v0, p0, Lcom/lge/camera/components/ThumbnailController;->mDefaultImage:I

    .line 70
    iput-object p1, p0, Lcom/lge/camera/components/ThumbnailController;->mResources:Landroid/content/res/Resources;

    .line 71
    iput-object p3, p0, Lcom/lge/camera/components/ThumbnailController;->mContentResolver:Landroid/content/ContentResolver;

    .line 72
    iput-object p2, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    .line 73
    iget-object v0, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74
    invoke-virtual {p0, p4}, Lcom/lge/camera/components/ThumbnailController;->setSecureDefaultImage(Z)V

    .line 75
    iget-object v0, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/lge/camera/components/ThumbnailController;->mDefaultImage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    return-void
.end method

.method private setupTransition(Landroid/graphics/Bitmap;Z)V
    .locals 12
    .parameter "source"
    .parameter "useTransition"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 144
    invoke-virtual {p0}, Lcom/lge/camera/components/ThumbnailController;->getThumbnailWidth()I

    move-result v3

    .line 145
    .local v3, miniThumbWidth:I
    invoke-virtual {p0}, Lcom/lge/camera/components/ThumbnailController;->getThumbnailHeight()I

    move-result v2

    .line 147
    .local v2, miniThumbHeight:I
    const/4 v0, 0x0

    .line 149
    .local v0, bmpGalleryButton:Landroid/graphics/Bitmap;
    if-nez p1, :cond_0

    .line 150
    iget-object v4, p0, Lcom/lge/camera/components/ThumbnailController;->mResources:Landroid/content/res/Resources;

    iget v5, p0, Lcom/lge/camera/components/ThumbnailController;->mDefaultImage:I

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    .line 151
    const-string v4, "CameraApp"

    const-string v5, "Set thumbnail empty"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_0
    if-eqz p2, :cond_2

    .line 161
    iget-object v4, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 162
    iget-object v4, p0, Lcom/lge/camera/components/ThumbnailController;->mResources:Landroid/content/res/Resources;

    iget v5, p0, Lcom/lge/camera/components/ThumbnailController;->mDefaultImage:I

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    new-array v4, v11, [Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 164
    iget-object v4, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mResources:Landroid/content/res/Resources;

    invoke-direct {v5, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v5, v4, v10

    .line 165
    iget-object v4, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mResources:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v5, v4, v9

    .line 166
    new-instance v4, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v5, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 167
    iget-object v1, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 168
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    iput-boolean v9, p0, Lcom/lge/camera/components/ThumbnailController;->mShouldAnimateThumb:Z

    .line 176
    :goto_1
    iget-object v4, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_2
    return-void

    .line 153
    :cond_0
    const-string v4, "CameraApp"

    const-string v5, "before Extract from bitmap"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {p1, v3, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    .line 155
    const-string v4, "CameraApp"

    const-string v5, "after Extract from bitmap(%dx%d) to thumb(%dx%d)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v9

    aput-object v5, v4, v10

    .line 171
    iget-object v4, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mResources:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v5, v4, v9

    .line 172
    new-instance v4, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v5, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 173
    iget-object v1, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 174
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    iput-boolean v9, p0, Lcom/lge/camera/components/ThumbnailController;->mShouldAnimateThumb:Z

    goto :goto_1

    .line 178
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_3

    .line 179
    new-array v4, v11, [Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 181
    :cond_3
    iget-object v4, p0, Lcom/lge/camera/components/ThumbnailController;->mResources:Landroid/content/res/Resources;

    iget v5, p0, Lcom/lge/camera/components/ThumbnailController;->mDefaultImage:I

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    iget-object v4, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mResources:Landroid/content/res/Resources;

    invoke-direct {v5, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v5, v4, v10

    .line 183
    iget-object v4, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mResources:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v5, v4, v9

    .line 184
    iput-boolean v10, p0, Lcom/lge/camera/components/ThumbnailController;->mShouldAnimateThumb:Z

    .line 185
    iget-object v4, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v9

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 83
    const-string v1, "CameraApp"

    const-string v2, " memory free"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 86
    iput-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 90
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/lge/camera/util/Util;->recycleBitmapDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object v1, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v0           #i:I
    :cond_1
    iput-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 96
    iput-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mContentResolver:Landroid/content/ContentResolver;

    .line 97
    iput-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mResources:Landroid/content/res/Resources;

    .line 98
    iput-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    .line 99
    iput-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 101
    return-void
.end method

.method public getThumbnailHeight()I
    .locals 4

    .prologue
    .line 138
    iget-object v2, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 139
    .local v1, param:Landroid/view/ViewGroup$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    sub-int v0, v2, v3

    .line 140
    .local v0, miniThumbHeight:I
    return v0
.end method

.method public getThumbnailWidth()I
    .locals 4

    .prologue
    .line 132
    iget-object v2, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 133
    .local v1, param:Landroid/view/ViewGroup$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    sub-int v0, v2, v3

    .line 134
    .local v0, miniThumbWidth:I
    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lge/camera/components/ThumbnailController;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isUriValid()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    .line 204
    :goto_0
    return v2

    .line 194
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/lge/camera/components/ThumbnailController;->mUri:Landroid/net/Uri;

    const-string v5, "r"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 195
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 196
    const-string v3, "CameraApp"

    const-string v4, "Fail to open URI."

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 201
    .local v0, ex:Ljava/io/IOException;
    const-string v3, "CameraApp"

    const-string v4, "IOException : "

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 199
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v1       #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 204
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setButton(Landroid/widget/ImageView;)V
    .locals 2
    .parameter "button"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    .line 105
    iget-object v0, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 106
    iget-object v0, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/lge/camera/components/ThumbnailController;->mDefaultImage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    return-void
.end method

.method public setData(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .parameter "uri"
    .parameter "original"
    .parameter "useTransition"

    .prologue
    .line 111
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 112
    :cond_0
    const/4 p1, 0x0

    .line 113
    const/4 p2, 0x0

    .line 116
    :cond_1
    iput-object p1, p0, Lcom/lge/camera/components/ThumbnailController;->mUri:Landroid/net/Uri;

    .line 117
    invoke-direct {p0, p2, p3}, Lcom/lge/camera/components/ThumbnailController;->setupTransition(Landroid/graphics/Bitmap;Z)V

    .line 118
    return-void
.end method

.method public setSecureDefaultImage(Z)V
    .locals 1
    .parameter "isSecureCamera"

    .prologue
    .line 79
    if-eqz p1, :cond_0

    const v0, 0x7f02037d

    :goto_0
    iput v0, p0, Lcom/lge/camera/components/ThumbnailController;->mDefaultImage:I

    .line 80
    return-void

    .line 79
    :cond_0
    const v0, 0x7f02037c

    goto :goto_0
.end method

.method public startTransition(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/lge/camera/components/ThumbnailController;->mShouldAnimateThumb:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/ThumbnailController;->mShouldAnimateThumb:Z

    .line 129
    :cond_0
    return-void
.end method
