.class public Lcom/lge/camera/controller/EnteringViewController;
.super Ljava/lang/Object;
.source "EnteringViewController.java"


# static fields
.field private static mEngeringViewController:Lcom/lge/camera/controller/EnteringViewController;


# instance fields
.field public mDoNotShowAgain:Z

.field private mEnteringView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/camera/controller/EnteringViewController;->mEngeringViewController:Lcom/lge/camera/controller/EnteringViewController;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/View;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/EnteringViewController;->mDoNotShowAgain:Z

    return-void
.end method

.method public static get()Lcom/lge/camera/controller/EnteringViewController;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/lge/camera/controller/EnteringViewController;->mEngeringViewController:Lcom/lge/camera/controller/EnteringViewController;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/lge/camera/controller/EnteringViewController;

    invoke-direct {v0}, Lcom/lge/camera/controller/EnteringViewController;-><init>()V

    sput-object v0, Lcom/lge/camera/controller/EnteringViewController;->mEngeringViewController:Lcom/lge/camera/controller/EnteringViewController;

    .line 38
    :cond_0
    sget-object v0, Lcom/lge/camera/controller/EnteringViewController;->mEngeringViewController:Lcom/lge/camera/controller/EnteringViewController;

    return-object v0
.end method

.method public static isAllCheckDoNotShowAgain(Landroid/app/Activity;)Z
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 172
    const-string v2, "Main_CameraAppConfig"

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 173
    .local v0, pref:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_13

    const-string v2, "entering_guide"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "hdr"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "beauty_shot"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "timemachine"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "voice_photo"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "live_effect"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "panorama"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFreePanoramaSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "free_panorama"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFreePanoramaSupported()Z

    move-result v2

    if-nez v2, :cond_13

    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "burst"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string v2, "continuous"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportSmartMode()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "smart_camera_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportSmartMode()Z

    move-result v2

    if-nez v2, :cond_13

    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isWDRSupported()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isHDRRecordingNameUsed()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "hdr_movie"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isHDRRecordingNameUsed()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "wdr"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isWDRSupported()Z

    move-result v2

    if-nez v2, :cond_13

    :cond_8
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualRecordingSupported()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "dual_recording"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualRecordingSupported()Z

    move-result v2

    if-nez v2, :cond_13

    :cond_a
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualCameraSupported()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "dual_camera"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualCameraSupported()Z

    move-result v2

    if-nez v2, :cond_13

    :cond_c
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "audiozoom"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_d
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v2

    if-nez v2, :cond_13

    :cond_e
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isClearShotSupported()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "clear_shot"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isClearShotSupported()Z

    move-result v2

    if-nez v2, :cond_13

    :cond_10
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isSmartZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "smart_zoom"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_11
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isSmartZoomSupported()Z

    move-result v2

    if-nez v2, :cond_13

    .line 202
    :cond_12
    const-string v1, "CameraApp"

    const-string v2, "help-setting isAllCheckDoNotShowAgain all checked"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v1, 0x1

    .line 206
    :goto_0
    return v1

    .line 205
    :cond_13
    const-string v2, "CameraApp"

    const-string v3, "help-setting isAllCheckDoNotShowAgain not all checked"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeGuide(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 116
    const v1, 0x7f0900c1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 117
    .local v0, vg:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 120
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/View;

    .line 121
    const-string v1, "CameraApp"

    const-string v2, "showQuickMenuEnteringGuide-gone"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method private resetDoNotShowCheck(Landroid/app/Activity;Z)V
    .locals 5
    .parameter "activity"
    .parameter "isCheck"

    .prologue
    .line 125
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 126
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 128
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "help-setting resetDoNotShowCheck "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v2, "entering_guide"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 130
    const-string v2, "hdr"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 131
    const-string v2, "beauty_shot"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 132
    const-string v2, "timemachine"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 133
    const-string v2, "voice_photo"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 134
    const-string v2, "live_effect"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 135
    const-string v2, "panorama"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFreePanoramaSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    const-string v2, "free_panorama"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 139
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 140
    const-string v2, "burst"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 144
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportSmartMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    const-string v2, "smart_camera_mode"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 147
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isWDRSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isHDRRecordingNameUsed()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 149
    const-string v2, "hdr_movie"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 154
    :cond_2
    :goto_1
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualRecordingSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 155
    const-string v2, "dual_recording"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 157
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualCameraSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 158
    const-string v2, "dual_camera"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 160
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isClearShotSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 161
    const-string v2, "clear_shot"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 163
    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isSmartZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 164
    const-string v2, "smart_zoom"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 168
    :cond_6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 169
    return-void

    .line 142
    :cond_7
    const-string v2, "continuous"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 151
    :cond_8
    const-string v2, "wdr"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method private rotateLayout(Landroid/app/Activity;II)V
    .locals 4
    .parameter "activity"
    .parameter "resId"
    .parameter "degree"

    .prologue
    .line 341
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 342
    .local v1, rl:Lcom/lge/camera/components/RotateLayout;
    if-eqz v1, :cond_0

    .line 343
    invoke-virtual {v1, p3}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .end local v1           #rl:Lcom/lge/camera/components/RotateLayout;
    :cond_0
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "CameraApp"

    const-string v3, "ClassCastException:"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private rotateLayoutWithMargin(Landroid/app/Activity;II)V
    .locals 17
    .parameter "activity"
    .parameter "resId"
    .parameter "degree"

    .prologue
    .line 492
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/lge/camera/components/RotateLayout;

    .line 494
    .local v12, rl:Lcom/lge/camera/components/RotateLayout;
    if-nez v12, :cond_1

    .line 551
    .end local v12           #rl:Lcom/lge/camera/components/RotateLayout;
    :cond_0
    :goto_0
    return-void

    .line 498
    .restart local v12       #rl:Lcom/lge/camera/components/RotateLayout;
    :cond_1
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Lcom/lge/camera/components/RotateLayout;->measure(II)V

    .line 499
    invoke-virtual {v12}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 500
    .local v13, rlp:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v13, :cond_0

    .line 501
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f0a0008

    invoke-static/range {v15 .. v16}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v7

    .line 502
    .local v7, lcdWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f0a0009

    invoke-static/range {v15 .. v16}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v6

    .line 504
    .local v6, lcdHeight:I
    const/4 v1, 0x0

    .line 505
    .local v1, adjLong:I
    const/4 v2, 0x0

    .line 506
    .local v2, adjShort:I
    invoke-virtual {v12}, Lcom/lge/camera/components/RotateLayout;->getMeasuredWidth()I

    move-result v10

    .line 507
    .local v10, measureWidth:I
    invoke-virtual {v12}, Lcom/lge/camera/components/RotateLayout;->getMeasuredHeight()I

    move-result v9

    .line 508
    .local v9, measureHeight:I
    if-lt v10, v9, :cond_2

    .line 509
    move v1, v10

    .line 510
    move v2, v9

    .line 516
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 517
    .local v4, context:Landroid/content/Context;
    const/4 v8, 0x0

    .local v8, leftMargin:I
    const/4 v14, 0x0

    .local v14, topMargin:I
    const/4 v11, 0x0

    .local v11, rightMargin:I
    const/4 v3, 0x0

    .line 518
    .local v3, bottomMargin:I
    packed-switch p2, :pswitch_data_0

    .line 533
    :goto_2
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static {v15}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 534
    iput v8, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 535
    iput v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 536
    iput v11, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 537
    iput v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 545
    :goto_3
    invoke-virtual {v12, v13}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 546
    move/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 548
    .end local v1           #adjLong:I
    .end local v2           #adjShort:I
    .end local v3           #bottomMargin:I
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #lcdHeight:I
    .end local v7           #lcdWidth:I
    .end local v8           #leftMargin:I
    .end local v9           #measureHeight:I
    .end local v10           #measureWidth:I
    .end local v11           #rightMargin:I
    .end local v12           #rl:Lcom/lge/camera/components/RotateLayout;
    .end local v13           #rlp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v14           #topMargin:I
    :catch_0
    move-exception v5

    .line 549
    .local v5, e:Ljava/lang/Exception;
    const-string v15, "CameraApp"

    const-string v16, "Exception:"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 512
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v1       #adjLong:I
    .restart local v2       #adjShort:I
    .restart local v6       #lcdHeight:I
    .restart local v7       #lcdWidth:I
    .restart local v9       #measureHeight:I
    .restart local v10       #measureWidth:I
    .restart local v12       #rl:Lcom/lge/camera/components/RotateLayout;
    .restart local v13       #rlp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    move v1, v9

    .line 513
    move v2, v10

    goto :goto_1

    .line 520
    .restart local v3       #bottomMargin:I
    .restart local v4       #context:Landroid/content/Context;
    .restart local v8       #leftMargin:I
    .restart local v11       #rightMargin:I
    .restart local v14       #topMargin:I
    :pswitch_0
    const v15, 0x7f0a020d

    :try_start_1
    invoke-static {v4, v15}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v11

    .line 521
    const v15, 0x7f0a020e

    invoke-static {v4, v15}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v14

    .line 522
    sub-int v15, v7, v11

    sub-int v8, v15, v1

    .line 523
    sub-int v15, v6, v14

    sub-int v3, v15, v2

    .line 524
    goto :goto_2

    .line 526
    :pswitch_1
    const v15, 0x7f0a020f

    invoke-static {v4, v15}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v11

    .line 527
    const v15, 0x7f0a0210

    invoke-static {v4, v15}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v14

    .line 528
    sub-int v15, v7, v11

    sub-int v8, v15, v1

    .line 529
    sub-int v15, v6, v14

    sub-int v3, v15, v2

    goto :goto_2

    .line 539
    :cond_3
    iput v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 540
    iput v8, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 541
    iput v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 542
    iput v11, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 518
    :pswitch_data_0
    .packed-switch 0x7f09007f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private rotateTextLayout(Landroid/app/Activity;II)V
    .locals 20
    .parameter "activity"
    .parameter "resId"
    .parameter "degree"

    .prologue
    .line 352
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/lge/camera/components/RotateLayout;

    .line 354
    .local v14, rl:Lcom/lge/camera/components/RotateLayout;
    if-nez v14, :cond_1

    .line 488
    .end local v14           #rl:Lcom/lge/camera/components/RotateLayout;
    :cond_0
    :goto_0
    return-void

    .line 358
    .restart local v14       #rl:Lcom/lge/camera/components/RotateLayout;
    :cond_1
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Lcom/lge/camera/components/RotateLayout;->measure(II)V

    .line 359
    invoke-virtual {v14}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 360
    .local v15, rlp:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v15, :cond_0

    .line 361
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f0a0008

    invoke-static/range {v18 .. v19}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v9

    .line 362
    .local v9, lcdWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f0a0009

    invoke-static/range {v18 .. v19}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v8

    .line 364
    .local v8, lcdHeight:I
    const/4 v2, 0x0

    .local v2, adjLong:I
    const/4 v3, 0x0

    .line 365
    .local v3, adjShort:I
    invoke-virtual {v14}, Lcom/lge/camera/components/RotateLayout;->getMeasuredWidth()I

    move-result v12

    .line 366
    .local v12, measureWidth:I
    invoke-virtual {v14}, Lcom/lge/camera/components/RotateLayout;->getMeasuredHeight()I

    move-result v11

    .line 367
    .local v11, measureHeight:I
    if-lt v12, v11, :cond_5

    .line 368
    move v2, v12

    .line 369
    move v3, v11

    .line 375
    :goto_1
    invoke-static {v15}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 376
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 377
    .local v5, context:Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/lge/camera/util/Util;->convertDegree(Landroid/content/res/Resources;I)I

    move-result v6

    .line 378
    .local v6, convDegree:I
    const/4 v10, 0x0

    .local v10, leftMargin:I
    const/16 v16, 0x0

    .local v16, topMargin:I
    const/4 v13, 0x0

    .local v13, rightMargin:I
    const/4 v4, 0x0

    .line 379
    .local v4, bottomMargin:I
    sparse-switch v6, :sswitch_data_0

    .line 459
    :cond_2
    :goto_2
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 460
    iput v10, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 461
    move/from16 v0, v16

    iput v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 462
    iput v13, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 463
    iput v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 471
    :goto_3
    const v18, 0x7f090081

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 472
    const v18, 0x7f090082

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 473
    .local v17, tv:Landroid/widget/TextView;
    if-eqz v17, :cond_4

    .line 474
    if-eqz v6, :cond_3

    const/16 v18, 0x10e

    move/from16 v0, v18

    if-ne v6, v0, :cond_14

    .line 475
    :cond_3
    const/16 v18, 0x5

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setGravity(I)V

    .line 482
    .end local v17           #tv:Landroid/widget/TextView;
    :cond_4
    :goto_4
    invoke-virtual {v14, v15}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    move/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 485
    .end local v2           #adjLong:I
    .end local v3           #adjShort:I
    .end local v4           #bottomMargin:I
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #convDegree:I
    .end local v8           #lcdHeight:I
    .end local v9           #lcdWidth:I
    .end local v10           #leftMargin:I
    .end local v11           #measureHeight:I
    .end local v12           #measureWidth:I
    .end local v13           #rightMargin:I
    .end local v14           #rl:Lcom/lge/camera/components/RotateLayout;
    .end local v15           #rlp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16           #topMargin:I
    :catch_0
    move-exception v7

    .line 486
    .local v7, e:Ljava/lang/Exception;
    const-string v18, "CameraApp"

    const-string v19, "Exception:"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 371
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v2       #adjLong:I
    .restart local v3       #adjShort:I
    .restart local v8       #lcdHeight:I
    .restart local v9       #lcdWidth:I
    .restart local v11       #measureHeight:I
    .restart local v12       #measureWidth:I
    .restart local v14       #rl:Lcom/lge/camera/components/RotateLayout;
    .restart local v15       #rlp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    move v2, v11

    .line 372
    move v3, v12

    goto :goto_1

    .line 382
    .restart local v4       #bottomMargin:I
    .restart local v5       #context:Landroid/content/Context;
    .restart local v6       #convDegree:I
    .restart local v10       #leftMargin:I
    .restart local v13       #rightMargin:I
    .restart local v16       #topMargin:I
    :sswitch_0
    const v18, 0x7f09007b

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 383
    const v18, 0x7f0a0209

    :try_start_1
    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v10

    .line 384
    const v18, 0x7f0a020a

    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v16

    .line 385
    const/4 v13, 0x0

    .line 386
    const/4 v4, 0x0

    .line 387
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 388
    const/16 v18, 0x9

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_2

    .line 390
    :cond_6
    const/16 v18, 0xb

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_2

    .line 392
    :cond_7
    const v18, 0x7f090083

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 393
    const v18, 0x7f0a0214

    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v16

    .line 394
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 395
    const/16 v18, 0xe

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 396
    const/16 v18, 0xa

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_2

    .line 398
    :cond_8
    const/16 v18, 0xf

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 399
    const/16 v18, 0xb

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_2

    .line 401
    :cond_9
    const v18, 0x7f090081

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 402
    const v18, 0x7f0a0211

    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v13

    .line 403
    const v18, 0x7f0a0212

    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v16

    .line 404
    sub-int v18, v9, v13

    sub-int v10, v18, v2

    .line 405
    sub-int v18, v8, v16

    sub-int v4, v18, v3

    .line 406
    const/16 v18, 0xb

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_2

    .line 407
    :cond_a
    const v18, 0x7f090085

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 408
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 409
    const/16 v18, 0xe

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 410
    const v18, 0x7f0a021a

    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v16

    goto/16 :goto_2

    .line 412
    :cond_b
    const/16 v18, 0xf

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 413
    const/16 v18, 0xb

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 414
    const v18, 0x7f0a021a

    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v16

    goto/16 :goto_2

    .line 420
    :sswitch_1
    const v18, 0x7f09007b

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 421
    const v18, 0x7f0a0209

    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v18

    add-int v10, v18, v3

    .line 422
    const v18, 0x7f0a020a

    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v18

    div-int/lit8 v19, v2, 0x2

    sub-int v16, v18, v19

    .line 423
    const/4 v13, 0x0

    .line 424
    const/4 v4, 0x0

    .line 425
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 426
    const/16 v18, 0x9

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_2

    .line 428
    :cond_c
    const/16 v18, 0xb

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_2

    .line 430
    :cond_d
    const v18, 0x7f090083

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 431
    const/16 v18, 0xd

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_2

    .line 432
    :cond_e
    const v18, 0x7f090081

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 433
    const v18, 0x7f0a0211

    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v18

    add-int v13, v18, v3

    .line 434
    sub-int v18, v8, v2

    div-int/lit8 v16, v18, 0x2

    .line 435
    if-gez v16, :cond_f

    .line 436
    const/16 v16, 0x0

    .line 438
    :cond_f
    sub-int v18, v9, v13

    mul-int/lit8 v19, v3, 0x2

    sub-int v10, v18, v19

    .line 439
    move/from16 v4, v16

    .line 440
    const/16 v18, 0xb

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_2

    .line 441
    :cond_10
    const v18, 0x7f090085

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 442
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 443
    const v18, 0x7f0a021b

    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v10

    goto/16 :goto_2

    .line 445
    :cond_11
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v18

    const/16 v19, 0xe

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    .line 447
    const/16 v18, 0xe

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 452
    :goto_5
    const v18, 0x7f0a021b

    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v10

    goto/16 :goto_2

    .line 450
    :cond_12
    const/16 v18, 0xb

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_5

    .line 465
    :cond_13
    iput v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 466
    iput v10, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 467
    move/from16 v0, v16

    iput v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 468
    iput v13, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_3

    .line 477
    .restart local v17       #tv:Landroid/widget/TextView;
    :cond_14
    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setGravity(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 379
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public static setCameraHelpSetting(Landroid/app/Activity;Z)V
    .locals 5
    .parameter "activity"
    .parameter "set"

    .prologue
    .line 221
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportHelpSetting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 223
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 224
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "help_setting"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 225
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 226
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "help-setting setCameraHelpSetting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static setSystemHelpSettingOff(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 210
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportHelpSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-static {p0}, Lcom/lge/camera/controller/EnteringViewController;->isAllCheckDoNotShowAgain(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const-string v0, "CameraApp"

    const-string v1, "help-setting setSystemHelpSettingOff "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "help_settings_camera_tips"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 214
    invoke-static {p0, v2}, Lcom/lge/camera/controller/EnteringViewController;->setCameraHelpSetting(Landroid/app/Activity;Z)V

    .line 218
    :cond_0
    return-void
.end method

.method private showGuide(Landroid/app/Activity;Lcom/lge/camera/controller/QuickFunctionController;I)V
    .locals 21
    .parameter "activity"
    .parameter "qfl"
    .parameter "degree"

    .prologue
    .line 47
    const v19, 0x7f0900c1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup;

    .line 48
    .local v18, vg:Landroid/view/ViewGroup;
    const-string v19, "layout_inflater"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 49
    .local v8, li:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 50
    const v19, 0x7f03000d

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/View;

    .line 52
    :cond_0
    if-eqz v18, :cond_2

    .line 53
    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    if-eqz v19, :cond_1

    .line 54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 56
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    :cond_2
    invoke-virtual/range {p0 .. p2}, Lcom/lge/camera/controller/EnteringViewController;->setEnteringViewQFLImages(Landroid/app/Activity;Lcom/lge/camera/controller/QuickFunctionController;)V

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 60
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/camera/controller/EnteringViewController;->mDoNotShowAgain:Z

    .line 62
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportCameraCleanGuide()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const v20, 0x7f0a0009

    invoke-static/range {v19 .. v20}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v7

    .line 64
    .local v7, lcdHeight:I
    const v19, 0x7f0a0215

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v6

    .line 65
    .local v6, cleanTextTopMargin:I
    const v19, 0x7f0a0216

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v5

    .line 66
    .local v5, cleanTextBottomMargin:I
    sub-int v19, v7, v6

    sub-int v13, v19, v5

    .line 68
    .local v13, textWidth:I
    const v19, 0x7f090083

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 69
    const v19, 0x7f090084

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 70
    .local v15, tv:Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b0308

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 71
    .local v9, message:Ljava/lang/String;
    invoke-virtual {v15}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v9, v13}, Lcom/lge/camera/util/Common;->breakTextToMultiLine(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, breakString:Ljava/lang/String;
    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .end local v3           #breakString:Ljava/lang/String;
    .end local v5           #cleanTextBottomMargin:I
    .end local v6           #cleanTextTopMargin:I
    .end local v7           #lcdHeight:I
    .end local v9           #message:Ljava/lang/String;
    .end local v13           #textWidth:I
    .end local v15           #tv:Landroid/widget/TextView;
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportCameraHandGuide()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 75
    const v19, 0x7f090079

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 76
    const v19, 0x7f090080

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 78
    :cond_4
    const v19, 0x7f090159

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 79
    .local v14, thumbnailView:Landroid/view/View;
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v19

    if-eqz v19, :cond_5

    .line 80
    const v19, 0x7f09007e

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 81
    const v19, 0x7f09007f

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 82
    const v19, 0x7f090080

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 83
    const v19, 0x7f090081

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v19

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 87
    const v19, 0x7f09006e

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 89
    const v19, 0x7f090077

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 91
    const v19, 0x7f09007a

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 93
    const v19, 0x7f09007b

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 95
    const v19, 0x7f090086

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 96
    .local v4, button:Landroid/widget/Button;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b002e

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 97
    .local v10, msg:Ljava/lang/String;
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v19, 0x7f09007c

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 100
    .local v16, tv1:Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b030c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 101
    .local v11, msg1:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const v19, 0x7f090082

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 104
    .local v17, tv2:Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b030b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 105
    .local v12, msg2:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .end local v4           #button:Landroid/widget/Button;
    .end local v10           #msg:Ljava/lang/String;
    .end local v11           #msg1:Ljava/lang/String;
    .end local v12           #msg2:Ljava/lang/String;
    .end local v16           #tv1:Landroid/widget/TextView;
    .end local v17           #tv2:Landroid/widget/TextView;
    :cond_6
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportHelpSetting()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 110
    const v19, 0x7f090085

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/EnteringViewController;->enteringGuideRotate(Landroid/app/Activity;I)V

    .line 113
    return-void
.end method


# virtual methods
.method public enteringGuideRotate(Landroid/app/Activity;I)V
    .locals 2
    .parameter "activity"
    .parameter "degree"

    .prologue
    .line 319
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/EnteringViewController;->isEnteringViewShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    const v1, 0x7f09006f

    invoke-direct {p0, p1, v1, p2}, Lcom/lge/camera/controller/EnteringViewController;->rotateLayout(Landroid/app/Activity;II)V

    .line 321
    const v1, 0x7f090071

    invoke-direct {p0, p1, v1, p2}, Lcom/lge/camera/controller/EnteringViewController;->rotateLayout(Landroid/app/Activity;II)V

    .line 322
    const v1, 0x7f090073

    invoke-direct {p0, p1, v1, p2}, Lcom/lge/camera/controller/EnteringViewController;->rotateLayout(Landroid/app/Activity;II)V

    .line 323
    const v1, 0x7f090075

    invoke-direct {p0, p1, v1, p2}, Lcom/lge/camera/controller/EnteringViewController;->rotateLayout(Landroid/app/Activity;II)V

    .line 324
    const v1, 0x7f09007b

    invoke-direct {p0, p1, v1, p2}, Lcom/lge/camera/controller/EnteringViewController;->rotateTextLayout(Landroid/app/Activity;II)V

    .line 325
    const v1, 0x7f090081

    invoke-direct {p0, p1, v1, p2}, Lcom/lge/camera/controller/EnteringViewController;->rotateTextLayout(Landroid/app/Activity;II)V

    .line 326
    const v1, 0x7f090083

    invoke-direct {p0, p1, v1, p2}, Lcom/lge/camera/controller/EnteringViewController;->rotateTextLayout(Landroid/app/Activity;II)V

    .line 328
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 329
    .local v0, constDegree:I
    :goto_0
    const v1, 0x7f090079

    invoke-direct {p0, p1, v1, v0}, Lcom/lge/camera/controller/EnteringViewController;->rotateLayout(Landroid/app/Activity;II)V

    .line 330
    const v1, 0x7f09007a

    invoke-direct {p0, p1, v1, v0}, Lcom/lge/camera/controller/EnteringViewController;->rotateLayout(Landroid/app/Activity;II)V

    .line 332
    const v1, 0x7f09007f

    invoke-direct {p0, p1, v1, v0}, Lcom/lge/camera/controller/EnteringViewController;->rotateLayoutWithMargin(Landroid/app/Activity;II)V

    .line 333
    const v1, 0x7f090080

    invoke-direct {p0, p1, v1, v0}, Lcom/lge/camera/controller/EnteringViewController;->rotateLayoutWithMargin(Landroid/app/Activity;II)V

    .line 335
    const v1, 0x7f090085

    invoke-direct {p0, p1, v1, p2}, Lcom/lge/camera/controller/EnteringViewController;->rotateTextLayout(Landroid/app/Activity;II)V

    .line 337
    .end local v0           #constDegree:I
    :cond_0
    return-void

    .line 328
    :cond_1
    const/16 v0, 0x10e

    goto :goto_0
.end method

.method public hideOnPauseEnteringGuide(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 288
    if-nez p1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 292
    .local v0, pref:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    const-string v1, "entering_guide"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/EnteringViewController;->removeGuide(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public isEnteringViewShowing()Z
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnteringViewQFLImages(Landroid/app/Activity;Lcom/lge/camera/controller/QuickFunctionController;)V
    .locals 5
    .parameter "activity"
    .parameter "qfl"

    .prologue
    .line 298
    iget-object v4, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/View;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 299
    const v4, 0x7f090070

    invoke-virtual {p1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 300
    .local v0, circle1:Landroid/widget/ImageView;
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lcom/lge/camera/controller/QuickFunctionController;->getMenuIconResource(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 301
    invoke-static {}, Lcom/lge/camera/util/ColorUtil;->getEnteringQFLColor()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 302
    const v4, 0x7f090072

    invoke-virtual {p1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 303
    .local v1, circle2:Landroid/widget/ImageView;
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lcom/lge/camera/controller/QuickFunctionController;->getMenuIconResource(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    invoke-static {}, Lcom/lge/camera/util/ColorUtil;->getEnteringQFLColor()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 305
    const v4, 0x7f090074

    invoke-virtual {p1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 306
    .local v2, circle3:Landroid/widget/ImageView;
    const/4 v4, 0x2

    invoke-virtual {p2, v4}, Lcom/lge/camera/controller/QuickFunctionController;->getMenuIconResource(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 307
    invoke-static {}, Lcom/lge/camera/util/ColorUtil;->getEnteringQFLColor()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 308
    const v4, 0x7f090076

    invoke-virtual {p1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 309
    .local v3, circle4:Landroid/widget/ImageView;
    const/4 v4, 0x3

    invoke-virtual {p2, v4}, Lcom/lge/camera/controller/QuickFunctionController;->getMenuIconResource(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 310
    invoke-static {}, Lcom/lge/camera/util/ColorUtil;->getEnteringQFLColor()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 312
    .end local v0           #circle1:Landroid/widget/ImageView;
    .end local v1           #circle2:Landroid/widget/ImageView;
    .end local v2           #circle3:Landroid/widget/ImageView;
    .end local v3           #circle4:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method public showQuickMenuEnteringGuide(Landroid/app/Activity;Lcom/lge/camera/controller/QuickFunctionController;ZI)V
    .locals 8
    .parameter "activity"
    .parameter "qfl"
    .parameter "isShow"
    .parameter "degree"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 233
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "help_settings_camera_tips"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 234
    .local v1, help_setting:I
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "help_settings_camera_refresh"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 235
    .local v3, refresh_help:I
    const-string v4, "Main_CameraAppConfig"

    invoke-virtual {p1, v4, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 237
    .local v2, pref:Landroid/content/SharedPreferences;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez v2, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportHelpSetting()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 242
    if-ne v1, v7, :cond_4

    if-eq v3, v7, :cond_2

    const-string v4, "help_setting"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_4

    .line 244
    :cond_2
    const-string v4, "CameraApp"

    const-string v5, "showQuickMenuEnteringGuide DB state change off=>on"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/controller/EnteringViewController;->resetDoNotShowCheck(Landroid/app/Activity;Z)V

    .line 246
    invoke-static {p1, v7}, Lcom/lge/camera/controller/EnteringViewController;->setCameraHelpSetting(Landroid/app/Activity;Z)V

    .line 252
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "help_settings_camera_refresh"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 255
    const-string v4, "entering_guide"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 256
    if-eqz p3, :cond_5

    .line 257
    invoke-direct {p0, p1, p2, p4}, Lcom/lge/camera/controller/EnteringViewController;->showGuide(Landroid/app/Activity;Lcom/lge/camera/controller/QuickFunctionController;I)V

    goto :goto_0

    .line 247
    :cond_4
    if-nez v1, :cond_3

    const-string v4, "help_setting"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 248
    const-string v4, "CameraApp"

    const-string v5, "showQuickMenuEnteringGuide DB state change on=>off"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-direct {p0, p1, v7}, Lcom/lge/camera/controller/EnteringViewController;->resetDoNotShowCheck(Landroid/app/Activity;Z)V

    .line 250
    invoke-static {p1, v6}, Lcom/lge/camera/controller/EnteringViewController;->setCameraHelpSetting(Landroid/app/Activity;Z)V

    goto :goto_1

    .line 259
    :cond_5
    iget-object v4, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 260
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/EnteringViewController;->removeGuide(Landroid/app/Activity;)V

    .line 261
    iget-boolean v4, p0, Lcom/lge/camera/controller/EnteringViewController;->mDoNotShowAgain:Z

    if-eqz v4, :cond_0

    .line 262
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 263
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v4, "entering_guide"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 264
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 265
    invoke-static {p1}, Lcom/lge/camera/controller/EnteringViewController;->setSystemHelpSettingOff(Landroid/app/Activity;)V

    goto :goto_0

    .line 271
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    :cond_6
    const-string v4, "entering_guide"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 272
    if-eqz p3, :cond_7

    .line 273
    invoke-direct {p0, p1, p2, p4}, Lcom/lge/camera/controller/EnteringViewController;->showGuide(Landroid/app/Activity;Lcom/lge/camera/controller/QuickFunctionController;I)V

    goto :goto_0

    .line 275
    :cond_7
    iget-object v4, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 276
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/EnteringViewController;->removeGuide(Landroid/app/Activity;)V

    .line 278
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 279
    .restart local v0       #edit:Landroid/content/SharedPreferences$Editor;
    const-string v4, "entering_guide"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 280
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method public unbind()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    sput-object v0, Lcom/lge/camera/controller/EnteringViewController;->mEngeringViewController:Lcom/lge/camera/controller/EnteringViewController;

    .line 43
    iput-object v0, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/View;

    .line 44
    return-void
.end method
