.class public Lcom/lge/lgdrm/DrmFwExt$MediaFile;
.super Ljava/lang/Object;
.source "DrmFwExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdrm/DrmFwExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaFile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/lgdrm/DrmFwExt$MediaFile$AVTypeList;,
        Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field private static AVTypeCount:I

.field private static final sAVTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lge/lgdrm/DrmFwExt$MediaFile$AVTypeList;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    sput v0, Lcom/lge/lgdrm/DrmFwExt$MediaFile;->AVTypeCount:I

    .line 265
    const-string v0, "init"

    invoke-static {v0}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    .line 291
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/lgdrm/DrmFwExt$MediaFile;->sAVTypeMap:Ljava/util/HashMap;

    .line 295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/lgdrm/DrmFwExt$MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 259
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 278
    return-void
.end method

.method public static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "extension"
    .parameter "fileType"
    .parameter "mimeType"

    .prologue
    .line 299
    sget-object v0, Lcom/lge/lgdrm/DrmFwExt$MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-static {p1}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    :cond_0
    sget-object v0, Lcom/lge/lgdrm/DrmFwExt$MediaFile;->sAVTypeMap:Ljava/util/HashMap;

    sget v1, Lcom/lge/lgdrm/DrmFwExt$MediaFile;->AVTypeCount:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/lge/lgdrm/DrmFwExt$MediaFile;->AVTypeCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/lge/lgdrm/DrmFwExt$MediaFile$AVTypeList;

    invoke-direct {v2, p1, p2, p0}, Lcom/lge/lgdrm/DrmFwExt$MediaFile$AVTypeList;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_1
    return-void
.end method

.method public static getFileTypeFromDrm(Ljava/lang/String;)Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;
    .locals 13
    .parameter "path"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x0

    .line 307
    sget-boolean v8, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v8, :cond_1

    move-object v6, v7

    .line 382
    :cond_0
    :goto_0
    return-object v6

    .line 310
    :cond_1
    invoke-static {v10, p0, v7}, Lcom/lge/lgdrm/DrmManager;->isSupportedExtension(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    move-object v6, v7

    .line 311
    goto :goto_0

    .line 314
    :cond_2
    const-string v8, "."

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 315
    .local v4, lastDot:I
    if-gez v4, :cond_3

    move-object v6, v7

    .line 316
    goto :goto_0

    .line 318
    :cond_3
    sget-object v8, Lcom/lge/lgdrm/DrmFwExt$MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;

    .line 319
    .local v5, mediaType:Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;
    if-nez v5, :cond_4

    .line 320
    const-string v8, "DrmFwExt"

    const-string v9, "getFileTypeFromDrm : mediaType is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 321
    goto :goto_0

    .line 323
    :cond_4
    iget v8, v5, Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;->fileType:I

    const/16 v9, 0x34

    if-lt v8, v9, :cond_5

    iget v8, v5, Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;->fileType:I

    const/16 v9, 0x39

    if-le v8, v9, :cond_6

    :cond_5
    move-object v6, v7

    .line 325
    goto :goto_0

    .line 328
    :cond_6
    invoke-static {p0}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_7

    move-object v6, v7

    .line 329
    goto :goto_0

    .line 334
    :cond_7
    :try_start_0
    invoke-static {p0}, Lcom/lge/lgdrm/DrmContent;->getContentType(Ljava/lang/String;)I

    move-result v1

    .line 336
    .local v1, contentType:I
    const/4 v8, 0x2

    invoke-static {p0, v8}, Lcom/lge/lgdrm/DrmContent;->getContentInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, extension:Ljava/lang/String;
    if-eqz v2, :cond_8

    if-eq v1, v12, :cond_9

    if-eq v1, v10, :cond_9

    if-eq v1, v11, :cond_9

    :cond_8
    move-object v6, v7

    .line 344
    goto :goto_0

    .line 346
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 348
    sget-object v8, Lcom/lge/lgdrm/DrmFwExt$MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;

    .line 349
    .local v6, orgMediaType:Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;
    if-nez v6, :cond_a

    move-object v6, v7

    .line 350
    goto :goto_0

    .line 354
    :cond_a
    if-eq v1, v12, :cond_0

    .line 357
    if-ne v1, v10, :cond_b

    iget v8, v6, Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;->fileType:I

    invoke-static {v8}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_b
    if-ne v1, v11, :cond_c

    iget v8, v6, Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;->fileType:I

    invoke-static {v8}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 364
    :cond_c
    sget-object v8, Lcom/lge/lgdrm/DrmFwExt$MediaFile;->sAVTypeMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 365
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 367
    .local v0, avType:Lcom/lge/lgdrm/DrmFwExt$MediaFile$AVTypeList;
    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 368
    sget-object v8, Lcom/lge/lgdrm/DrmFwExt$MediaFile;->sAVTypeMap:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #avType:Lcom/lge/lgdrm/DrmFwExt$MediaFile$AVTypeList;
    check-cast v0, Lcom/lge/lgdrm/DrmFwExt$MediaFile$AVTypeList;

    .line 369
    .restart local v0       #avType:Lcom/lge/lgdrm/DrmFwExt$MediaFile$AVTypeList;
    iget-object v8, v0, Lcom/lge/lgdrm/DrmFwExt$MediaFile$AVTypeList;->extension:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 370
    if-ne v1, v10, :cond_f

    iget v8, v0, Lcom/lge/lgdrm/DrmFwExt$MediaFile$AVTypeList;->fileType:I

    invoke-static {v8}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 371
    new-instance v6, Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;

    .end local v6           #orgMediaType:Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;
    iget v8, v0, Lcom/lge/lgdrm/DrmFwExt$MediaFile$AVTypeList;->fileType:I

    iget-object v9, v0, Lcom/lge/lgdrm/DrmFwExt$MediaFile$AVTypeList;->mimeType:Ljava/lang/String;

    invoke-direct {v6, v8, v9}, Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 378
    .end local v0           #avType:Lcom/lge/lgdrm/DrmFwExt$MediaFile$AVTypeList;
    .end local v1           #contentType:I
    .end local v2           #extension:Ljava/lang/String;
    .end local v3           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v8

    :cond_e
    move-object v6, v7

    .line 382
    goto/16 :goto_0

    .line 372
    .restart local v0       #avType:Lcom/lge/lgdrm/DrmFwExt$MediaFile$AVTypeList;
    .restart local v1       #contentType:I
    .restart local v2       #extension:Ljava/lang/String;
    .restart local v3       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v6       #orgMediaType:Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;
    :cond_f
    if-ne v1, v11, :cond_d

    iget v8, v0, Lcom/lge/lgdrm/DrmFwExt$MediaFile$AVTypeList;->fileType:I

    invoke-static {v8}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 373
    new-instance v6, Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;

    .end local v6           #orgMediaType:Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;
    iget v8, v0, Lcom/lge/lgdrm/DrmFwExt$MediaFile$AVTypeList;->fileType:I

    iget-object v9, v0, Lcom/lge/lgdrm/DrmFwExt$MediaFile$AVTypeList;->mimeType:Ljava/lang/String;

    invoke-direct {v6, v8, v9}, Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public static getFileTypes()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 403
    const/4 v0, 0x0

    .line 406
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/lge/lgdrm/DrmFwExt$MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public static isAudioFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 386
    invoke-static {p0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v0

    return v0
.end method

.method public static isImageFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 394
    invoke-static {p0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v0

    return v0
.end method

.method public static isPlayListFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 398
    invoke-static {p0}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v0

    return v0
.end method

.method public static isVideoFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 390
    invoke-static {p0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v0

    return v0
.end method
