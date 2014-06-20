.class public Lcom/lge/camera/util/SharedPreferenceUtil;
.super Ljava/lang/Object;
.source "SharedPreferenceUtil.java"


# static fields
.field private static final ERROR_VALUE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccumulatedDCFCount(Landroid/content/Context;)J
    .locals 4
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 87
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "dcf_count"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getAccumulatedDCFDigit(Landroid/content/Context;)I
    .locals 4
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    .line 99
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 100
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "dcf_digit"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getAccumulatedDCFFirstCount(Landroid/content/Context;)I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 93
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 94
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "dcf_first_number"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getAccumulatedPictureCount(Landroid/content/Context;I)J
    .locals 5
    .parameter "c"
    .parameter "storage"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 32
    const/4 v1, 0x0

    .line 33
    .local v1, storageString:Ljava/lang/String;
    if-ne p1, v3, :cond_0

    .line 34
    const-string v1, "internal"

    .line 39
    :goto_0
    const-string v2, "Main_CameraAppConfig"

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 40
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "picture_number_%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2

    .line 36
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :cond_0
    const-string v1, "external"

    goto :goto_0
.end method

.method public static getAccumulatedVideoCount(Landroid/content/Context;I)J
    .locals 5
    .parameter "c"
    .parameter "storage"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, storageString:Ljava/lang/String;
    if-ne p1, v3, :cond_0

    .line 106
    const-string v1, "internal"

    .line 111
    :goto_0
    const-string v2, "Main_CameraAppConfig"

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 112
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "video_number_%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2

    .line 108
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :cond_0
    const-string v1, "external"

    goto :goto_0
.end method

.method public static getDualCamcorderPIPIndex(Landroid/content/Context;)I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 352
    if-eqz p0, :cond_0

    .line 353
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 354
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "dual_camcorder_pip_index"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 356
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getDualCameraPIPIndex(Landroid/content/Context;)I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 316
    if-eqz p0, :cond_0

    .line 317
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 318
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "dual_camera_pip_index"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 320
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getFrontDualCamcorderPIPIndex(Landroid/content/Context;)I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 369
    if-eqz p0, :cond_0

    .line 370
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 371
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "front_dual_camcorder_pip_index"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 373
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getFrontDualCameraPIPIndex(Landroid/content/Context;)I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 334
    if-eqz p0, :cond_0

    .line 335
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 337
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "front_dual_camera_pip_index"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 339
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getFrontLiveEffectFaceIndex(Landroid/content/Context;)I
    .locals 3
    .parameter "c"

    .prologue
    .line 299
    if-eqz p0, :cond_0

    .line 300
    const-string v1, "Main_CameraAppConfig"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 301
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "front_live_effect_face_index"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 303
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getFrontSmartZoomPIPIndex(Landroid/content/Context;)I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 403
    if-eqz p0, :cond_0

    .line 404
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 405
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "front_smartZoom_pip_index"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 407
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getLastCameraMode(Landroid/content/Context;)I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 116
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 117
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "entermode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getLastPicturePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "c"

    .prologue
    .line 212
    const-string v1, "Main_CameraAppConfig"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 213
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "thumbnail_path_camera"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLastPictureUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "c"

    .prologue
    .line 202
    const-string v1, "Main_CameraAppConfig"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 203
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "thumbnail_uri_camera"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLastSecondaryCameraMode(Landroid/content/Context;)I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 121
    const-string v1, "Secondary_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 122
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "entermode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getLastVideoPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "c"

    .prologue
    .line 217
    const-string v1, "Main_CameraAppConfig"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 218
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "thumbnail_path_camcorder"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLastVideoUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "c"

    .prologue
    .line 207
    const-string v1, "Main_CameraAppConfig"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 208
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "thumbnail_uri_camcorder"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLiveEffectFaceIndex(Landroid/content/Context;)I
    .locals 3
    .parameter "c"

    .prologue
    .line 282
    if-eqz p0, :cond_0

    .line 283
    const-string v1, "Main_CameraAppConfig"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 284
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "live_effect_face_index"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 286
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getShutterSoundIndex(Landroid/content/Context;)I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 222
    if-eqz p0, :cond_0

    .line 223
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 224
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "shutter_sound_index"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 226
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getSmartZoomPIPIndex(Landroid/content/Context;)I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 386
    if-eqz p0, :cond_0

    .line 387
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 388
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "smartZoom_pip_index"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 390
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getVideoSizeIndexAtPrimaryNormalMode(Landroid/content/Context;)I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 248
    if-eqz p0, :cond_0

    .line 249
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 250
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "video_size_at_normal"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 252
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getVideoSizeIndexAtSecondaryNormalMode(Landroid/content/Context;)I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 265
    if-eqz p0, :cond_0

    .line 266
    const-string v1, "Secondary_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 267
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "video_size_at_normal"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 269
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static saveAccumulatedDCFCount(Landroid/content/Context;J)V
    .locals 5
    .parameter "c"
    .parameter "count"

    .prologue
    const/4 v3, 0x0

    .line 60
    const-string v2, "Main_CameraAppConfig"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 61
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 62
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "dcf_count"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saved counter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static saveAccumulatedDCFDigit(Landroid/content/Context;I)V
    .locals 5
    .parameter "c"
    .parameter "digit"

    .prologue
    const/4 v3, 0x0

    .line 78
    const-string v2, "Main_CameraAppConfig"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 79
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "dcf_digit"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saved counter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static saveAccumulatedDCFFirstCount(Landroid/content/Context;I)V
    .locals 5
    .parameter "c"
    .parameter "firstCount"

    .prologue
    const/4 v3, 0x0

    .line 69
    const-string v2, "Main_CameraAppConfig"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 70
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 71
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "dcf_first_number"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saved counter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static saveAccumulatedPictureCount(Landroid/content/Context;IJ)V
    .locals 6
    .parameter "c"
    .parameter "storage"
    .parameter "count"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    .local v2, storageString:Ljava/lang/String;
    if-ne p1, v4, :cond_0

    .line 19
    const-string v2, "internal"

    .line 24
    :goto_0
    const-string v3, "Main_CameraAppConfig"

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 25
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 26
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "picture_number_%s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 27
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 28
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saved picture counter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void

    .line 21
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    const-string v2, "external"

    goto :goto_0
