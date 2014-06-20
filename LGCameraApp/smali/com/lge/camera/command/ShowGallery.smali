.class public Lcom/lge/camera/command/ShowGallery;
.super Lcom/lge/camera/command/Command;
.source "ShowGallery.java"


# instance fields
.field private mCheckingLastThumbnail:Z

.field private mThumbnailUri:Landroid/net/Uri;

.field private mUriPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/command/ShowGallery;->mCheckingLastThumbnail:Z

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/command/ShowGallery;->mThumbnailUri:Landroid/net/Uri;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/command/ShowGallery;->mUriPath:Ljava/lang/String;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/command/ShowGallery;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lge/camera/command/ShowGallery;->mThumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/camera/command/ShowGallery;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lge/camera/command/ShowGallery;->mThumbnailUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$102(Lcom/lge/camera/command/ShowGallery;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lge/camera/command/ShowGallery;->mUriPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lge/camera/command/ShowGallery;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/lge/camera/command/ShowGallery;->checkUriAndShowGallery()V

    return-void
.end method

.method static synthetic access$302(Lcom/lge/camera/command/ShowGallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/lge/camera/command/ShowGallery;->mCheckingLastThumbnail:Z

    return p1
.end method

.method private checkUriAndShowGallery()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 96
    iget-object v3, p0, Lcom/lge/camera/command/ShowGallery;->mUriPath:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/command/ShowGallery;->mThumbnailUri:Landroid/net/Uri;

    if-nez v3, :cond_1

    .line 97
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5}, Lcom/lge/camera/ControllerFunction;->setGalleryLaunching(Z)V

    .line 98
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getThumbnailAndUpdateButton()V

    .line 99
    const-string v3, "CameraApp"

    const-string v4, "Uri is not valid"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show gallery return - thumbnailUri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/command/ShowGallery;->mThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPreviewOnGoing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5}, Lcom/lge/camera/ControllerFunction;->setGalleryLaunching(Z)V

    goto :goto_0

    .line 109
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_3

    .line 110
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v3

    if-eqz v3, :cond_3

    .line 111
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->cancelAutoFocus()V

    .line 112
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->setFocusRectangleInitialize()V

    .line 116
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 117
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 121
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    const-string v3, "com.miui.gallery"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 133
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/command/ShowGallery;->mThumbnailUri:Landroid/net/Uri;

    invoke-direct {p0, v3, v1}, Lcom/lge/camera/command/ShowGallery;->launchingGallery(Landroid/net/Uri;Landroid/content/pm/ApplicationInfo;)V

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "CameraApp"

    const-string v4, "Gallery is not founded:"

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSamsungModel()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    .line 126
    :cond_4
    iget-object v3, p0, Lcom/lge/camera/command/ShowGallery;->mThumbnailUri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/lge/camera/command/ShowGallery;->launchingGallery(Landroid/net/Uri;Landroid/content/pm/ApplicationInfo;)V

    goto :goto_1

    .line 128
    :cond_5
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5}, Lcom/lge/camera/ControllerFunction;->setGalleryLaunching(Z)V

    goto :goto_0
.end method

.method private launchingGallery(Landroid/net/Uri;Landroid/content/pm/ApplicationInfo;)V
    .locals 6
    .parameter "thumbnailUri"
    .parameter "info"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 138
    if-eqz p2, :cond_1

    iget-boolean v2, p2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_1

    .line 139
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->setGalleryLaunching(Z)V

    .line 140
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->restoreLiveEffectSubMenu()V

    .line 141
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->clearQuickFunctionSubMenu()V

    .line 142
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v3, 0x18

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->showDialogPopup(I)V

    .line 145
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    .line 146
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5, v4}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 147
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5, v4}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.REVIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 152
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 154
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getStorageState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getStorageState()I

    move-result v2

    if-nez v2, :cond_0

    .line 156
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "CameraApp"

    const-string v3, "review fail"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->setGalleryLaunching(Z)V

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/ShowGallery;->execute(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 6
    .parameter "arg"

    .prologue
    .line 37
    const-string v4, "CameraApp"

    const-string v5, "ShowGallery - start"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 39
    check-cast v0, Landroid/os/Bundle;

    .line 40
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "useAsPostview"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 42
    .local v2, useAsPostview:Z
    if-eqz v2, :cond_3

    .line 43
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v4

    if-nez v4, :cond_2

    .line 44
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/command/ShowGallery;->mThumbnailUri:Landroid/net/Uri;

    .line 45
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/command/ShowGallery;->mThumbnailUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/command/ShowGallery;->mUriPath:Ljava/lang/String;

    .line 92
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/lge/camera/command/ShowGallery;->checkUriAndShowGallery()V

    .line 93
    :cond_1
    :goto_1
    return-void

    .line 47
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v3

    .line 48
    .local v3, video:Lcom/lge/camera/VideoFile;
    if-eqz v3, :cond_0

    .line 49
    invoke-virtual {v3}, Lcom/lge/camera/VideoFile;->getUri()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/command/ShowGallery;->mThumbnailUri:Landroid/net/Uri;

    .line 50
    invoke-virtual {v3}, Lcom/lge/camera/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/command/ShowGallery;->mUriPath:Ljava/lang/String;

    goto :goto_0

    .line 54
    .end local v3           #video:Lcom/lge/camera/VideoFile;
    :cond_3
    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 55
    iget-boolean v4, p0, Lcom/lge/camera/command/ShowGallery;->mCheckingLastThumbnail:Z

    if-nez v4, :cond_1

    .line 59
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lge/camera/command/ShowGallery;->mCheckingLastThumbnail:Z

    .line 60
    new-instance v1, Lcom/lge/camera/command/ShowGallery$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/ShowGallery$1;-><init>(Lcom/lge/camera/command/ShowGallery;)V

    .line 83
    .local v1, checkingThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 84
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/util/SecureImageUtil;->release()V

    goto :goto_1

    .line 88
    .end local v1           #checkingThread:Ljava/lang/Thread;
    :cond_4
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getThumbnailControllerUri()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/command/ShowGallery;->mThumbnailUri:Landroid/net/Uri;

    .line 89
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/command/ShowGallery;->mThumbnailUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/command/ShowGallery;->mUriPath:Ljava/lang/String;

    goto :goto_0
.end method
