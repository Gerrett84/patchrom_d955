.class public Lcom/lge/camera/command/DisplayCameraPostview;
.super Lcom/lge/camera/command/Command;
.source "DisplayCameraPostview.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 20
    return-void
.end method

.method private makePreviewParameters(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    const/4 v13, 0x1

    .line 53
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v7, uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v4

    .line 55
    .local v4, uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 56
    .local v5, uriListSize:I
    if-nez v5, :cond_0

    .line 57
    iget-object v8, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "com.lge.camera.command.DisplayPreview"

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 124
    .end local v4           #uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v5           #uriListSize:I
    .end local v7           #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 61
    .restart local v4       #uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v5       #uriListSize:I
    .restart local v7       #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v8, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 62
    iget-object v8, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 63
    .local v3, tempUri:Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 64
    const-string v8, "timeMachineOneShotUri"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    .end local v3           #tempUri:Landroid/net/Uri;
    :cond_1
    const/4 v6, 0x0

    .line 69
    .local v6, uriString:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 70
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 71
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v8, "CameraApp"

    const-string v9, "postview uri[%d] %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 74
    :cond_2
    const-string v8, "capturedUriList"

    invoke-virtual {p1, v8, v7}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 75
    const-string v8, "app_mode"

    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    const-string v8, "camera_dimension"

    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getCameraDimension()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    const-string v8, "cameraId"

    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    iget-object v8, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v8

    if-nez v8, :cond_3

    .line 80
    const-string v8, "shotMode"

    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_shot_mode"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v8, "shotModeIndex"

    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_shot_mode"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getSettingIndex(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    :cond_3
    const-string v8, "currentStorage"

    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getCurrentStorage()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    const-string v8, "currentStorageDir"

    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v8, "timeMachineStorageDir"

    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getTimeMachineStorageDirectory()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v8, "saveFileName"

    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getSavedFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v8, "isAttachMode"

    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    const-string v8, "isAttachIntent"

    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    const-string v8, "autoReview"

    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_auto_review"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v8, "hasSavedUri"

    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->hasSaveURI()Z

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    const-string v8, "currentLang"

    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getLanguageType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v8, "timeMachineMode"

    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 93
    const-string v8, "currentOrientation"

    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getOrientation()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    const-string v8, "volumeKey"

    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_volume"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    iget-object v8, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 97
    const-string v8, "locationLatitude"

    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v9

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 98
    const-string v8, "locationLongitude"

    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v9

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 100
    :cond_4
    const-string v8, "isFreePanorama"

    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_shot_mode"

    const-string v11, "shotmode_free_panorama"

    invoke-interface {v9, v10, v11}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    iget-object v8, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v8

    if-ne v8, v13, :cond_5

    .line 103
    const-string v8, "Flip"

    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_save_direction"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v8

    if-nez v8, :cond_6

    .line 106
    const/4 v8, 0x3

    new-array v0, v8, [Ljava/lang/String;

    .line 107
    .local v0, curzoom:[Ljava/lang/String;
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_zoom"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    .line 108
    const/4 v8, 0x1

    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getZoomCursorMaxStep()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    .line 109
    const/4 v8, 0x2

    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getZoomBarValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    .line 110
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "===> current zoom : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v0, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v8, "currentZoom"

    invoke-virtual {p1, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    .end local v0           #curzoom:[Ljava/lang/String;
    :cond_6
    const-string v8, "secureCamera"

    invoke-static {}, Lcom/lge/camera/util/Common;->isSecureCamera()Z

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    const-string v8, "useSecureLockImage"

    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    iget-object v8, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->setChangingToOtherActivity(Z)V

    .line 118
    iget-object v8, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v9, 0x64

    invoke-interface {v8, p1, v9}, Lcom/lge/camera/ControllerFunction;->startActivityForResult(Landroid/content/Intent;I)V

    .line 119
    iget-object v8, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 120
    .end local v2           #i:I
    .end local v4           #uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v5           #uriListSize:I
    .end local v6           #uriString:Ljava/lang/String;
    .end local v7           #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 121
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "CameraApp"

    const-string v9, "DisplayCameraPostview Exception:"

    invoke-static {v8, v9, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    iget-object v8, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "com.lge.camera.command.DisplayPreview"

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/DisplayCameraPostview;->execute(Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 7
    .parameter "arg"

    .prologue
    .line 29
    const-string v4, "CameraApp"

    const-string v5, "DisplayCameraPostview !"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    .line 30
    check-cast v1, Landroid/os/Bundle;

    .line 31
    .local v1, bundleFrom:Landroid/os/Bundle;
    const-string v4, "useTimeMachinePostview"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 33
    .local v3, useTimeMachinePostview:Z
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 35
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 36
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/lge/camera/PostviewTimeMachineActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    :goto_0
    invoke-direct {p0, v2}, Lcom/lge/camera/command/DisplayCameraPostview;->makePreviewParameters(Landroid/content/Intent;)V

    .line 48
    :goto_1
    return-void

    .line 37
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 38
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/lge/camera/PostviewAttachActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 39
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shot_mode"

    const-string v6, "shotmode_clear_shot"

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 40
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/lge/camera/PostviewClearShotActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 42
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "useAsPostview"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.ShowGallery"

    invoke-interface {v4, v5, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method