.end method

.method public static saveAccumulatedVideoCount(Landroid/content/Context;IJ)V
    .locals 6
    .parameter "c"
    .parameter "storage"
    .parameter "count"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 44
    const/4 v2, 0x0

    .line 45
    .local v2, storageString:Ljava/lang/String;
    if-ne p1, v4, :cond_0

    .line 46
    const-string v2, "internal"

    .line 51
    :goto_0
    const-string v3, "Main_CameraAppConfig"

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 52
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 53
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "video_number_%s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 55
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saved video counter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void

    .line 48
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    const-string v2, "external"

    goto :goto_0
.end method

.method public static saveDualCamcorderPIPIndex(Landroid/content/Context;I)V
    .locals 4
    .parameter "c"
    .parameter "index"

    .prologue
    .line 343
    if-eqz p0, :cond_0

    .line 344
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 345
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 346
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "dual_camcorder_pip_index"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 347
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 349
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static saveDualCameraPIPIndex(Landroid/content/Context;I)V
    .locals 4
    .parameter "c"
    .parameter "index"

    .prologue
    .line 307
    if-eqz p0, :cond_0

    .line 308
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 309
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 310
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "dual_camera_pip_index"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 311
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 313
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static saveFrontDualCamcorderPIPIndex(Landroid/content/Context;I)V
    .locals 4
    .parameter "c"
    .parameter "index"

    .prologue
    .line 360
    if-eqz p0, :cond_0

    .line 361
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 362
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 363
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "front_dual_camcorder_pip_index"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 364
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 366
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static saveFrontDualCameraPIPIndex(Landroid/content/Context;I)V
    .locals 4
    .parameter "c"
    .parameter "index"

    .prologue
    .line 324
    if-eqz p0, :cond_0

    .line 325
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 327
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 328
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "front_dual_camera_pip_index"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 329
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 331
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static saveFrontLiveEffectFaceIndex(Landroid/content/Context;I)V
    .locals 4
    .parameter "c"
    .parameter "index"

    .prologue
    .line 290
    if-eqz p0, :cond_0

    .line 291
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 292
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 293
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "front_live_effect_face_index"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 294
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 296
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static saveFrontSmartZoomPIPIndex(Landroid/content/Context;I)V
    .locals 4
    .parameter "c"
    .parameter "index"

    .prologue
    .line 394
    if-eqz p0, :cond_0

    .line 395
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 396
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 397
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "front_smartZoom_pip_index"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 398
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 400
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static saveLastCameraMode(Landroid/content/Context;I)V
    .locals 4
    .parameter "c"
    .parameter "m"

    .prologue
    .line 126
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 127
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 128
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "entermode"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 129
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 130
    return-void
