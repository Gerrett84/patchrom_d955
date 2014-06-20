.class public abstract Lcom/lge/camera/controller/SettingController;
.super Lcom/lge/camera/controller/Controller;
.source "SettingController.java"

# interfaces
.implements Lcom/lge/camera/setting/Setting$SettingFunction;
.implements Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;
    }
.end annotation


# static fields
.field private static needToChange:Z

.field private static needToChangeString:Ljava/lang/String;


# instance fields
.field private backup3DCameraMainMenu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private backup3DVideoMainMenu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private backupCameraFrontMenu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private backupCameraMainMenu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private backupMenu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private backupVideoFrontMenu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private backupVideoMainMenu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private m3DCameraMainOriginalSize:I

.field private m3DVideoMainOriginalSize:I

.field protected mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

.field protected mCamcorderMain3dSetting:Lcom/lge/camera/setting/VideoSetting;

.field protected mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

.field private mCameraFrontOriginalSize:I

.field protected mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

.field protected mCameraFrontSettingMenu:Lcom/lge/camera/setting/CameraFrontSettingMenu;

.field protected mCameraMain3dSetting:Lcom/lge/camera/setting/CameraSetting;

.field protected mCameraMain3dSettingMenu:Lcom/lge/camera/setting/CameraMain3dSettingMenu;

.field private mCameraMainOriginalSize:I

.field protected mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

.field protected mCameraMainSettingMenu:Lcom/lge/camera/setting/CameraMainSettingMenu;

.field private mOriginalSize:I

.field protected mSetting:Lcom/lge/camera/setting/Setting;

.field protected mSettingInit:Z

.field protected mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

.field private mVideoFrontOriginalSize:I

.field protected mVideoFrontSettingMenu:Lcom/lge/camera/setting/VideoFrontSettingMenu;

.field protected mVideoMain3dSettingMenu:Lcom/lge/camera/setting/VideoMain3dSettingMenu;

.field private mVideoMainOriginalSize:I

.field protected mVideoMainSettingMenu:Lcom/lge/camera/setting/VideoMainSettingMenu;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .parameter "function"

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->backupCameraMainMenu:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->backupCameraFrontMenu:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->backup3DCameraMainMenu:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->backupVideoMainMenu:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->backupVideoFrontMenu:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->backup3DVideoMainMenu:Ljava/util/ArrayList;

    .line 62
    iput-boolean v1, p0, Lcom/lge/camera/controller/SettingController;->mSettingInit:Z

    .line 66
    iput v1, p0, Lcom/lge/camera/controller/SettingController;->mOriginalSize:I

    .line 67
    iput v1, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainOriginalSize:I

    .line 68
    iput v1, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontOriginalSize:I

    .line 69
    iput v1, p0, Lcom/lge/camera/controller/SettingController;->m3DCameraMainOriginalSize:I

    .line 70
    iput v1, p0, Lcom/lge/camera/controller/SettingController;->mVideoMainOriginalSize:I

    .line 71
    iput v1, p0, Lcom/lge/camera/controller/SettingController;->mVideoFrontOriginalSize:I

    .line 72
    iput v1, p0, Lcom/lge/camera/controller/SettingController;->m3DVideoMainOriginalSize:I

    .line 88
    return-void
.end method

.method private editPrefValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pref"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 743
    if-eqz p1, :cond_0

    .line 744
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 745
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 746
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 748
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method


