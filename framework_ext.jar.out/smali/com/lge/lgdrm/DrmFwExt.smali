.class public final Lcom/lge/lgdrm/DrmFwExt;
.super Ljava/lang/Object;
.source "DrmFwExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/lgdrm/DrmFwExt$MediaFile;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmFwExt"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static checkDRMMediaFile(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 6
    .parameter "context"
    .parameter "filename"
    .parameter "checkIsImage"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 206
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v2

    .line 210
    :cond_1
    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Lcom/lge/lgdrm/DrmManager;->isSupportedExtension(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 214
    invoke-static {p1}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v0

    .line 215
    .local v0, drmType:I
    const/16 v5, 0x10

    if-lt v0, v5, :cond_0

    const/16 v5, 0x3000

    if-gt v0, v5, :cond_0

    .line 219
    const-string v2, "android.permission.ACCESS_LGDRM"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 220
    goto :goto_0

    .line 224
    :cond_2
    if-eqz p2, :cond_3

    .line 225
    :try_start_0
    invoke-static {p1}, Lcom/lge/lgdrm/DrmContent;->getContentType(Ljava/lang/String;)I

    move-result v2

    if-ne v3, v2, :cond_3

    move v2, v3

    .line 226
    goto :goto_0

    .line 230
    :cond_3
    invoke-static {p1, p0}, Lcom/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;

    move-result-object v1

    .line 231
    .local v1, session:Lcom/lge/lgdrm/DrmContentSession;
    if-nez v1, :cond_4

    move v2, v3

    .line 232
    goto :goto_0

    .line 235
    :cond_4
    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Lcom/lge/lgdrm/DrmContentSession;->judgeRight(IZ)I

    move-result v2

    if-nez v2, :cond_5

    .line 236
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/lgdrm/DrmContentSession;->setDecryptionInfo(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_5

    move v2, v4

    .line 237
    goto :goto_0

    .line 240
    .end local v1           #session:Lcom/lge/lgdrm/DrmContentSession;
    :catch_0
    move-exception v2

    :cond_5
    move v2, v3

    .line 243
    goto :goto_0
.end method

.method public static checkDRMRingtone(Landroid/content/Context;Ljava/lang/String;ZZZ)I
    .locals 9
    .parameter "context"
    .parameter "filename"
    .parameter "setKey"
    .parameter "resetKey"
    .parameter "consume"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 60
    if-nez p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v2

    .line 64
    :cond_1
    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Lcom/lge/lgdrm/DrmManager;->isSupportedExtension(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    invoke-static {p1}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v0

    .line 69
    .local v0, drmType:I
    const/16 v5, 0x10

    if-lt v0, v5, :cond_0

    const/16 v5, 0x3000

    if-gt v0, v5, :cond_0

    .line 74
    :try_start_0
    invoke-static {p1, p0}, Lcom/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;

    move-result-object v1

    .line 75
    .local v1, session:Lcom/lge/lgdrm/DrmContentSession;
    if-nez v1, :cond_2

    move v2, v3

    .line 76
    goto :goto_0

    .line 79
    :cond_2
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/lge/lgdrm/DrmContentSession;->isActionSupported(I)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    .line 80
    goto :goto_0

    .line 83
    :cond_3
    if-eqz p2, :cond_4

    .line 84
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/lgdrm/DrmContentSession;->setDecryptionInfo(Z)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    .line 85
    goto :goto_0

    .line 88
    :cond_4
    if-eqz p3, :cond_5

    .line 89
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lge/lgdrm/DrmContentSession;->setDecryptionInfo(Z)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    .line 90
    goto :goto_0

    .line 94
    :cond_5
    if-eqz p4, :cond_6

    .line 96
    invoke-virtual {v1}, Lcom/lge/lgdrm/DrmContentSession;->getDrmTime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/lge/lgdrm/DrmContentSession;->consumeRight(JJ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    move v2, v4

    .line 99
    goto :goto_0

    .line 100
    .end local v1           #session:Lcom/lge/lgdrm/DrmContentSession;
    :catch_0
    move-exception v2

    move v2, v3

    .line 103
    goto :goto_0
.end method

.method public static getActualRingtoneUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "ringtoneUri"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 114
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-object v3

    .line 117
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 118
    .local v9, scheme:Ljava/lang/String;
    if-eqz v9, :cond_2

    const-string v0, "file"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 121
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, authority:Ljava/lang/String;
    const-string/jumbo v0, "settings"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 123
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v10

    .line 125
    .local v10, uri:Landroid/net/Uri;
    if-eqz v10, :cond_0

    .line 128
    invoke-virtual {v10}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 129
    if-eqz v6, :cond_4

    const-string/jumbo v0, "settings"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    :cond_4
    invoke-static {p0, v10}, Lcom/lge/lgdrm/DrmFwExt;->getActualRingtoneUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 134
    .end local v10           #uri:Landroid/net/Uri;
    :cond_5
    const-string/jumbo v0, "media"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 135
    const/4 v7, 0x0

    .line 136
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 137
    .local v8, data:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v12, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v2, v11

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 139
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v12, :cond_6

    .line 140
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 141
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 143
    :cond_6
    if-eqz v7, :cond_7

    .line 144
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v3, v8

    .line 146
    goto :goto_0

    .line 147
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #data:Ljava/lang/String;
    :cond_8
    const-string v0, "drm"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v7, 0x0

    .line 149
    .restart local v7       #cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 151
    .restart local v8       #data:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v12, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v2, v11

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 153
    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v12, :cond_9

    .line 154
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 155
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 157
    :cond_9
    if-eqz v7, :cond_a

    .line 158
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_a
    move-object v3, v8

    .line 160
    goto/16 :goto_0
.end method

.method public static getDRMAlbumArt(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 3
    .parameter "context"
    .parameter "path"

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 249
    .local v0, albumArt:[B
    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 250
    .local v1, retriever:Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object v0

    .line 252
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v1           #retriever:Landroid/media/MediaMetadataRetriever;
    :goto_0
    return-object v0

    .line 253
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static setDRMMediaQuery(Landroid/content/Context;Landroid/database/sqlite/SQLiteQueryBuilder;Z)V
    .locals 1
    .parameter "context"
    .parameter "qb"
    .parameter "appendAND"

    .prologue
    .line 180
    const-string v0, "android.permission.ACCESS_LGDRM"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    const-string v0, "android.permission.ACCESS_LGDRM_CNTLIST"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    if-eqz p2, :cond_2

    .line 191
    const-string v0, " AND (mime_type NOT IN(\'application/vnd.oma.drm.message\',\'application/vnd.oma.drm.content\',\'application/vnd.oma.drm.dcf\'))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 193
    :cond_2
    const-string v0, " mime_type NOT IN(\'application/vnd.oma.drm.message\',\'application/vnd.oma.drm.content\',\'application/vnd.oma.drm.dcf\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static setDataSourceFromResource(Landroid/content/Context;Landroid/media/MediaPlayer;I)V
    .locals 7
    .parameter "context"
    .parameter "player"
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 168
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_0

    .line 169
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 171
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 173
    :cond_0
    return-void
.end method
