.class public Lcom/lge/camera/CameraApp;
.super Lcom/lge/camera/CameraActivity;
.source "CameraApp.java"


# instance fields
.field private mCameraMediator:Lcom/lge/camera/CameraMediator;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/lge/camera/CameraActivity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    .line 36
    sget v0, Lcom/lge/camera/util/Common;->APP_CAMERA_INSTANCE_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/camera/util/Common;->APP_CAMERA_INSTANCE_COUNT:I

    .line 37
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "construct CAMERA app_instance_cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/camera/util/Common;->APP_CAMERA_INSTANCE_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private cameraControllerInit()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->initController()V

    .line 161
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->setLocalSetting()V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->initController()V

    .line 166
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/CameraApp;->cameraUiControllerInit()V

    .line 167
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->setupCaptureParams()V

    .line 168
    return-void
.end method

.method private cameraUiControllerInit()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->initController()V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getQuickFunctionController()Lcom/lge/camera/controller/camera/CameraQuickFunctionController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getQuickFunctionController()Lcom/lge/camera/controller/camera/CameraQuickFunctionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraQuickFunctionController;->initController()V

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->initController()V

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getQuickButtonController()Lcom/lge/camera/controller/QuickButtonController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 184
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getQuickButtonController()Lcom/lge/camera/controller/QuickButtonController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickButtonController;->initController()V

    .line 186
    :cond_3
    return-void
.end method