# virtual methods
.method public addMMSTexture(Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 1
    .parameter "pg"

    .prologue
    .line 678
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->addMMSTexture(Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 679
    return-void
.end method

.method public applyCameraChange()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDimension()I

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    .line 202
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSettingMenu:Lcom/lge/camera/setting/CameraMainSettingMenu;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    .line 203
    iget v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainOriginalSize:I

    iput v0, p0, Lcom/lge/camera/controller/SettingController;->mOriginalSize:I

    .line 204
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->backupCameraMainMenu:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->backupMenu:Ljava/util/ArrayList;

    .line 237
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraMain3dSetting:Lcom/lge/camera/setting/CameraSetting;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    .line 207
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraMain3dSettingMenu:Lcom/lge/camera/setting/CameraMain3dSettingMenu;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    .line 208
    iget v0, p0, Lcom/lge/camera/controller/SettingController;->m3DCameraMainOriginalSize:I

    iput v0, p0, Lcom/lge/camera/controller/SettingController;->mOriginalSize:I

    .line 209
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->backup3DCameraMainMenu:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->backupMenu:Ljava/util/ArrayList;

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    .line 213
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSettingMenu:Lcom/lge/camera/setting/CameraFrontSettingMenu;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    .line 214
    iget v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontOriginalSize:I

    iput v0, p0, Lcom/lge/camera/controller/SettingController;->mOriginalSize:I

    .line 215
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->backupCameraFrontMenu:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->backupMenu:Ljava/util/ArrayList;

    goto :goto_0

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_4

    .line 219
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDimension()I

    move-result v0

    if-nez v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    .line 221
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mVideoMainSettingMenu:Lcom/lge/camera/setting/VideoMainSettingMenu;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    .line 222
    iget v0, p0, Lcom/lge/camera/controller/SettingController;->mVideoMainOriginalSize:I

    iput v0, p0, Lcom/lge/camera/controller/SettingController;->mOriginalSize:I

    .line 223
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->backupVideoMainMenu:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->backupMenu:Ljava/util/ArrayList;

    goto :goto_0

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMain3dSetting:Lcom/lge/camera/setting/VideoSetting;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    .line 226
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mVideoMain3dSettingMenu:Lcom/lge/camera/setting/VideoMain3dSettingMenu;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    .line 227
    iget v0, p0, Lcom/lge/camera/controller/SettingController;->m3DVideoMainOriginalSize:I

    iput v0, p0, Lcom/lge/camera/controller/SettingController;->mOriginalSize:I

    .line 228
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->backup3DVideoMainMenu:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->backupMenu:Ljava/util/ArrayList;

    goto :goto_0

    .line 231
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    .line 232
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mVideoFrontSettingMenu:Lcom/lge/camera/setting/VideoFrontSettingMenu;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    .line 233
    iget v0, p0, Lcom/lge/camera/controller/SettingController;->mVideoFrontOriginalSize:I

    iput v0, p0, Lcom/lge/camera/controller/SettingController;->mOriginalSize:I

    .line 234
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->backupVideoFrontMenu:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->backupMenu:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public checkAndCloseChildView()Z
    .locals 1

    .prologue
    .line 755
    const/4 v0, 0x0

    return v0
.end method

.method public abstract displaySettingView()V
.end method

.method public getCameraFrontSettingMenu()Lcom/lge/camera/setting/CameraFrontSettingMenu;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSettingMenu:Lcom/lge/camera/setting/CameraFrontSettingMenu;

    return-object v0
.end method

.method public getCameraMain3dSettingMenu()Lcom/lge/camera/setting/CameraMain3dSettingMenu;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraMain3dSettingMenu:Lcom/lge/camera/setting/CameraMain3dSettingMenu;

    return-object v0
.end method

.method public getCameraMainSettingMenu()Lcom/lge/camera/setting/CameraMainSettingMenu;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSettingMenu:Lcom/lge/camera/setting/CameraMainSettingMenu;

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    return-object v0
.end method

.method public getSetting(I)I
    .locals 1
    .parameter "settingIndex"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/Setting;->getSetting(I)I

    move-result v0

    return v0
.end method

.method public getSetting(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSetting()Lcom/lge/camera/setting/Setting;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    return-object v0
.end method

.method public getSettingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/Setting;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoFrontSettingMenu()Lcom/lge/camera/setting/VideoFrontSettingMenu;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mVideoFrontSettingMenu:Lcom/lge/camera/setting/VideoFrontSettingMenu;

    return-object v0
.end method

.method public getVideoMain3dSettingMenu()Lcom/lge/camera/setting/VideoMain3dSettingMenu;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mVideoMain3dSettingMenu:Lcom/lge/camera/setting/VideoMain3dSettingMenu;

    return-object v0
.end method

.method public getVideoMainSettingMenu()Lcom/lge/camera/setting/VideoMainSettingMenu;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mVideoMainSettingMenu:Lcom/lge/camera/setting/VideoMainSettingMenu;

    return-object v0
.end method

.method public initController()V
    .locals 6

    .prologue
    .line 92
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getBackPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    .line 93
    .local v1, backPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getFrontPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    .line 94
    .local v2, frontPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_1

    .line 95
    new-instance v3, Lcom/lge/camera/setting/CameraSetting;

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Main_CameraAppConfig"

    invoke-direct {v3, p0, v4, v5, v1}, Lcom/lge/camera/setting/CameraSetting;-><init>(Lcom/lge/camera/setting/Setting$SettingFunction;Landroid/content/Context;Ljava/lang/String;Lcom/lge/camera/setting/PreferenceGroup;)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    .line 96
    new-instance v3, Lcom/lge/camera/setting/CameraSetting;

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Secondary_CameraAppConfig"

    invoke-direct {v3, p0, v4, v5, v2}, Lcom/lge/camera/setting/CameraSetting;-><init>(Lcom/lge/camera/setting/Setting$SettingFunction;Landroid/content/Context;Ljava/lang/String;Lcom/lge/camera/setting/PreferenceGroup;)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    .line 97
    new-instance v3, Lcom/lge/camera/setting/CameraMainSettingMenu;

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-direct {v3, p0, v4, v5}, Lcom/lge/camera/setting/CameraMainSettingMenu;-><init>(Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;Landroid/content/Context;Lcom/lge/camera/setting/CameraSetting;)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSettingMenu:Lcom/lge/camera/setting/CameraMainSettingMenu;

    .line 98
    new-instance v3, Lcom/lge/camera/setting/CameraFrontSettingMenu;

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-direct {v3, p0, v4, v5}, Lcom/lge/camera/setting/CameraFrontSettingMenu;-><init>(Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;Landroid/content/Context;Lcom/lge/camera/setting/CameraSetting;)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSettingMenu:Lcom/lge/camera/setting/CameraFrontSettingMenu;

    .line 99
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSettingMenu:Lcom/lge/camera/setting/CameraMainSettingMenu;

    invoke-virtual {v3}, Lcom/lge/camera/setting/CameraMainSettingMenu;->getMenuList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainOriginalSize:I

    .line 100
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSettingMenu:Lcom/lge/camera/setting/CameraFrontSettingMenu;

    invoke-virtual {v3}, Lcom/lge/camera/setting/CameraFrontSettingMenu;->getMenuList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontOriginalSize:I

    .line 110
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getBack3dPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v0

    .line 112
    .local v0, back3DPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_2

    .line 113
    new-instance v3, Lcom/lge/camera/setting/CameraSetting;

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Main_3d_CameraAppConfig"

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/lge/camera/setting/CameraSetting;-><init>(Lcom/lge/camera/setting/Setting$SettingFunction;Landroid/content/Context;Ljava/lang/String;Lcom/lge/camera/setting/PreferenceGroup;)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingController;->mCameraMain3dSetting:Lcom/lge/camera/setting/CameraSetting;

    .line 114
    new-instance v3, Lcom/lge/camera/setting/CameraMain3dSettingMenu;

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/SettingController;->mCameraMain3dSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-direct {v3, p0, v4, v5}, Lcom/lge/camera/setting/CameraMain3dSettingMenu;-><init>(Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;Landroid/content/Context;Lcom/lge/camera/setting/CameraSetting;)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingController;->mCameraMain3dSettingMenu:Lcom/lge/camera/setting/CameraMain3dSettingMenu;

    .line 115
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mCameraMain3dSettingMenu:Lcom/lge/camera/setting/CameraMain3dSettingMenu;

    invoke-virtual {v3}, Lcom/lge/camera/setting/CameraMain3dSettingMenu;->getMenuList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/lge/camera/controller/SettingController;->m3DCameraMainOriginalSize:I

    .line 123
    .end local v0           #back3DPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->applyCameraChange()V

    .line 124
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lge/camera/controller/SettingController;->mSettingInit:Z

    .line 125
    return-void

    .line 102
    :cond_1
    new-instance v3, Lcom/lge/camera/setting/VideoSetting;

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Main_CameraAppConfig"

    invoke-direct {v3, p0, v4, v5, v1}, Lcom/lge/camera/setting/VideoSetting;-><init>(Lcom/lge/camera/setting/Setting$SettingFunction;Landroid/content/Context;Ljava/lang/String;Lcom/lge/camera/setting/PreferenceGroup;)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    .line 103
    new-instance v3, Lcom/lge/camera/setting/VideoSetting;

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Secondary_CameraAppConfig"

    invoke-direct {v3, p0, v4, v5, v2}, Lcom/lge/camera/setting/VideoSetting;-><init>(Lcom/lge/camera/setting/Setting$SettingFunction;Landroid/content/Context;Ljava/lang/String;Lcom/lge/camera/setting/PreferenceGroup;)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    .line 104
    new-instance v3, Lcom/lge/camera/setting/VideoMainSettingMenu;

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-direct {v3, p0, v4, v5}, Lcom/lge/camera/setting/VideoMainSettingMenu;-><init>(Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;Landroid/content/Context;Lcom/lge/camera/setting/VideoSetting;)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingController;->mVideoMainSettingMenu:Lcom/lge/camera/setting/VideoMainSettingMenu;

    .line 105
    new-instance v3, Lcom/lge/camera/setting/VideoFrontSettingMenu;

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-direct {v3, p0, v4, v5}, Lcom/lge/camera/setting/VideoFrontSettingMenu;-><init>(Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;Landroid/content/Context;Lcom/lge/camera/setting/VideoSetting;)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingController;->mVideoFrontSettingMenu:Lcom/lge/camera/setting/VideoFrontSettingMenu;

    .line 106
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mVideoMainSettingMenu:Lcom/lge/camera/setting/VideoMainSettingMenu;

    invoke-virtual {v3}, Lcom/lge/camera/setting/VideoMainSettingMenu;->getMenuList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/lge/camera/controller/SettingController;->mVideoMainOriginalSize:I

    .line 107
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mVideoFrontSettingMenu:Lcom/lge/camera/setting/VideoFrontSettingMenu;

    invoke-virtual {v3}, Lcom/lge/camera/setting/VideoFrontSettingMenu;->getMenuList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/lge/camera/controller/SettingController;->mVideoFrontOriginalSize:I

    goto/16 :goto_0

    .line 117
    .restart local v0       #back3DPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;
    :cond_2
    new-instance v3, Lcom/lge/camera/setting/VideoSetting;

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Main_3d_CameraAppConfig"

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/lge/camera/setting/VideoSetting;-><init>(Lcom/lge/camera/setting/Setting$SettingFunction;Landroid/content/Context;Ljava/lang/String;Lcom/lge/camera/setting/PreferenceGroup;)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMain3dSetting:Lcom/lge/camera/setting/VideoSetting;

    .line 118
    new-instance v3, Lcom/lge/camera/setting/VideoMain3dSettingMenu;

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMain3dSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-direct {v3, p0, v4, v5}, Lcom/lge/camera/setting/VideoMain3dSettingMenu;-><init>(Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;Landroid/content/Context;Lcom/lge/camera/setting/VideoSetting;)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingController;->mVideoMain3dSettingMenu:Lcom/lge/camera/setting/VideoMain3dSettingMenu;

    .line 119
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mVideoMain3dSettingMenu:Lcom/lge/camera/setting/VideoMain3dSettingMenu;

    invoke-virtual {v3}, Lcom/lge/camera/setting/VideoMain3dSettingMenu;->getMenuList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/lge/camera/controller/SettingController;->m3DVideoMainOriginalSize:I

    goto/16 :goto_1
.end method

.method public initSettingMenu()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/SettingController;->mOriginalSize:I

    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingMenu;->getMenuList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->restoreSettingItem()V

    .line 194
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->restoreQFLItemEnableValue()V

    goto :goto_0
.end method

.method public isAttachIntent()Z
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v0

    return v0
.end method

.method public isMMSIntent()Z
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v0

    return v0
.end method

.method public abstract isNullSettingView()Z
.end method

.method public abstract isSettingViewRemoving()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract removeChildSettingView(Z)V
.end method

.method public removePostRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 697
    return-void
.end method

.method public removeSettingItem()V
    .locals 5

    .prologue
    .line 156
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    if-nez v3, :cond_1

    .line 172
    :cond_0
    return-void

    .line 160
    :cond_1
    const/4 v2, 0x0

    .line 161
    .local v2, menuItem:Lcom/lge/camera/setting/SettingMenuItem;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    invoke-virtual {v3}, Lcom/lge/camera/setting/SettingMenu;->getMenuList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 162
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    invoke-virtual {v3, v1}, Lcom/lge/camera/setting/SettingMenu;->getMenu(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v2

    .line 163
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {v2}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getQfIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 164
    new-instance v0, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;-><init>(Lcom/lge/camera/controller/SettingController;Lcom/lge/camera/controller/SettingController$1;)V

    .line 165
    .local v0, backupItem:Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;
    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->setIndex(I)V

    .line 166
    invoke-virtual {v0, v2}, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->setSettingMenuItem(Lcom/lge/camera/setting/SettingMenuItem;)V

    .line 167
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->backupMenu:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    invoke-virtual {v3, v1}, Lcom/lge/camera/setting/SettingMenu;->removeMenuItem(I)V

    .line 169
    const/4 v1, 0x0

    .line 161
    .end local v0           #backupItem:Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public abstract removeSettingView()V
.end method

.method public abstract removeSettingViewAll()V
.end method

.method public restoreQFLItemEnableValue()V
    .locals 5

    .prologue
    .line 175
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    if-nez v3, :cond_1

    .line 186
    :cond_0
    return-void

    .line 178
    :cond_1
    const/4 v1, 0x0

    .line 179
    .local v1, index:I
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    invoke-virtual {v3}, Lcom/lge/camera/setting/SettingMenu;->getMenuList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 180
    .local v2, menuListSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 181
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    invoke-virtual {v4, v0}, Lcom/lge/camera/setting/SettingMenu;->getMenu(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getQfIndex(Ljava/lang/String;)I

    move-result v1

    .line 182
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 183
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    invoke-virtual {v3, v0}, Lcom/lge/camera/setting/SettingMenu;->getMenu(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getQFLMenuEnable()[Z

    move-result-object v4

    aget-boolean v4, v4, v1

    iput-boolean v4, v3, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    .line 180
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public restoreSettingItem()V
    .locals 8

    .prologue
    .line 132
    iget-object v5, p0, Lcom/lge/camera/controller/SettingController;->backupMenu:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 153
    :goto_0
    return-void

    .line 136
    :cond_0
    const/4 v0, 0x0

    .line 137
    .local v0, backupMenuItem:Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;
    const/4 v2, 0x0

    .line 138
    .local v2, listPref:Lcom/lge/camera/setting/ListPreference;
    const/4 v3, 0x0

    .line 139
    .local v3, settingValue:Ljava/lang/String;
    const/4 v4, 0x0

    .line 140
    .local v4, valueIndex:I
    iget-object v5, p0, Lcom/lge/camera/controller/SettingController;->backupMenu:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 141
    iget-object v5, p0, Lcom/lge/camera/controller/SettingController;->backupMenu:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #backupMenuItem:Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;
    check-cast v0, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;

    .line 142
    .restart local v0       #backupMenuItem:Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;
    iget-object v5, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    #getter for: Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->settingMenuItem:Lcom/lge/camera/setting/SettingMenuItem;
    invoke-static {v0}, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->access$000(Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 143
    if-eqz v2, :cond_1

    .line 144
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 145
    if-eqz v3, :cond_1

    .line 146
    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    .line 147
    #getter for: Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->settingMenuItem:Lcom/lge/camera/setting/SettingMenuItem;
    invoke-static {v0}, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->access$000(Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v5

    iput v4, v5, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    .line 150
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    #getter for: Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->settingMenuItemIndex:I
    invoke-static {v0}, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->access$100(Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;)I

    move-result v6

    #getter for: Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->settingMenuItem:Lcom/lge/camera/setting/SettingMenuItem;
    invoke-static {v0}, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->access$000(Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/lge/camera/setting/SettingMenu;->insertMenuItem(ILcom/lge/camera/setting/SettingMenuItem;)V

    .line 140
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 152
    :cond_2
    iget-object v5, p0, Lcom/lge/camera/controller/SettingController;->backupMenu:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public rotateSettingBeautyShot(I)V
    .locals 0
    .parameter "degree"

    .prologue
    .line 753
    return-void
.end method

.method public rotateSettingBrightness(I)V
    .locals 0
    .parameter "degree"

    .prologue
    .line 752
    return-void
.end method

.method public rotateSettingCamera3dDepth(I)V
    .locals 0
    .parameter "degree"

    .prologue
    .line 754
    return-void
.end method

.method public rotateSettingZoom(I)V
    .locals 0
    .parameter "degree"

    .prologue
    .line 751
    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 691
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 692
    return-void
.end method

.method public setAllChildMenuEnabled(Ljava/lang/String;Z)V
    .locals 6
    .parameter "key"
    .parameter "enable"

    .prologue
    .line 682
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, p1}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 683
    .local v2, pref:Lcom/lge/camera/setting/ListPreference;
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 685
    .local v3, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, v3

    .local v1, len:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 686
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p1, v5, p2}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 685
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 688
    :cond_0
    return-void
.end method

.method public setAllPreferenceApply(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "which"
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 705
    const/4 v0, 0x0

    .line 707
    .local v0, pref:Landroid/content/SharedPreferences;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "back_camera"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 709
    invoke-direct {p0, v0, p2, p3}, Lcom/lge/camera/controller/SettingController;->editPrefValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    if-eqz v1, :cond_0

    .line 711
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-virtual {v1, p2, p3}, Lcom/lge/camera/setting/CameraSetting;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 715
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 716
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "back_camcorder"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 717
    invoke-direct {p0, v0, p2, p3}, Lcom/lge/camera/controller/SettingController;->editPrefValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    if-eqz v1, :cond_1

    .line 719
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-virtual {v1, p2, p3}, Lcom/lge/camera/setting/VideoSetting;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 723
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportFrontCameraModel()Z

    move-result v1

    if-eqz v1, :cond_2

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 725
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "front_camera"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 726
    invoke-direct {p0, v0, p2, p3}, Lcom/lge/camera/controller/SettingController;->editPrefValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    if-eqz v1, :cond_2

    .line 728
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-virtual {v1, p2, p3}, Lcom/lge/camera/setting/CameraSetting;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 732
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportFrontCameraModel()Z

    move-result v1

    if-eqz v1, :cond_3

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    .line 734
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "front_camcorder"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 735
    invoke-direct {p0, v0, p2, p3}, Lcom/lge/camera/controller/SettingController;->editPrefValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    if-eqz v1, :cond_3

    .line 737
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-virtual {v1, p2, p3}, Lcom/lge/camera/setting/VideoSetting;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 740
    :cond_3
    return-void
.end method

.method public setAttatchModeDefaultVideoSize(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    const-string v1, "key_preview_size_on_device"

    invoke-virtual {v0, v1, p1}, Lcom/lge/camera/setting/VideoSetting;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 337
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    const-string v1, "key_preview_size_on_device"

    invoke-virtual {v0, v1, p1}, Lcom/lge/camera/setting/VideoSetting;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 338
    return-void
.end method

.method public setLiveeffectLimit()Ljava/lang/String;
    .locals 15

    .prologue
    .line 418
    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v11

    if-eqz v11, :cond_16

    .line 419
    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v12, "key_preview_size_on_device"

    invoke-interface {v11, v12}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v10

    .line 420
    .local v10, videoSizePref:Lcom/lge/camera/setting/ListPreference;
    if-nez v10, :cond_0

    .line 421
    const-string v11, "CameraApp"

    const-string v12, "videoSizePref is null"

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const/4 v11, 0x0

    .line 540
    .end local v10           #videoSizePref:Lcom/lge/camera/setting/ListPreference;
    :goto_0
    return-object v11

    .line 424
    .restart local v10       #videoSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_0
    const-string v11, "CameraApp"

    const-string v12, "setLiveeffectLimit"

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-virtual {v10}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 427
    .local v7, values:[Ljava/lang/CharSequence;
    invoke-virtual {v10}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    .line 429
    const/4 v6, 0x0

    .line 430
    .local v6, size:Ljava/lang/String;
    const/4 v11, 0x1

    sput-boolean v11, Lcom/lge/camera/controller/SettingController;->needToChange:Z

    .line 431
    const/4 v1, 0x0

    .line 432
    .local v1, available:Z
    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->isLiveEffectActive()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 433
    const/4 v2, 0x0

    .local v2, i:I
    array-length v4, v7

    .local v4, len:I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 434
    aget-object v11, v7, v2

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 435
    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v11

    invoke-static {v6, v11}, Lcom/lge/camera/properties/MultimediaProperties;->isAvailableLiveeffectResolution(Ljava/lang/String;I)Z

    move-result v1

    .line 436
    if-eqz v1, :cond_1

    sget-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 437
    const/4 v11, 0x0

    sput-boolean v11, Lcom/lge/camera/controller/SettingController;->needToChange:Z

    .line 433
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 441
    .end local v2           #i:I
    .end local v4           #len:I
    :cond_2
    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 442
    :cond_3
    const/4 v11, 0x1

    sput-boolean v11, Lcom/lge/camera/controller/SettingController;->needToChange:Z

    .line 444
    :cond_4
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "needToChange = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-boolean v13, Lcom/lge/camera/controller/SettingController;->needToChange:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    sget-boolean v11, Lcom/lge/camera/controller/SettingController;->needToChange:Z

    if-eqz v11, :cond_6

    .line 446
    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 447
    sget-object v11, Lcom/lge/camera/properties/MultimediaProperties;->DUALREC_DEFAULT_VIDEO_SIZE:Ljava/lang/String;

    if-eqz v11, :cond_8

    .line 448
    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getPreviousResolution()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getPreviousEffectType()I

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getPreviousEffectType()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    .line 451
    :cond_5
    sget-object v11, Lcom/lge/camera/properties/MultimediaProperties;->DUALREC_DEFAULT_VIDEO_SIZE:Ljava/lang/String;

    invoke-static {v11}, Lcom/lge/camera/properties/MultimediaProperties;->getDualRecordingResolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    .line 452
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DualRec Video Size = Default dualrec video size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :goto_2
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Video size is set for Dual Recording : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :cond_6
    :goto_3
    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v11

    if-nez v11, :cond_f

    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v11

    if-nez v11, :cond_f

    .line 488
    const/4 v2, 0x0

    .restart local v2       #i:I
    array-length v4, v7

    .restart local v4       #len:I
    :goto_4
    if-ge v2, v4, :cond_15

    .line 489
    aget-object v11, v7, v2

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 490
    sget-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 491
    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v12, "key_preview_size_on_device"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v6, v13}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 488
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 455
    .end local v2           #i:I
    .end local v4           #len:I
    :cond_7
    sget-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-static {v11}, Lcom/lge/camera/properties/MultimediaProperties;->getDualRecordingResolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    .line 456
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DualRec Video Size = Selected video size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 459
    :cond_8
    sget-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-static {v11}, Lcom/lge/camera/properties/MultimediaProperties;->getDualRecordingResolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    .line 460
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DualRec Video Size = Current Video Size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 463
    :cond_9
    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 464
    sget-object v11, Lcom/lge/camera/properties/MultimediaProperties;->SMARTZOOM_DEFAULT_VIDEO_SIZE:Ljava/lang/String;

    if-eqz v11, :cond_c

    .line 465
    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getPreviousResolution()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getPreviousEffectType()I

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getPreviousEffectType()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b

    .line 468
    :cond_a
    sget-object v11, Lcom/lge/camera/properties/MultimediaProperties;->SMARTZOOM_DEFAULT_VIDEO_SIZE:Ljava/lang/String;

    invoke-static {v11}, Lcom/lge/camera/properties/MultimediaProperties;->getSmartZoomResolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    .line 469
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SmartZoom Video Size = Default SmartZoom video size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :goto_6
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Video size is set for SmartZoom Recording : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 472
    :cond_b
    sget-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-static {v11}, Lcom/lge/camera/properties/MultimediaProperties;->getSmartZoomResolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    .line 473
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SmartZoom Video Size = Selected video size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 476
    :cond_c
    sget-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-static {v11}, Lcom/lge/camera/properties/MultimediaProperties;->getSmartZoomResolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    .line 477
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SmartZoom Video Size = Current Video Size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 481
    :cond_d
    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v11

    invoke-static {v11}, Lcom/lge/camera/properties/MultimediaProperties;->getLiveeffectResolutions(I)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    .line 482
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Video size is set for Live Effect : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 493
    .restart local v2       #i:I
    .restart local v4       #len:I
    :cond_e
    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v12, "key_preview_size_on_device"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v6, v13}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 498
    .end local v2           #i:I
    .end local v4           #len:I
    :cond_f
    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 499
    sget-object v11, Lcom/lge/camera/properties/MultimediaProperties;->DUALREC_VIDEO_SIZE_LISTED_ON_MENU:Ljava/lang/String;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 504
    .local v9, videoSizeOnMenu:[Ljava/lang/String;
    :goto_7
    const/4 v2, 0x0

    .restart local v2       #i:I
    array-length v4, v7

    .restart local v4       #len:I
    :goto_8
    if-ge v2, v4, :cond_11

    .line 505
    aget-object v11, v7, v2

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 506
    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v12, "key_preview_size_on_device"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v6, v13}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 504
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 501
    .end local v2           #i:I
    .end local v4           #len:I
    .end local v9           #videoSizeOnMenu:[Ljava/lang/String;
    :cond_10
    sget-object v11, Lcom/lge/camera/properties/MultimediaProperties;->SMARTZOOM_VIDEO_SIZE_LISTED_ON_MENU:Ljava/lang/String;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .restart local v9       #videoSizeOnMenu:[Ljava/lang/String;
    goto :goto_7

    .line 509
    .restart local v2       #i:I
    .restart local v4       #len:I
    :cond_11
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_9
    if-ge v3, v5, :cond_15

    aget-object v8, v0, v3

    .line 510
    .local v8, videoSize:Ljava/lang/String;
    const-string v11, "1920x1080"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 511
    const-string v8, "1920x1088"

    .line 513
    :cond_12
    const/4 v2, 0x0

    array-length v4, v7

    :goto_a
    if-ge v2, v4, :cond_14

    .line 514
    aget-object v11, v7, v2

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 515
    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 516
    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v12, "key_preview_size_on_device"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v6, v13}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 513
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 509
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 524
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v8           #videoSize:Ljava/lang/String;
    .end local v9           #videoSizeOnMenu:[Ljava/lang/String;
    :cond_15
    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v12, "key_preview_size_on_device"

    sget-object v13, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-interface {v11, v12, v13, v14}, Lcom/lge/camera/ControllerFunction;->setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 525
    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v12, "key_preview_size_on_device"

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-interface {v11, v12, v13, v14}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 527
    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v12, Lcom/lge/camera/controller/SettingController$2;

    invoke-direct {v12, p0}, Lcom/lge/camera/controller/SettingController$2;-><init>(Lcom/lge/camera/controller/SettingController;)V

    invoke-interface {v11, v12}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 538
    sget-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    goto/16 :goto_0

    .line 540
    .end local v1           #available:Z
    .end local v2           #i:I
    .end local v4           #len:I
    .end local v6           #size:Ljava/lang/String;
    .end local v7           #values:[Ljava/lang/CharSequence;
    .end local v10           #videoSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_16
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public setMmsLimit(Z)V
    .locals 14
    .parameter "mmsVideo"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 357
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v11, "key_preview_size_on_device"

    invoke-interface {v10, v11}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v8

    .line 358
    .local v8, videoSizePref:Lcom/lge/camera/setting/ListPreference;
    if-nez v8, :cond_0

    .line 359
    const-string v10, "CameraApp"

    const-string v11, "videoSizePref is null"

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 363
    .local v7, values:[Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v11, "key_preview_size_on_device"

    invoke-interface {v10, v11}, Lcom/lge/camera/ControllerFunction;->getQfIndex(Ljava/lang/String;)I

    move-result v9

    .line 364
    .local v9, videoSizePrefIndex:I
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 366
    .local v5, selectedResolution:Ljava/lang/String;
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/camera/properties/MmsProperties;->isAvailableMmsResolution(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 367
    .local v2, isMMS:Z
    if-nez v2, :cond_1

    const-string v10, "320x240"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "176x144"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 370
    :cond_1
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10, v12}, Lcom/lge/camera/ControllerFunction;->setForced_audiozoom(Z)V

    .line 375
    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->isMMSIntent()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 376
    const/4 v6, 0x0

    .line 377
    .local v6, size:Ljava/lang/String;
    const/4 v4, 0x1

    .line 378
    .local v4, needChange:Z
    const/4 v0, 0x0

    .line 379
    .local v0, available:Z
    const/4 v1, 0x0

    .local v1, i:I
    array-length v3, v7

    .local v3, len:I
    :goto_2
    if-ge v1, v3, :cond_4

    .line 380
    aget-object v10, v7, v1

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 381
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10, v6}, Lcom/lge/camera/properties/MmsProperties;->isAvailableMmsResolution(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 382
    if-eqz v0, :cond_2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 383
    const/4 v4, 0x0

    .line 385
    :cond_2
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v11, "key_preview_size_on_device"

    invoke-interface {v10, v11, v6, v0}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 372
    .end local v0           #available:Z
    .end local v1           #i:I
    .end local v3           #len:I
    .end local v4           #needChange:Z
    .end local v6           #size:Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10, v13}, Lcom/lge/camera/ControllerFunction;->setForced_audiozoom(Z)V

    goto :goto_1

    .line 388
    .restart local v0       #available:Z
    .restart local v1       #i:I
    .restart local v3       #len:I
    .restart local v4       #needChange:Z
    .restart local v6       #size:Ljava/lang/String;
    :cond_4
    if-eqz v4, :cond_5

    .line 389
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10}, Lcom/lge/camera/properties/MmsProperties;->getMmsResolutions(Landroid/content/ContentResolver;)[Ljava/lang/String;

    move-result-object v10

    aget-object v5, v10, v12

    .line 402
    .end local v0           #available:Z
    .end local v1           #i:I
    .end local v3           #len:I
    .end local v4           #needChange:Z
    .end local v6           #size:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->isAttachIntent()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 403
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v11, "key_video_auto_review"

    invoke-interface {v10, v11, v12, v12}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 407
    :goto_3
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v11, "key_preview_size_on_device"

    invoke-interface {v10, v11, v5, v13}, Lcom/lge/camera/ControllerFunction;->setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 409
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v11, Lcom/lge/camera/controller/SettingController$1;

    invoke-direct {v11, p0}, Lcom/lge/camera/controller/SettingController$1;-><init>(Lcom/lge/camera/controller/SettingController;)V

    invoke-interface {v10, v11}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 392
    :cond_6
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->isEffectsCameraActive()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 393
    :cond_7
    const-string v10, "CameraApp"

    const-string v11, "skip! resolution is already setted by effectActive "

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 396
    :cond_8
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10, v9}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionList(I)Z

    move-result v10

    if-nez v10, :cond_5

    .line 397
    const/4 v1, 0x0

    .restart local v1       #i:I
    array-length v3, v7

    .restart local v3       #len:I
    :goto_4
    if-ge v1, v3, :cond_5

    .line 398
    const-string v10, "key_preview_size_on_device"

    invoke-virtual {p0, v10, v13}, Lcom/lge/camera/controller/SettingController;->setAllChildMenuEnabled(Ljava/lang/String;Z)V

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 405
    .end local v1           #i:I
    .end local v3           #len:I
    :cond_9
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v11, "key_video_auto_review"

    invoke-interface {v10, v11, v13, v12}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    goto :goto_3
.end method

.method public setSetting(II)Z
    .locals 2
    .parameter "settingIndex"
    .parameter "settingValue"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_camera_auto_review"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_camera_tag_location"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_video_audio_recording"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_video_auto_review"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_storage"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_camera_shutter_sound"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_voiceshutter"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_uplus_box"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_video_stabilization"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_volume"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_beautyshot"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 268
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/SettingController;->setSettingAllPreferences(II)Z

    move-result v0

    .line 285
    :goto_0
    return v0

    .line 271
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_camera_anti_banding"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 273
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/SettingController;->setSettingAllPreferences(II)Z

    move-result v0

    goto :goto_0

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_restore"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_help_guide"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 278
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 279
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/SettingController;->setSettingAllPreferences(II)Z

    move-result v0

    goto :goto_0

    .line 281
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 285
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/setting/Setting;->setSetting(II)Z

    move-result v0

    goto :goto_0
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 289
    const-string v0, "key_camera_auto_review"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_camera_tag_location"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_video_audio_recording"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_video_auto_review"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_storage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_camera_shutter_sound"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_voiceshutter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_uplus_box"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_video_stabilization"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_volume"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_beautyshot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/SettingController;->setSettingAllPreferences(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 316
    :goto_0
    return v0

    .line 302
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    const-string v0, "key_camera_anti_banding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/SettingController;->setSettingAllPreferences(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 307
    :cond_2
    const-string v0, "key_restore"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "key_help_guide"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 309
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 310
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/SettingController;->setSettingAllPreferences(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 312
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 316
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/setting/Setting;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected setSettingAllPreferences(II)Z
    .locals 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 341
    const/4 v1, 0x1

    .line 342
    .local v1, mainSetting:Z
    const/4 v0, 0x1

    .line 345
    .local v0, frontSetting:Z
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_1

    .line 346
    iget-object v2, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-virtual {v2, p1, p2}, Lcom/lge/camera/setting/CameraSetting;->setSetting(II)Z

    move-result v1

    .line 347
    iget-object v2, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-virtual {v2, p1, p2}, Lcom/lge/camera/setting/CameraSetting;->setSetting(II)Z

    move-result v0

    .line 353
    :goto_0
    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 349
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-virtual {v2, p1, p2}, Lcom/lge/camera/setting/VideoSetting;->setSetting(II)Z

    move-result v1

    .line 350
    iget-object v2, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-virtual {v2, p1, p2}, Lcom/lge/camera/setting/VideoSetting;->setSetting(II)Z

    move-result v0

    goto :goto_0

    .line 353
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected setSettingAllPreferences(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 320
    const/4 v1, 0x1

    .line 321
    .local v1, mainSetting:Z
    const/4 v0, 0x1

    .line 324
    .local v0, frontSetting:Z
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_1

    .line 325
    iget-object v2, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-virtual {v2, p1, p2}, Lcom/lge/camera/setting/CameraSetting;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 326
    iget-object v2, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-virtual {v2, p1, p2}, Lcom/lge/camera/setting/CameraSetting;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 332
    :goto_0
    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 328
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-virtual {v2, p1, p2}, Lcom/lge/camera/setting/VideoSetting;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 329
    iget-object v2, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-virtual {v2, p1, p2}, Lcom/lge/camera/setting/VideoSetting;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 332
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public setSettingForDualCamera(Z)V
    .locals 5
    .parameter "value"

    .prologue
    .line 544
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_swap"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 545
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_voiceshutter"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 546
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_flash"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 547
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_zoom"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 548
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 549
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_picturesize"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 550
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_smart_mode"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 551
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_time_machine"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 552
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_brightness"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 553
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_scene_mode"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 554
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_save_direction"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 556
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 557
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setMenuEnableForSceneMode(I)V

    .line 563
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_timer"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 564
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportedAutoReview()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_auto_review"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 568
    :cond_0
    if-nez p1, :cond_3

    .line 569
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_voiceshutter"

    const-string v3, "off"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 570
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->resetBrightnessController()V

    .line 573
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 574
    .local v0, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_1

    .line 575
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 579
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_scene_mode"

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_scene_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 580
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v1

    if-nez v1, :cond_2

    .line 581
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_iso"

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_iso"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 585
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_whitebalance"

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_whitebalance"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 586
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_coloreffect"

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_coloreffect"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 587
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_timer"

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_timer"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 588
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportedAutoReview()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 589
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_auto_review"

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_auto_review"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 592
    .end local v0           #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_3
    return-void

    .line 559
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_iso"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 560
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_whitebalance"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 561
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_coloreffect"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public setTimeMachineLimit(Z)V
    .locals 12
    .parameter "set"

    .prologue
    .line 595
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isTimeMachineShotSizeLimit()Z

    move-result v9

    if-nez v9, :cond_0

    .line 641
    :goto_0
    return-void

    .line 599
    :cond_0
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_picturesize"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v5

    .line 600
    .local v5, pictureSizePref:Lcom/lge/camera/setting/ListPreference;
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_picturesize"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v6

    .line 602
    .local v6, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v5, :cond_1

    if-nez v6, :cond_2

    .line 603
    :cond_1
    const-string v9, "CameraApp"

    const-string v10, "pictureSizePref or pref is null"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 606
    :cond_2
    const-string v9, "CameraApp"

    const-string v10, "setTimeMachineLimit"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 608
    .local v8, values:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 609
    .local v3, limitSize:Z
    invoke-virtual {v6}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 610
    .local v4, mSelectedSize:Ljava/lang/String;
    const/4 v7, 0x0

    .line 611
    .local v7, size:Ljava/lang/String;
    const/4 v0, 0x1

    .line 613
    .local v0, available:Z
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v8

    .local v2, len:I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 614
    aget-object v9, v8, v1

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 616
    const/4 v0, 0x1

    .line 618
    invoke-static {v7}, Lcom/lge/camera/properties/FunctionProperties;->isTimeMachineShotSizeAvailable(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz p1, :cond_3

    .line 619
    const/4 v3, 0x1

    .line 620
    const/4 v0, 0x0

    .line 622
    :cond_3
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_picturesize"

    invoke-interface {v9, v10, v7, v0}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 624
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    .line 625
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_picturesize"

    invoke-interface {v9, v10, v7, v0}, Lcom/lge/camera/ControllerFunction;->setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 630
    :cond_4
    invoke-static {v4}, Lcom/lge/camera/properties/FunctionProperties;->isTimeMachineShotSizeAvailable(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 631
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_picturesize"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v4, v11}, Lcom/lge/camera/ControllerFunction;->setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 634
    :cond_5
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v10, Lcom/lge/camera/controller/SettingController$3;

    invoke-direct {v10, p0}, Lcom/lge/camera/controller/SettingController$3;-><init>(Lcom/lge/camera/controller/SettingController;)V

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 613
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public startRotation(I)V
    .locals 0
    .parameter "degree"

    .prologue
    .line 750
    return-void
.end method
