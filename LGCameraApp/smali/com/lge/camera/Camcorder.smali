.class public Lcom/lge/camera/Camcorder;
.super Lcom/lge/camera/CameraActivity;
.source "Camcorder.java"


# instance fields
.field private mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/lge/camera/CameraActivity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    .line 33
    sget v0, Lcom/lge/camera/util/Common;->APP_CAMCORDER_INSTANCE_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/camera/util/Common;->APP_CAMCORDER_INSTANCE_COUNT:I

    .line 34
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "construct VIDEO app_instance_cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/camera/util/Common;->APP_CAMCORDER_INSTANCE_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method private camcorderControllerInit()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->initController()V

    .line 149
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->setLocalSetting()V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->initController()V

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/Camcorder;->camcorderUiControllerInit()V

    .line 156
    return-void
.end method

.method private camcorderUiControllerInit()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->initController()V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getQuickFunctionController()Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getQuickFunctionController()Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;->initController()V

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getIndicatorController()Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getIndicatorController()Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->initController()V

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getQuickButtonController()Lcom/lge/camera/controller/QuickButtonController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 193
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getQuickButtonController()Lcom/lge/camera/controller/QuickButtonController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickButtonController;->initController()V

    .line 195
    :cond_3
    return-void
.end method


# virtual methods
.method protected changeLocalSetting()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public doPhoneStateListenerAction(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 277
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
    .line 199
    sget v0, Lcom/lge/camera/util/Common;->APP_CAMCORDER_INSTANCE_COUNT:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/lge/camera/util/Common;->APP_CAMCORDER_INSTANCE_COUNT:I

    .line 200
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy VIDEO app_instance_cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/camera/util/Common;->APP_CAMCORDER_INSTANCE_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 202
    return-void
.end method

.method public getActivity()Lcom/lge/camera/CameraActivity;
    .locals 0

    .prologue
    .line 271
    return-object p0
.end method

.method public getMediator()Lcom/lge/camera/Mediator;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 206
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

    .line 207
    packed-switch p1, :pswitch_data_0

    .line 214
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/lge/camera/CameraActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 215
    return-void

    .line 209
    :pswitch_0
    invoke-virtual {p0, p3}, Lcom/lge/camera/Camcorder;->resultForPostview(Landroid/content/Intent;)Z

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    .line 39
    invoke-super {p0, p1}, Lcom/lge/camera/CameraActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {p0, v9}, Lcom/lge/camera/util/CheckStatusManager;->checkEnterApplication(Landroid/app/Activity;Z)Z

    move-result v7

    if-nez v7, :cond_0

    .line 42
    const-string v7, "CameraApp"

    const-string v8, "onCreate()-end, checkEnterApplication fail."

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/camera/util/AppControlUtil;->isSecureCameraIntent(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 44
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/lge/camera/util/CheckStatusManager;->setCheckEnterOutSecure(I)V

    .line 45
    sput-boolean v9, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    .line 59
    :cond_0
    new-instance v7, Lcom/lge/camera/CamcorderMediator;

    invoke-direct {v7, p0}, Lcom/lge/camera/CamcorderMediator;-><init>(Lcom/lge/camera/Camcorder;)V

    iput-object v7, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    .line 60
    iget-object v7, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CamcorderMediator;->setKeepLastCameraMode()V

    .line 62
    iget-object v7, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CamcorderMediator;->createPreviewController()V

    .line 63
    iget-object v7, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->onCreate()V

    .line 64
    iget-object v7, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CamcorderMediator;->onCreate()V

    .line 66
    new-instance v1, Lcom/lge/camera/setting/PreferenceInflater;

    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/lge/camera/setting/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 67
    .local v1, inflater:Lcom/lge/camera/setting/PreferenceInflater;
    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getBackCamcorderPreferenceResource()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/setting/PreferenceGroup;

    .line 68
    .local v3, prefGroup:Lcom/lge/camera/setting/PreferenceGroup;
    new-instance v5, Lcom/lge/camera/setting/SettingVariant;

    invoke-direct {v5}, Lcom/lge/camera/setting/SettingVariant;-><init>()V

    .line 69
    .local v5, settingVariant:Lcom/lge/camera/setting/SettingVariant;
    if-eqz v3, :cond_1

    .line 70
    iget-object v7, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v7, v3}, Lcom/lge/camera/CamcorderMediator;->setBackPreference(Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 71
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v7, v3}, Lcom/lge/camera/setting/SettingVariant;->makePreferenceVariant(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 73
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getFrontCamcorderPreferenceResource()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v3

    .end local v3           #prefGroup:Lcom/lge/camera/setting/PreferenceGroup;
    check-cast v3, Lcom/lge/camera/setting/PreferenceGroup;

    .line 74
    .restart local v3       #prefGroup:Lcom/lge/camera/setting/PreferenceGroup;
    if-eqz v3, :cond_2

    .line 75
    iget-object v7, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v7, v3}, Lcom/lge/camera/CamcorderMediator;->setFrontPreference(Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 76
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v7, v3}, Lcom/lge/camera/setting/SettingVariant;->makePreferenceVariant(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 79
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 80
    iget-object v8, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getBack3dCamcorderPreferenceResource()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v7

    check-cast v7, Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v8, v7}, Lcom/lge/camera/CamcorderMediator;->setBack3dPreference(Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 83
    :cond_3
    new-instance v7, Lcom/lge/camera/listeners/OnKeyEventListener;

    invoke-direct {v7}, Lcom/lge/camera/listeners/OnKeyEventListener;-><init>()V

    iput-object v7, p0, Lcom/lge/camera/CameraActivity;->mOnKeyEventListener:Lcom/lge/camera/listeners/OnKeyEventListener;

    .line 84
    new-instance v7, Lcom/lge/camera/listeners/ExtraTouchEventListener;

    invoke-direct {v7}, Lcom/lge/camera/listeners/ExtraTouchEventListener;-><init>()V

    iput-object v7, p0, Lcom/lge/camera/CameraActivity;->mExtraTouchEventListener:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    .line 86
    const v7, 0x7f030015

    invoke-virtual {p0, v7}, Lcom/lge/camera/Camcorder;->setContentView(I)V

    .line 88
    iget-object v7, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CamcorderMediator;->setKeepLastValue()V

    .line 89
    invoke-direct {p0}, Lcom/lge/camera/Camcorder;->camcorderControllerInit()V

    .line 90
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->getCheckEnterOutSecure()I

    move-result v7

    if-nez v7, :cond_4

    .line 91
    iget-object v7, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    const-string v8, "com.lge.camera.command.StartInit"

    const-wide/16 v9, 0x64

    invoke-virtual {v7, v8, v9, v10}, Lcom/lge/camera/CamcorderMediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 94
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 95
    iget-object v7, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CamcorderMediator;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v6

    .line 96
    .local v6, sizeOnScreenString:Ljava/lang/String;
    invoke-static {v6}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v4

    .line 98
    .local v4, previewSizeOnScreen:[I
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/lge/camera/util/AppControlUtil;->checkNavigationBarTransparent(Landroid/content/Context;[I)Z

    move-result v2

    .line 99
    .local v2, isTransparent:Z
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/lge/camera/util/AppControlUtil;->setTransparentNavigationBar(Landroid/app/Activity;Z)V

    .line 100
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/lge/camera/util/AppControlUtil;->setNavigationBg(Landroid/app/Activity;Z)V

    .line 103
    .end local v2           #isTransparent:Z
    .end local v4           #previewSizeOnScreen:[I
    .end local v6           #sizeOnScreenString:Ljava/lang/String;
    :cond_5
    const-string v7, "CameraApp"

    const-string v8, "onCreate()-end"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .end local v1           #inflater:Lcom/lge/camera/setting/PreferenceInflater;
    .end local v3           #prefGroup:Lcom/lge/camera/setting/PreferenceGroup;
    .end local v5           #settingVariant:Lcom/lge/camera/setting/SettingVariant;
    :goto_0
    return-void

    .line 48
    :cond_6
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 49
    const-wide/16 v7, 0x3e8

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_1
    sput-boolean v9, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    .line 54
    const/4 v7, 0x0

    invoke-static {p0, v7}, Lcom/lge/camera/util/CheckStatusManager;->checkCameraOut(Landroid/app/Activity;Landroid/os/Handler;)V

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v7, "CameraApp"

    const-string v8, "onCreate() InterruptedException "

    invoke-static {v7, v8, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/lge/camera/CameraActivity;->onDestroy()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    .line 144
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Lcom/lge/camera/CameraActivity;->onPause()V

    .line 137
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->reduceBrightnessMode(Landroid/content/Context;Z)V

    .line 138
    return-void
.end method

.method public onProtectiveCurtainClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 220
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 108
    const v0, 0x7f0a0008

    invoke-static {p0, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    const v1, 0x7f0a0009

    invoke-static {p0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/camera/properties/CameraConstants;->setLcdSize(II)V

    .line 110
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->getCheckEnterOutSecure()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, v2}, Lcom/lge/camera/util/CheckStatusManager;->checkEnterApplication(Landroid/app/Activity;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    const-string v0, "CameraApp"

    const-string v1, "onResume()-end, checkEnterApplication"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/AppControlUtil;->isSecureCameraIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    invoke-static {v2}, Lcom/lge/camera/util/CheckStatusManager;->setCheckEnterOutSecure(I)V

    .line 122
    :cond_0
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->getCheckEnterOutSecure()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 123
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/lge/camera/util/CheckStatusManager;->setCheckEnterOutSecure(I)V

    .line 124
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/CheckStatusManager;->checkVTCallStatus(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 125
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/lge/camera/util/CheckStatusManager;->checkCameraOut(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 130
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/lge/camera/CameraActivity;->onResume()V

    .line 131
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/lge/camera/util/Common;->reduceBrightnessMode(Landroid/content/Context;Z)V

    .line 132
    :goto_1
    return-void

    .line 116
    :cond_2
    invoke-super {p0}, Lcom/lge/camera/CameraActivity;->onResume()V

    .line 117
    invoke-static {p0, v3}, Lcom/lge/camera/util/CheckStatusManager;->checkCameraOut(Landroid/app/Activity;Landroid/os/Handler;)V

    goto :goto_1

    .line 127
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CheckStatusManager;->checkCameraOut(Landroid/app/Activity;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method protected releaseEachMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 252
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/AppControlUtil;->UnblockAlarmInRecording(Landroid/app/Activity;)V

    .line 253
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/lge/camera/util/AudioUtil;->setMuteNotificationStream(Landroid/content/Context;Z)V

    .line 254
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/lge/camera/util/AudioUtil;->setMuteSystemStream(Landroid/content/Context;Z)V

    .line 255
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/MainHandler;->removeMessages(I)V

    .line 256
    return-void
.end method

.method protected setLocalSetting()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 165
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getFrontPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getBackPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v0

    if-nez v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->isAttachIntent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->readVideoIntentExtras()V

    .line 171
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getRequestedVideoSizeLimit()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v0

    const-string v1, "320x240"

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/SettingController;->setAttatchModeDefaultVideoSize(Ljava/lang/String;)V

    .line 176
    :cond_2
    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    const-string v1, "key_camera_tag_location"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/CamcorderMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 178
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    const-string v1, "key_camera_tag_location"

    invoke-virtual {v0, v1, v4, v4}, Lcom/lge/camera/CamcorderMediator;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method protected setStatusForAttach(Z)V
    .locals 2
    .parameter "postview_mode"

    .prologue
    .line 260
    if-nez p1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/lge/camera/CamcorderMediator;->setVideoState(I)V

    .line 263
    :cond_0
    return-void
.end method

.method protected setThumbnailForPostviewReturn(Landroid/os/Bundle;)Z
    .locals 10
    .parameter "extras"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 225
    if-eqz p1, :cond_2

    .line 227
    :try_start_0
    iget-object v7, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CamcorderMediator;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/VideoFile;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 228
    .local v4, videoUri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 231
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/camera/util/SharedPreferenceUtil;->getLastVideoPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, savedPath:Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, pathFromUri:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 234
    :cond_0
    const-string v7, "CameraApp"

    const-string v8, "Saved uri is not valid. Find most recent uri."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v7, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CamcorderMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Lcom/lge/camera/controller/PreviewPanelController;->getMostRecentThumbnailUri(ZI)Landroid/net/Uri;

    move-result-object v4

    .line 236
    iget-object v7, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v7, v4}, Lcom/lge/camera/CamcorderMediator;->getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 240
    :goto_0
    iget-object v7, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CamcorderMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v7

    invoke-virtual {v7, v0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->setThumbBitmapAndUpdate(Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    .line 247
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #pathFromUri:Ljava/lang/String;
    .end local v3           #savedPath:Ljava/lang/String;
    .end local v4           #videoUri:Landroid/net/Uri;
    :goto_1
    return v5

    .line 238
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v2       #pathFromUri:Ljava/lang/String;
    .restart local v3       #savedPath:Ljava/lang/String;
    .restart local v4       #videoUri:Landroid/net/Uri;
    :cond_1
    const-string v7, "thumb_data"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0           #bmp:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 242
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #pathFromUri:Ljava/lang/String;
    .end local v3           #savedPath:Ljava/lang/String;
    .end local v4           #videoUri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 243
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v5, "CameraApp"

    const-string v7, "NullPointerException:"

    invoke-static {v5, v7, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v5, v6

    .line 244
    goto :goto_1

    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_2
    move v5, v6

    .line 247
    goto :goto_1
.end method
