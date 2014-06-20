.class public Lcom/android/lgesettings/RingtonePickerInfo;
.super Ljava/lang/Object;
.source "RingtonePickerInfo.java"


# static fields
.field private static final DRM_COLUMNS:[Ljava/lang/String;

.field private static final INTERNAL_COLUMNS:[Ljava/lang/String;

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mIsSatotakuRingtoneModel:Z

.field private static mIsSilentItemAddModel:Z


# instance fields
.field private mFilterColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIncludeDrm:Z

.field mParentType:I

.field mParentTypeDB:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "l1_dcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/lgesettings/RingtonePickerInfo;->mIsSatotakuRingtoneModel:Z

    .line 94
    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "geefhd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/lgesettings/RingtonePickerInfo;->mIsSilentItemAddModel:Z

    .line 139
    const/4 v0, 0x0

    sput-object v0, Lcom/android/lgesettings/RingtonePickerInfo;->mContext:Landroid/content/Context;

    .line 147
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "title_key"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/lgesettings/RingtonePickerInfo;->INTERNAL_COLUMNS:[Ljava/lang/String;

    .line 152
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "title_key"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/lgesettings/RingtonePickerInfo;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 158
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "title AS title_key"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/lgesettings/RingtonePickerInfo;->DRM_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 164
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/16 v0, 0x8

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "1"

    aput-object v2, v1, v4

    const-string v2, "ringtone"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "2"

    aput-object v2, v1, v4

    const-string v2, "notification_sound"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "4"

    aput-object v2, v1, v4

    const-string v2, "alarm_alert"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "8"

    aput-object v3, v2, v4

    const-string v3, "ringtone_sim2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "16"

    aput-object v3, v2, v4

    const-string v3, "notification_sound_sim2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "32"

    aput-object v3, v2, v4

    const-string v3, "ringtone_videocall"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "64"

    aput-object v3, v2, v4

    const-string v3, "ringtone_sim3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "128"

    aput-object v3, v2, v4

    const-string v3, "notification_sound_sim3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentTypeDB:[[Ljava/lang/String;

    .line 136
    iput-boolean v4, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mIncludeDrm:Z

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mFilterColumns:Ljava/util/List;

    .line 145
    iput v5, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentType:I

    .line 166
    sput-object p1, Lcom/android/lgesettings/RingtonePickerInfo;->mContext:Landroid/content/Context;

    .line 168
    return-void
.end method

.method private CheckDrmExpired(Ljava/lang/String;)I
    .locals 9
    .parameter "filePath"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, -0x1

    .line 625
    const/4 v2, -0x1

    .line 626
    .local v2, drmContentType:I
    const/4 v3, -0x1

    .line 628
    .local v3, drmJudge:I
    :try_start_0
    sget-object v6, Lcom/android/lgesettings/RingtonePickerInfo;->mContext:Landroid/content/Context;

    invoke-static {p1, v6}, Lcom/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;

    move-result-object v1

    .line 630
    .local v1, drmContentSession:Lcom/lge/lgdrm/DrmContentSession;
    if-nez v1, :cond_1

    .line 662
    .end local v1           #drmContentSession:Lcom/lge/lgdrm/DrmContentSession;
    :cond_0
    :goto_0
    return v5

    .line 636
    .restart local v1       #drmContentSession:Lcom/lge/lgdrm/DrmContentSession;
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 637
    .local v0, drmContent:Lcom/lge/lgdrm/DrmContent;
    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {v0}, Lcom/lge/lgdrm/DrmContent;->getContentType()I

    move-result v2

    .line 643
    if-ne v2, v7, :cond_2

    .line 645
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/lge/lgdrm/DrmContentSession;->judgeRight(IZ)I

    move-result v3

    :goto_1
    move v5, v3

    .line 654
    goto :goto_0

    .line 647
    :cond_2
    if-eq v2, v8, :cond_3

    const/4 v6, 0x3

    if-ne v2, v6, :cond_0

    .line 649
    :cond_3
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/lge/lgdrm/DrmContentSession;->judgeRight(IZ)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lge/lgdrm/DrmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_1

    .line 656
    .end local v0           #drmContent:Lcom/lge/lgdrm/DrmContent;
    .end local v1           #drmContentSession:Lcom/lge/lgdrm/DrmContentSession;
    :catch_0
    move-exception v4

    .line 657
    .local v4, e:Ljava/lang/SecurityException;
    invoke-virtual {v4}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 660
    .end local v4           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    .line 661
    .local v4, e:Lcom/lge/lgdrm/DrmException;
    invoke-virtual {v4}, Lcom/lge/lgdrm/DrmException;->printStackTrace()V

    goto :goto_0
.end method

.method private static constructBooleanTrueWhereClause(Ljava/util/List;Z)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter "includeDrm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, columns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    .line 300
    if-nez p0, :cond_0

    .line 301
    const/4 v5, 0x0

    .line 356
    :goto_0
    return-object v5

    .line 303
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_3

    .line 307
    sget-boolean v5, Lcom/android/lgesettings/RingtonePickerInfo;->mIsSatotakuRingtoneModel:Z

    if-eqz v5, :cond_1

    .line 308
    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=1 and not artist like \'Satoh-Taku\') or "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 310
    :cond_1
    sget-boolean v5, Lcom/android/lgesettings/RingtonePickerInfo;->mIsSilentItemAddModel:Z

    if-eqz v5, :cond_2

    .line 311
    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=1 and not _data= \'/system/media/audio/notifications/Silent.ogg\') or "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 314
    :cond_2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=1 or "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 318
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 320
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 324
    :cond_4
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    if-nez p1, :cond_5

    .line 329
    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v5, "is_drm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const-string v5, "=0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_5
    const-string v5, "ro.build.target_operator"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, mOperator:Ljava/lang/String;
    const-string v5, "ro.build.target_country"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, mCountry:Ljava/lang/String;
    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    const-string v5, "TMO"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "COM"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 338
    const-string v5, "persist.sys.mcc-list"

    const-string v6, "F"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, ntCodeMCC:Ljava/lang/String;
    if-eqz v3, :cond_8

    const-string v5, "262"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eq v5, v7, :cond_6

    const-string v5, "216"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eq v5, v7, :cond_6

    const-string v5, "231"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-ne v5, v7, :cond_8

    .line 343
    :cond_6
    const-string v5, " and title not in ( \'Cosmote_Backringtone\', \'t-mobile_receive_message\', \'t-mobile_ring\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .end local v3           #ntCodeMCC:Ljava/lang/String;
    :cond_7
    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 344
    .restart local v3       #ntCodeMCC:Ljava/lang/String;
    :cond_8
    if-eqz v3, :cond_a

    const-string v5, "230"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eq v5, v7, :cond_9

    const-string v5, "204"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-ne v5, v7, :cond_a

    .line 347
    :cond_9
    const-string v5, " and title not in ( \'Cosmote_Backringtone\', \'telekom_receive_message\', \'telekom_ring\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 348
    :cond_a
    if-eqz v3, :cond_b

    const-string v5, "202"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-ne v5, v7, :cond_b

    .line 349
    const-string v5, " and title not in ( \'t-mobile_ring\', \'telekom_receive_message\', \'t-mobile_receive_message\', \'telekom_ring\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 351
    :cond_b
    const-string v5, " and title not in ( \'t-mobile_ring\', \'telekom_receive_message\', \'t-mobile_receive_message\', \'telekom_ring\', \'Cosmote_Backringtone\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private static constructBooleanTrueWhereClauseForSatotakuRingtone(Ljava/util/List;Z)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "includeDrm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 362
    .local p0, columns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 363
    const/4 v2, 0x0

    .line 393
    :goto_0
    return-object v2

    .line 366
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    .line 370
    sget-boolean v2, Lcom/android/lgesettings/RingtonePickerInfo;->mIsSatotakuRingtoneModel:Z

    if-eqz v2, :cond_1

    .line 371
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=1 and artist= \'Satoh-Taku\') or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 374
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=1 or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 378
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 380
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 383
    :cond_3
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    if-nez p1, :cond_4

    .line 388
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    const-string v2, "is_drm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    const-string v2, "=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static constructBooleanTrueWhereClauseForSilentItem(Ljava/util/List;Z)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "includeDrm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, columns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 400
    const/4 v2, 0x0

    .line 426
    :goto_0
    return-object v2

    .line 403
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 407
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=1 and _data= \'/system/media/audio/notifications/Silent.ogg\') or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 411
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 413
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 416
    :cond_2
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    if-nez p1, :cond_3

    .line 421
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    const-string v2, "is_drm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    const-string v2, "=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getDrmRingtones()Landroid/database/Cursor;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 452
    sget-object v0, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    sget-object v1, Lcom/android/lgesettings/RingtonePickerInfo;->DRM_COLUMNS:[Ljava/lang/String;

    const-string v2, "title"

    invoke-static {v0, v1, v3, v3, v2}, Lcom/android/lgesettings/RingtonePickerInfo;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getFilepathFromContentUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .parameter "uri"

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 731
    const/4 v9, 0x0

    .line 732
    .local v9, filepath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 735
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/lgesettings/RingtonePickerInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 736
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 740
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 741
    .local v7, count:I
    :cond_0
    if-eq v7, v12, :cond_2

    .line 744
    if-nez v7, :cond_2

    .line 756
    if-eqz v6, :cond_1

    .line 757
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 767
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v7           #count:I
    :cond_1
    :goto_0
    return-object v11

    .line 749
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v7       #count:I
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 750
    const-string v1, "_data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 751
    .local v10, i:I
    if-ltz v10, :cond_4

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 756
    :goto_1
    if-eqz v6, :cond_3

    .line 757
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 761
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v7           #count:I
    .end local v10           #i:I
    :cond_3
    :goto_2
    if-eqz v9, :cond_1

    .line 765
    const-string v1, "RingtonePickerInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilepathFromContentUri Media _data result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v9

    .line 767
    goto :goto_0

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v7       #count:I
    .restart local v10       #i:I
    :cond_4
    move-object v9, v11

    .line 751
    goto :goto_1

    .line 753
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v7           #count:I
    .end local v10           #i:I
    :catch_0
    move-exception v8

    .line 754
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "RingtonePickerInfo"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 756
    if-eqz v6, :cond_3

    .line 757
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 756
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_5

    .line 757
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method private getFilepathFromSettingUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .parameter "uri"

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 696
    const/4 v9, 0x0

    .line 697
    .local v9, filepath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 700
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/lgesettings/RingtonePickerInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 701
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "value"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 703
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 704
    .local v7, count:I
    :cond_0
    if-eq v7, v12, :cond_2

    .line 706
    if-nez v7, :cond_2

    .line 717
    if-eqz v6, :cond_1

    .line 718
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 727
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v7           #count:I
    :cond_1
    :goto_0
    return-object v11

    .line 711
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v7       #count:I
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 712
    const-string v1, "value"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 713
    .local v10, i:I
    if-ltz v10, :cond_4

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 717
    :goto_1
    if-eqz v6, :cond_3

    .line 718
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 721
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v7           #count:I
    .end local v10           #i:I
    :cond_3
    :goto_2
    if-eqz v9, :cond_1

    .line 725
    const-string v1, "RingtonePickerInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilepathFromSettingUri system value result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v9

    .line 727
    goto :goto_0

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v7       #count:I
    .restart local v10       #i:I
    :cond_4
    move-object v9, v11

    .line 713
    goto :goto_1

    .line 714
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v7           #count:I
    .end local v10           #i:I
    :catch_0
    move-exception v8

    .line 715
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "RingtonePickerInfo"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 717
    if-eqz v6, :cond_3

    .line 718
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 717
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_5

    .line 718
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method private getMediaRingtones()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 458
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, status:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mounted_ro"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/lgesettings/RingtonePickerInfo;->MEDIA_COLUMNS:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mFilterColumns:Ljava/util/List;

    iget-boolean v5, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mIncludeDrm:Z

    invoke-static {v4, v5}, Lcom/android/lgesettings/RingtonePickerInfo;->constructBooleanTrueWhereClause(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "title_key"

    invoke-static {v2, v3, v4, v1, v5}, Lcom/android/lgesettings/RingtonePickerInfo;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private static getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 574
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getValidRingtoneUriFromCursorAndClose(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 559
    if-eqz p0, :cond_1

    .line 560
    const/4 v0, 0x0

    .line 562
    .local v0, uri:Landroid/net/Uri;
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    invoke-static {p0}, Lcom/android/lgesettings/RingtonePickerInfo;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    .line 565
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 569
    .end local v0           #uri:Landroid/net/Uri;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 236
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/lgesettings/RingtonePickerInfo;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 8
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "limit"

    .prologue
    const/4 v7, 0x0

    .line 219
    :try_start_0
    sget-object v1, Lcom/android/lgesettings/RingtonePickerInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 220
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 229
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .line 223
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_0
    if-lez p5, :cond_1

    .line 224
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 227
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 228
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 229
    goto :goto_0
.end method


# virtual methods
.method public GetFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "path"

    .prologue
    .line 668
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 669
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 670
    .local v2, scheme:Ljava/lang/String;
    const/4 v0, 0x0

    .line 672
    .local v0, filename:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, "file"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 673
    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 690
    :cond_1
    :goto_0
    const-string v4, "RingtonePickerInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MultiPlayer] setDataSource : filename = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    return-object v0

    .line 674
    :cond_2
    if-eqz v2, :cond_1

    const-string v4, "content"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 676
    const-string v4, "content://settings"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 677
    invoke-direct {p0, v3}, Lcom/android/lgesettings/RingtonePickerInfo;->getFilepathFromSettingUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 678
    .local v1, fileuri:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 679
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 681
    if-eqz v2, :cond_3

    const-string v4, "file"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 682
    :cond_3
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 683
    :cond_4
    if-eqz v2, :cond_1

    const-string v4, "content"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 684
    invoke-direct {p0, v3}, Lcom/android/lgesettings/RingtonePickerInfo;->getFilepathFromContentUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 687
    .end local v1           #fileuri:Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/lgesettings/RingtonePickerInfo;->getFilepathFromContentUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public appIsEnabled()Z
    .locals 5

    .prologue
    .line 470
    sget-object v3, Lcom/android/lgesettings/RingtonePickerInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 471
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 474
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    const-string v3, "com.lge.music"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 478
    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    :goto_0
    return v3

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public checkDRM(Ljava/lang/String;)I
    .locals 11
    .parameter "filename"

    .prologue
    const/4 v9, 0x2

    const/4 v10, 0x4

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 779
    if-nez p1, :cond_1

    .line 809
    :cond_0
    :goto_0
    return v4

    .line 783
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 784
    .local v6, length:I
    add-int/lit8 v2, v6, -0x3

    const-string v3, ".dm"

    const/4 v5, 0x3

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v2, v6, -0x4

    const-string v3, ".dcf"

    move-object v0, p1

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v2, v6, -0x4

    const-string v3, ".odf"

    move-object v0, p1

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v2, v6, -0x4

    const-string v3, ".o4a"

    move-object v0, p1

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v2, v6, -0x4

    const-string v3, ".o4v"

    move-object v0, p1

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    .line 792
    invoke-static {p1}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v7

    .line 793
    .local v7, mDrmFile:I
    const/16 v0, 0x10

    if-lt v7, v0, :cond_3

    const/16 v0, 0x3000

    if-le v7, v0, :cond_5

    .line 794
    :cond_3
    const/4 v7, 0x0

    .line 795
    goto :goto_0

    .end local v7           #mDrmFile:I
    :cond_4
    move v0, v4

    .line 784
    goto :goto_1

    .line 799
    .restart local v7       #mDrmFile:I
    :cond_5
    :try_start_0
    sget-object v0, Lcom/android/lgesettings/RingtonePickerInfo;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;

    move-result-object v8

    .line 801
    .local v8, session:Lcom/lge/lgdrm/DrmContentSession;
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Lcom/lge/lgdrm/DrmContentSession;->isActionSupported(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_6

    move v4, v1

    .line 802
    goto :goto_0

    :cond_6
    move v4, v9

    .line 805
    goto :goto_0

    .line 806
    .end local v8           #session:Lcom/lge/lgdrm/DrmContentSession;
    :catch_0
    move-exception v0

    move v4, v1

    .line 809
    goto :goto_0
.end method

.method public do_getURI(I)Ljava/lang/String;
    .locals 6
    .parameter "parentType"

    .prologue
    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, db_Uri:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentTypeDB:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 496
    iget-object v3, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentTypeDB:[[Ljava/lang/String;

    aget-object v3, v3, v2

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 497
    sget-object v3, Lcom/android/lgesettings/RingtonePickerInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentTypeDB:[[Ljava/lang/String;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 503
    .end local v0           #db_Uri:Ljava/lang/String;
    .local v1, db_Uri:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 495
    .end local v1           #db_Uri:Ljava/lang/String;
    .restart local v0       #db_Uri:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 503
    .end local v0           #db_Uri:Ljava/lang/String;
    .restart local v1       #db_Uri:Ljava/lang/String;
    goto :goto_1
.end method

.method public do_setURI(Landroid/net/Uri;I)V
    .locals 4
    .parameter "uri"
    .parameter "parentType"

    .prologue
    .line 507
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentTypeDB:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 508
    iget-object v1, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentTypeDB:[[Ljava/lang/String;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 509
    sget-object v1, Lcom/android/lgesettings/RingtonePickerInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v1, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentTypeDB:[[Ljava/lang/String;

    aget-object v1, v1, v0

    const/4 v3, 0x1

    aget-object v3, v1, v3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 507
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 509
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 515
    :cond_2
    return-void
.end method

.method public getCursor(I)Landroid/database/Cursor;
    .locals 6
    .parameter "type"

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 243
    packed-switch p1, :pswitch_data_0

    .line 274
    :goto_0
    return-object v0

    .line 245
    :pswitch_0
    iget v2, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentType:I

    if-eq v2, v5, :cond_0

    iget v2, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentType:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentType:I

    const/16 v3, 0x40

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentType:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 246
    :cond_0
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/lgesettings/RingtonePickerInfo;->INTERNAL_COLUMNS:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mFilterColumns:Ljava/util/List;

    iget-boolean v5, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mIncludeDrm:Z

    invoke-static {v4, v5}, Lcom/android/lgesettings/RingtonePickerInfo;->constructBooleanTrueWhereClause(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_display_name"

    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/lgesettings/RingtonePickerInfo;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 250
    :cond_1
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/lgesettings/RingtonePickerInfo;->INTERNAL_COLUMNS:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mFilterColumns:Ljava/util/List;

    iget-boolean v5, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mIncludeDrm:Z

    invoke-static {v4, v5}, Lcom/android/lgesettings/RingtonePickerInfo;->constructBooleanTrueWhereClause(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "title_key"

    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/lgesettings/RingtonePickerInfo;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 258
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mIncludeDrm:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/lgesettings/RingtonePickerInfo;->getDrmRingtones()Landroid/database/Cursor;

    move-result-object v0

    .line 259
    .local v0, drmCursor:Landroid/database/Cursor;
    :cond_2
    invoke-direct {p0}, Lcom/android/lgesettings/RingtonePickerInfo;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v1

    .line 260
    .local v1, mediaCursor:Landroid/database/Cursor;
    new-instance v2, Lcom/android/internal/database/SortCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    const-string v4, "title_key"

    invoke-direct {v2, v3, v4}, Lcom/android/internal/database/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    .line 266
    .end local v0           #drmCursor:Landroid/database/Cursor;
    .end local v1           #mediaCursor:Landroid/database/Cursor;
    :pswitch_2
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/lgesettings/RingtonePickerInfo;->INTERNAL_COLUMNS:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mFilterColumns:Ljava/util/List;

    iget-boolean v5, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mIncludeDrm:Z

    invoke-static {v4, v5}, Lcom/android/lgesettings/RingtonePickerInfo;->constructBooleanTrueWhereClauseForSatotakuRingtone(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "title_key"

    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/lgesettings/RingtonePickerInfo;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 270
    :pswitch_3
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/lgesettings/RingtonePickerInfo;->INTERNAL_COLUMNS:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mFilterColumns:Ljava/util/List;

    iget-boolean v5, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mIncludeDrm:Z

    invoke-static {v4, v5}, Lcom/android/lgesettings/RingtonePickerInfo;->constructBooleanTrueWhereClauseForSilentItem(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v0, v0}, Lcom/android/lgesettings/RingtonePickerInfo;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getDefaultPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 580
    const/4 v1, 0x3

    .line 581
    .local v1, mStreamType:I
    new-instance v0, Landroid/media/RingtoneManager;

    sget-object v2, Lcom/android/lgesettings/RingtonePickerInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 582
    .local v0, mRingtoneManager:Landroid/media/RingtoneManager;
    invoke-virtual {v0}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v1

    .line 584
    packed-switch v1, :pswitch_data_0

    .line 596
    :pswitch_0
    const-string v2, "ro.config.ringtone"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 587
    :pswitch_1
    const-string v2, "ro.config.ringtone"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 590
    :pswitch_2
    const-string v2, "ro.config.notification_sound"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 593
    :pswitch_3
    const-string v2, "ro.config.alarm_alert"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 584
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getDefaultPhoneRingtone()Landroid/net/Uri;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 518
    const-string v1, ""

    .line 520
    .local v1, defaultRingtoneName:Ljava/lang/String;
    const-string v2, ""

    .line 524
    .local v2, soundtype:Ljava/lang/String;
    iget v4, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentType:I

    if-eq v4, v8, :cond_0

    iget v4, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentType:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentType:I

    const/16 v5, 0x40

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentType:I

    const/16 v5, 0x20

    if-ne v4, v5, :cond_3

    .line 525
    :cond_0
    const-string v4, "ro.config.ringtone"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 526
    const-string v2, "is_ringtone"

    .line 540
    :cond_1
    :goto_0
    const-string v4, "RingtonePickerInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default Ringtone Name(stream):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/lgesettings/RingtonePickerInfo;->INTERNAL_COLUMNS:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_display_name = \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v9, v9}, Lcom/android/lgesettings/RingtonePickerInfo;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 550
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/lgesettings/RingtonePickerInfo;->getValidRingtoneUriFromCursorAndClose(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v3

    .line 552
    .local v3, uri:Landroid/net/Uri;
    if-eqz v0, :cond_2

    .line 553
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 555
    :cond_2
    return-object v3

    .line 529
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_3
    iget v4, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentType:I

    const/16 v5, 0x10

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentType:I

    const/16 v5, 0x80

    if-ne v4, v5, :cond_5

    .line 530
    :cond_4
    const-string v4, "ro.config.notification_sound"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 531
    const-string v2, "is_notification"

    goto :goto_0

    .line 534
    :cond_5
    iget v4, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    goto/16 :goto_0
.end method

.method public getRingtoneUriPosition(Landroid/net/Uri;Landroid/database/Cursor;)I
    .locals 9
    .parameter "ringtoneUri"
    .parameter "c"

    .prologue
    const/4 v6, -0x1

    .line 178
    if-nez p1, :cond_1

    move v3, v6

    .line 212
    :cond_0
    :goto_0
    return v3

    .line 183
    :cond_1
    if-nez p2, :cond_2

    move v3, v6

    .line 184
    goto :goto_0

    .line 186
    :cond_2
    move-object v1, p2

    .line 187
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 189
    .local v2, cursorCount:I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_3

    move v3, v6

    .line 190
    goto :goto_0

    .line 194
    :cond_3
    const/4 v0, 0x0

    .line 195
    .local v0, currentUri:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 196
    .local v4, previousUriString:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_6

    .line 197
    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 198
    .local v5, uriString:Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 199
    :cond_4
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 202
    :cond_5
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 207
    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->move(I)Z

    .line 209
    move-object v4, v5

    .line 196
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v5           #uriString:Ljava/lang/String;
    :cond_6
    move v3, v6

    .line 212
    goto :goto_0
.end method

.method public getURI()Landroid/net/Uri;
    .locals 5

    .prologue
    .line 483
    const-string v1, "RingtonePickerInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActualDefaultRingtoneUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/lgesettings/RingtonePickerInfo;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentType:I

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    sget-object v1, Lcom/android/lgesettings/RingtonePickerInfo;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentType:I

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 490
    .local v0, uri:Landroid/net/Uri;
    return-object v0
.end method

.method public isExpiredDrm()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 602
    const/4 v0, 0x0

    .line 603
    .local v0, db_Uri:Ljava/lang/String;
    iget v5, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentType:I

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/RingtonePickerInfo;->do_getURI(I)Ljava/lang/String;

    move-result-object v0

    .line 604
    const-string v5, "RingtonePickerInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!!!!!db_uri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/RingtonePickerInfo;->GetFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 608
    .local v3, path:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 609
    invoke-static {v3}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v1

    .line 610
    .local v1, isDrm:I
    if-lez v1, :cond_0

    .line 611
    invoke-direct {p0, v3}, Lcom/android/lgesettings/RingtonePickerInfo;->CheckDrmExpired(Ljava/lang/String;)I

    move-result v2

    .line 612
    .local v2, isDrmExpired:I
    const-string v5, "RingtonePickerInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!!!!!isDrm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isDrmExpired = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    if-lez v1, :cond_0

    if-ne v2, v4, :cond_0

    .line 614
    const-string v5, "RingtonePickerInfo"

    const-string v6, "!!!!! return true"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    .end local v1           #isDrm:I
    .end local v2           #isDrmExpired:I
    .end local v3           #path:Ljava/lang/String;
    :goto_0
    return v4

    .line 620
    :cond_0
    const-string v4, "RingtonePickerInfo"

    const-string v5, "!!!!! return false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setFilterColumnsList()V
    .locals 4

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mFilterColumns:Ljava/util/List;

    .line 279
    .local v0, columns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 281
    const-string v1, "RingtonePickerInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##########################################"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget v1, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentType:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentType:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentType:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentType:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1

    .line 283
    :cond_0
    const-string v1, "RingtonePickerInfo"

    const-string v2, "##################columns.add(MediaStore.Audio.AudioColumns.IS_RINGTONE)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-string v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_1
    iget v1, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentType:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentType:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentType:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_3

    .line 288
    :cond_2
    const-string v1, "RingtonePickerInfo"

    const-string v2, "##################columns.add(MediaStore.Audio.AudioColumns.IS_NOTIFICATION)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_3
    iget v1, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentType:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 293
    const-string v1, "is_alarm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_4
    return-void
.end method

.method public setIncludeDrm(Z)V
    .locals 0
    .parameter "includeDrm"

    .prologue
    .line 446
    iput-boolean p1, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mIncludeDrm:Z

    .line 447
    return-void
.end method

.method public setParentType(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 171
    iput p1, p0, Lcom/android/lgesettings/RingtonePickerInfo;->mParentType:I

    .line 172
    return-void
.end method