.end method

.method public static saveLastPicture(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 2
    .parameter "activity"
    .parameter "uri"

    .prologue
    .line 140
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 142
    .local v0, context:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastPictureUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 143
    invoke-static {p0, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, path:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastPicturePath(Landroid/content/Context;Ljava/lang/String;)V

    .line 146
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #path:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static saveLastPicturePath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "c"
    .parameter "path"

    .prologue
    .line 180
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 181
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 182
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 183
    const-string v2, "thumbnail_path_camera"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 188
    return-void

    .line 185
    :cond_0
    const-string v2, "thumbnail_path_camera"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static saveLastPictureUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .parameter "c"
    .parameter "uri"

    .prologue
    .line 158
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 159
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 160
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 161
    const-string v2, "thumbnail_uri_camera"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 166
    return-void

    .line 163
    :cond_0
    const-string v2, "thumbnail_uri_camera"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static saveLastSecondaryCameraMode(Landroid/content/Context;I)V
    .locals 4
    .parameter "c"
    .parameter "m"

    .prologue
    .line 133
    const-string v2, "Secondary_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 134
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 135
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "entermode"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 137
    return-void
.end method

.method public static saveLastVideo(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 2
    .parameter "activity"
    .parameter "uri"

    .prologue
    .line 149
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 151
    .local v0, context:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastVideoUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 152
    invoke-static {p0, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, path:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastVideoPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #path:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static saveLastVideoPath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "c"
    .parameter "path"

    .prologue
    .line 191
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 192
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 193
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 194
    const-string v2, "thumbnail_path_camcorder"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 198
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 199
    return-void

    .line 196
    :cond_0
    const-string v2, "thumbnail_path_camcorder"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static saveLastVideoUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .parameter "c"
    .parameter "uri"

    .prologue
    .line 169
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 170
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 171
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 172
    const-string v2, "thumbnail_uri_camcorder"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 176
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 177
    return-void

    .line 174
    :cond_0
    const-string v2, "thumbnail_uri_camcorder"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static saveLiveEffectFaceIndex(Landroid/content/Context;I)V
    .locals 4
    .parameter "c"
    .parameter "index"

    .prologue
    .line 273
    if-eqz p0, :cond_0

    .line 274
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 275
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 276
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "live_effect_face_index"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 277
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 279
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static saveShutterSoundIndex(Landroid/content/Context;I)V
    .locals 4
    .parameter "c"
    .parameter "index"

    .prologue
    .line 230
    if-eqz p0, :cond_0

    .line 231
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 232
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 233
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "shutter_sound_index"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 234
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 236
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static saveSmartZoomPIPIndex(Landroid/content/Context;I)V
    .locals 4
    .parameter "c"
    .parameter "index"

    .prologue
    .line 377
    if-eqz p0, :cond_0

    .line 378
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 379
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 380
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "smartZoom_pip_index"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 381
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 383
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static saveVideoSizeIndexAtPrimaryNormalMode(Landroid/content/Context;I)V
    .locals 4
    .parameter "c"
    .parameter "index"

    .prologue
    .line 239
    if-eqz p0, :cond_0

    .line 240
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 241
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 242
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "video_size_at_normal"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 243
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 245
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static saveVideoSizeIndexAtSecondaryNormalMode(Landroid/content/Context;I)V
    .locals 4
    .parameter "c"
    .parameter "index"

    .prologue
    .line 256
    if-eqz p0, :cond_0

    .line 257
    const-string v2, "Secondary_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 258
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 259
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "video_size_at_normal"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 260
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 262
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
