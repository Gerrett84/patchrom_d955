.class public Lcom/lge/camera/PostviewNormalActivity;
.super Lcom/lge/camera/ShotPostviewActivity;
.source "PostviewNormalActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/lge/camera/ShotPostviewActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkValidateImage()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 188
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-static {v5, v3}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, tempFilePath:Ljava/lang/String;
    if-nez v2, :cond_0

    move v3, v4

    .line 202
    .end local v2           #tempFilePath:Ljava/lang/String;
    :goto_0
    return v3

    .line 193
    .restart local v2       #tempFilePath:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .local v1, tempFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 195
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 196
    goto :goto_0

    .line 199
    .end local v1           #tempFile:Ljava/io/File;
    .end local v2           #tempFilePath:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "CameraApp"

    const-string v5, "Exception!"

    invoke-static {v3, v5, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v4

    .line 202
    goto :goto_0
.end method

.method protected deleteFinished()V
    .locals 3

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 209
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "delete_done"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 210
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/PostviewNormalActivity;->setResult(ILandroid/content/Intent;)V

    .line 211
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->finish()V

    .line 212
    return-void
.end method

.method protected doBackKeyInPostview()V
    .locals 2

    .prologue
    .line 216
    const-string v0, "CameraApp"

    const-string v1, "KEYCODE_BACK"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-boolean v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPause:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "KEYCODE_BACK - return..."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->finish()V

    goto :goto_0
.end method

.method public doDeletePositiveClick()V
    .locals 4

    .prologue
    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getSaveFileName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {p0, v2, v1}, Lcom/lge/camera/PostviewNormalActivity;->deleteImage(Ljava/lang/String;Landroid/net/Uri;)I

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->deleteFinished()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "Exception!"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected doPreProcessOnCreate()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method protected doProcessOnCreate()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/ShotPostviewActivity;->isFromCreateProcess:Z

    .line 31
    return-void
.end method

.method protected doProcessOnDestroy()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method protected doProcessOnPause()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method protected doProcessOnResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    iget-boolean v0, p0, Lcom/lge/camera/ShotPostviewActivity;->isFromCreateProcess:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->checkValidateImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mExitInteraction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewNormalActivity;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 37
    iput-boolean v1, p0, Lcom/lge/camera/ShotPostviewActivity;->isFromCreateProcess:Z

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    iput-boolean v1, p0, Lcom/lge/camera/ShotPostviewActivity;->isFromCreateProcess:Z

    goto :goto_0
.end method

.method protected loadCapturedImage(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "uri"
    .parameter "degrees"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 138
    const-string v5, "CameraApp"

    const-string v6, "Load captured image:%s, degrees:%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x0

    .line 141
    .local v0, bmp:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v5, :cond_0

    .line 142
    iget-object v5, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v5}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v5

    if-nez v5, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/ExifUtil;->getExifWidth(Ljava/lang/String;)I

    move-result v4

    .line 144
    .local v4, imageWidth:I
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/ExifUtil;->getExifHeight(Ljava/lang/String;)I

    move-result v3

    .line 145
    .local v3, imageHeight:I
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v4, v3}, Lcom/lge/camera/util/Util;->getFitSizeOfBitmapForLCD(Landroid/app/Activity;II)[I

    move-result-object v2

    .line 146
    .local v2, dstSize:[I
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aget v7, v2, v9

    aget v8, v2, v10

    invoke-static {v5, v6, v7, v8}, Lcom/lge/camera/util/ImageManager;->loadScaledBitmap(Landroid/content/ContentResolver;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 151
    .end local v2           #dstSize:[I
    .end local v3           #imageHeight:I
    .end local v4           #imageWidth:I
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 152
    const-string v5, "CameraApp"

    const-string v6, "LoadBitmap fail!"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const/4 v5, 0x0

    .line 156
    :goto_1
    return-object v5

    .line 148
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v5}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v5

    invoke-virtual {p0, p1, v5}, Lcom/lge/camera/PostviewNormalActivity;->getLastThumbnail(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/ExifUtil;->getExifOrientationDegree(Ljava/lang/String;)I

    move-result v1

    .line 156
    .local v1, degree:I
    iget-object v5, p0, Lcom/lge/camera/ShotPostviewActivity;->mImageHandler:Lcom/lge/camera/util/ImageHandler;

    invoke-virtual {v5, v0, v1, v9}, Lcom/lge/camera/util/ImageHandler;->getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_1
.end method

.method protected loadSingleCapturedImages()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 100
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 104
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->setFileNameLayout()V

    .line 105
    const v4, 0x7f090124

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 107
    .local v3, postview:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->reloadedPostview()V

    move v4, v5

    .line 132
    .end local v3           #postview:Landroid/widget/ImageView;
    :goto_0
    return v4

    .line 113
    .restart local v3       #postview:Landroid/widget/ImageView;
    :cond_0
    const/4 v1, 0x0

    .line 114
    .local v1, capturedImageUri:Landroid/net/Uri;
    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/net/Uri;

    move-object v1, v0

    .line 116
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 117
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 118
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 120
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/lge/camera/PostviewNormalActivity;->loadCapturedImage(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 121
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    move v4, v6

    .line 122
    goto :goto_0

    .line 124
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v4, v5

    .line 128
    goto :goto_0

    .line 125
    :catch_0
    move-exception v2

    .line 126
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "CameraApp"

    const-string v6, "Exception!"

    invoke-static {v4, v6, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 131
    .end local v1           #capturedImageUri:Landroid/net/Uri;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #postview:Landroid/widget/ImageView;
    :cond_3
    const-string v4, "CameraApp"

    const-string v5, "mUriList.size() is 0 !!"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 132
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    .line 53
    :sswitch_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->doBackKeyInPostview()V

    goto :goto_0

    .line 56
    :sswitch_1
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/lge/camera/PostviewNormalActivity;->onCreateDialog(II)V

    goto :goto_0

    .line 59
    :sswitch_2
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/PostviewNormalActivity;->onCreateDialog(II)V

    goto :goto_0

    .line 62
    :sswitch_3
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/lge/camera/PostviewNormalActivity;->onCreateDialog(II)V

    goto :goto_0

    .line 51
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f09021f -> :sswitch_2
        0x7f090220 -> :sswitch_3
        0x7f090221 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 73
    invoke-super {p0, p1}, Lcom/lge/camera/ShotPostviewActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected postviewShow()V
    .locals 3

    .prologue
    .line 78
    const-string v1, "CameraApp"

    const-string v2, "TIME_CHECK show()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const v1, 0x7f090131

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, postView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 81
    const-string v1, "CameraApp"

    const-string v2, "postviewShow : inflate view fail."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->loadSingleCapturedImages()Z

    goto :goto_0
.end method

.method protected reloadedPostview()V
    .locals 2

    .prologue
    .line 92
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 93
    const v1, 0x7f090124

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 94
    .local v0, postview:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 96
    .end local v0           #postview:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method protected setFileName()V
    .locals 2

    .prologue
    .line 161
    const v1, 0x7f090132

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 162
    .local v0, tv:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getSaveFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    :cond_0
    return-void
.end method

.method protected setupLayout()V
    .locals 1

    .prologue
    .line 170
    const v0, 0x7f09012d

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewNormalActivity;->inflateStub(I)Landroid/view/View;

    .line 171
    return-void
.end method