.method private resultCodeCrop(ILandroid/content/Intent;)V
    .locals 4
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 265
    iget-object v3, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->beDirectlyGoingToCropGallery()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 270
    .local v1, intent:Landroid/content/Intent;
    if-eqz p2, :cond_2

    .line 271
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 272
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 273
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 276
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/lge/camera/CameraApp;->setResult(ILandroid/content/Intent;)V

    .line 277
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->finish()V

    .line 279
    const-string v3, "crop-temp"

    invoke-virtual {p0, v3}, Lcom/lge/camera/CameraApp;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 280
    .local v2, path:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private resultCodeHelp(Landroid/content/Intent;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 284
    const/4 v1, 0x0

    .line 285
    .local v1, strValue:Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v2, :cond_0

    .line 286
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 287
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 288
    const-string v2, "key_camera_timer"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 289
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v2, :cond_0

    .line 290
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v3, "key_camera_timer"

    invoke-virtual {v2, v3, v1}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 294
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_0
    return-void
.end method


# virtual methods
.method protected changeLocalSetting()V
    .locals 5

    .prologue
    .line 194
    iget-object v3, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getFrontPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getBackPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    if-nez v3, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, simOperator:Ljava/lang/String;
    const-string v0, "0"

    .line 203
    .local v0, currentMCC:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 204
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 205
    const-string v3, "466"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    iget-object v3, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getFrontPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    const-string v4, "key_camera_auto_review"

    invoke-virtual {v3, v4}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 207
    .local v1, listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_2

    .line 208
    const-string v3, "on"

    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 210
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getBackPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    const-string v4, "key_camera_auto_review"

    invoke-virtual {v3, v4}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 211
    if-eqz v1, :cond_0

    .line 212
    const-string v3, "on"

    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doPhoneStateListenerAction(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 352
    if-nez p1, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    const-string v1, "key_camera_shot_mode"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/CheckStatusManager;->checkVoiceShutterEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    const-string v1, "com.lge.camera.command.SetVoiceShutterMode"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    const-string v1, "key_voiceshutter"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/Mediator;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 358
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 236
    sget v0, Lcom/lge/camera/util/Common;->APP_CAMERA_INSTANCE_COUNT:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/lge/camera/util/Common;->APP_CAMERA_INSTANCE_COUNT:I

    .line 237
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy CAMERA app_instance_cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/camera/util/Common;->APP_CAMERA_INSTANCE_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 239
    return-void
.end method

.method public getActivity()Lcom/lge/camera/CameraActivity;
    .locals 0

    .prologue
    .line 347
    return-object p0
.end method

.method public getMediator()Lcom/lge/camera/Mediator;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 243
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    sparse-switch p1, :sswitch_data_0

    .line 261
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/lge/camera/CameraActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 262
    return-void

    .line 246
    :sswitch_0
    invoke-direct {p0, p2, p3}, Lcom/lge/camera/CameraApp;->resultCodeCrop(ILandroid/content/Intent;)V

    goto :goto_0

    .line 249
    :sswitch_1
    invoke-direct {p0, p3}, Lcom/lge/camera/CameraApp;->resultCodeHelp(Landroid/content/Intent;)V

    goto :goto_0

    .line 258
    :sswitch_2
    invoke-virtual {p0, p3}, Lcom/lge/camera/CameraApp;->resultForPostview(Landroid/content/Intent;)Z

    goto :goto_0

    .line 244
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    .line 42
    invoke-super {p0, p1}, Lcom/lge/camera/CameraActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-static {p0, v9}, Lcom/lge/camera/util/CheckStatusManager;->checkEnterApplication(Landroid/app/Activity;Z)Z

    move-result v7

    if-nez v7, :cond_0

    .line 45
    const-string v7, "CameraApp"

    const-string v8, "onCreate()-end, checkEnterApplication fail."

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/camera/util/AppControlUtil;->isSecureCameraIntent(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 47
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/lge/camera/util/CheckStatusManager;->setCheckEnterOutSecure(I)V

    .line 48
    sput-boolean v9, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    .line 61
    :cond_0
    new-instance v7, Lcom/lge/camera/CameraMediator;

    invoke-direct {v7, p0}, Lcom/lge/camera/CameraMediator;-><init>(Lcom/lge/camera/CameraApp;)V

    iput-object v7, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    .line 62
    iget-object v7, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CameraMediator;->setKeepLastCameraMode()V

    .line 64
    iget-object v7, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CameraMediator;->createPreviewController()V

    .line 65
    iget-object v7, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/camera/CameraPreviewController;->onCreate()V

    .line 66
    iget-object v7, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CameraMediator;->onCreate()V

    .line 68
    new-instance v1, Lcom/lge/camera/setting/PreferenceInflater;

    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/lge/camera/setting/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 69
    .local v1, inflater:Lcom/lge/camera/setting/PreferenceInflater;
    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getBackCameraPreferenceResource()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/setting/PreferenceGroup;

    .line 70
    .local v3, prefGroup:Lcom/lge/camera/setting/PreferenceGroup;
    new-instance v5, Lcom/lge/camera/setting/SettingVariant;

    invoke-direct {v5}, Lcom/lge/camera/setting/SettingVariant;-><init>()V

    .line 71
    .local v5, settingVariant:Lcom/lge/camera/setting/SettingVariant;
    if-eqz v3, :cond_1

    .line 72
    iget-object v7, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v7, v3}, Lcom/lge/camera/CameraMediator;->setBackPreference(Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 73
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v7, v3}, Lcom/lge/camera/setting/SettingVariant;->makePreferenceVariant(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 75
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getFrontCameraPreferenceResource()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v3

    .end local v3           #prefGroup:Lcom/lge/camera/setting/PreferenceGroup;
    check-cast v3, Lcom/lge/camera/setting/PreferenceGroup;

    .line 76
    .restart local v3       #prefGroup:Lcom/lge/camera/setting/PreferenceGroup;
    if-eqz v3, :cond_2

    .line 77
    iget-object v7, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v7, v3}, Lcom/lge/camera/CameraMediator;->setFrontPreference(Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 78
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v7, v3}, Lcom/lge/camera/setting/SettingVariant;->makePreferenceVariant(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->changeLocalSetting()V

    .line 83
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 84
    iget-object v8, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getBack3dCameraPreferenceResource()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v7

    check-cast v7, Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v8, v7}, Lcom/lge/camera/CameraMediator;->setBack3dPreference(Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 87
    :cond_3
    new-instance v7, Lcom/lge/camera/listeners/OnKeyEventListener;

    invoke-direct {v7}, Lcom/lge/camera/listeners/OnKeyEventListener;-><init>()V

    iput-object v7, p0, Lcom/lge/camera/CameraActivity;->mOnKeyEventListener:Lcom/lge/camera/listeners/OnKeyEventListener;

    .line 88
    new-instance v7, Lcom/lge/camera/listeners/ExtraTouchEventListener;

    invoke-direct {v7}, Lcom/lge/camera/listeners/ExtraTouchEventListener;-><init>()V

    iput-object v7, p0, Lcom/lge/camera/CameraActivity;->mExtraTouchEventListener:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    .line 90
    const v7, 0x7f030015

    invoke-virtual {p0, v7}, Lcom/lge/camera/CameraApp;->setContentView(I)V

    .line 92
    iget-object v7, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CameraMediator;->setKeepLastValue()V

    .line 93
    invoke-direct {p0}, Lcom/lge/camera/CameraApp;->cameraControllerInit()V

    .line 94
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->getCheckEnterOutSecure()I

    move-result v7

    if-nez v7, :cond_4

    .line 95
    iget-object v7, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v8, "com.lge.camera.command.StartInit"

    const-wide/16 v9, 0x64

    invoke-virtual {v7, v8, v9, v10}, Lcom/lge/camera/CameraMediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 97
    :cond_4
    invoke-static {p0}, Lcom/lge/camera/util/AppControlUtil;->setQuickClipScreenCaptureLimit(Landroid/app/Activity;)V

    .line 99
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 100
    iget-object v7, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CameraMediator;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, sizeOnScreenString:Ljava/lang/String;
    invoke-static {v6}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v4

    .line 103
    .local v4, previewSizeOnScreen:[I
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/lge/camera/util/AppControlUtil;->checkNavigationBarTransparent(Landroid/content/Context;[I)Z

    move-result v2

    .line 104
    .local v2, isTransparent:Z
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/lge/camera/util/AppControlUtil;->setTransparentNavigationBar(Landroid/app/Activity;Z)V

    .line 105
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/lge/camera/util/AppControlUtil;->setNavigationBg(Landroid/app/Activity;Z)V

    .line 108
    .end local v2           #isTransparent:Z
    .end local v4           #previewSizeOnScreen:[I
    .end local v6           #sizeOnScreenString:Ljava/lang/String;
    :cond_5
    const-string v7, "CameraApp"

    const-string v8, "onCreate()-end "

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .end local v1           #inflater:Lcom/lge/camera/setting/PreferenceInflater;
    .end local v3           #prefGroup:Lcom/lge/camera/setting/PreferenceGroup;
    .end local v5           #settingVariant:Lcom/lge/camera/setting/SettingVariant;
    :goto_0
    return-void

    .line 51
    :cond_6
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 52
    const-wide/16 v7, 0x3e8

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_1
    sput-boolean v9, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    .line 57
    const/4 v7, 0x0

    invoke-static {p0, v7}, Lcom/lge/camera/util/CheckStatusManager;->checkCameraOut(Landroid/app/Activity;Landroid/os/Handler;)V

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v7, "CameraApp"

    const-string v8, "onCreate() InterruptedException "

    invoke-static {v7, v8, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Lcom/lge/camera/CameraActivity;->onDestroy()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    .line 156
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Lcom/lge/camera/CameraActivity;->onPause()V

    .line 150
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 113
    const v0, 0x7f0a0008

    invoke-static {p0, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    const v1, 0x7f0a0009

    invoke-static {p0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/camera/properties/CameraConstants;->setLcdSize(II)V

    .line 116
    const v0, 0x7f0a0013

    invoke-static {p0, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    const v1, 0x7f0a0015

    invoke-static {p0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x7f0a0014

    invoke-static {p0, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/lge/camera/properties/CameraConstants;->setSmartCoverSize(III)V

    .line 124
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->getCheckEnterOutSecure()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, v3}, Lcom/lge/camera/util/CheckStatusManager;->checkEnterApplication(Landroid/app/Activity;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const-string v0, "CameraApp"

    const-string v1, "onResume()-end, checkEnterApplication"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/AppControlUtil;->isSecureCameraIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    invoke-static {v3}, Lcom/lge/camera/util/CheckStatusManager;->setCheckEnterOutSecure(I)V

    .line 136
    :cond_0
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->getCheckEnterOutSecure()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 137
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/lge/camera/util/CheckStatusManager;->setCheckEnterOutSecure(I)V

    .line 138
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/CheckStatusManager;->checkVTCallStatus(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 139
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/lge/camera/util/CheckStatusManager;->checkCameraOut(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 144
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/lge/camera/CameraActivity;->onResume()V

    .line 145
    :goto_1
    return-void

    .line 130
    :cond_2
    invoke-super {p0}, Lcom/lge/camera/CameraActivity;->onResume()V

    .line 131
    invoke-static {p0, v4}, Lcom/lge/camera/util/CheckStatusManager;->checkCameraOut(Landroid/app/Activity;Landroid/os/Handler;)V

    goto :goto_1

    .line 141
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CheckStatusManager;->checkCameraOut(Landroid/app/Activity;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method protected releaseEachMode()V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method protected resultForSaveDone(Landroid/os/Bundle;)Z
    .locals 4
    .parameter "extras"

    .prologue
    const/4 v1, 0x1

    .line 298
    if-eqz p1, :cond_0

    .line 299
    const-string v2, "save_done"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 300
    .local v0, saveDone:Z
    if-eqz v0, :cond_0

    .line 301
    iput-boolean v1, p0, Lcom/lge/camera/CameraActivity;->mPostviewRequestSaveDone:Z

    .line 302
    const-string v2, "CameraApp"

    const-string v3, "REQUEST_CODE_POSTVIEW save done"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .end local v0           #saveDone:Z
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected setLocalSetting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 220
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getFrontPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getBackPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v0

    if-nez v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    const-string v0, "LG-E973"

    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v1, "key_flash"

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 228
    :cond_2
    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v1, "key_camera_tag_location"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 230
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v1, "key_camera_tag_location"

    invoke-virtual {v0, v1, v3, v3}, Lcom/lge/camera/CameraMediator;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method protected setStatusForAttach(Z)V
    .locals 2
    .parameter "postview_mode"

    .prologue
    .line 336
    if-eqz p1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lge/camera/CameraMediator;->setStatus(I)V

    .line 339
    :cond_0
    return-void
.end method

.method protected setThumbnailForPostviewReturn(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "extras"

    .prologue
    const/4 v3, 0x0

    .line 311
    if-eqz p1, :cond_1

    .line 313
    :try_start_0
    const-string v2, "thumb_data"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 314
    .local v0, bmp:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 315
    const-string v2, "recent_uri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/lge/camera/CameraActivity;->mFileUri:Landroid/net/Uri;

    .line 316
    iget-object v2, p0, Lcom/lge/camera/CameraActivity;->mFileUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 317
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v2

    iget-object v4, p0, Lcom/lge/camera/CameraActivity;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v2, v0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->setThumbBitmapAndUpdate(Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    .line 321
    :goto_0
    const/4 v2, 0x1

    .line 328
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :goto_1
    return v2

    .line 319
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v2

    iget-object v4, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->setThumbBitmapAndUpdate(Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 324
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v2, "CameraApp"

    const-string v4, "NullPointerException:"

    invoke-static {v2, v4, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 325
    goto :goto_1

    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_1
    move v2, v3

    .line 328
    goto :goto_1
.end method
