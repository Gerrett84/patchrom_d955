.class public Lcom/lge/camera/CameraHelp;
.super Landroid/app/Activity;
.source "CameraHelp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/CameraHelp$HelpHandler;,
        Lcom/lge/camera/CameraHelp$CameraScreenOffReceiver;,
        Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;
    }
.end annotation


# static fields
.field private static final MSG_SHOW_ITEM:I


# instance fields
.field private delayTimeToMoveSelectedItem:I

.field private isScrolled:Z

.field private mCameraId:I

.field private mHandler:Landroid/os/Handler;

.field private mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

.field private mHelpListView:Landroid/widget/ListView;

.field private mHelpMode:I

.field private mKeyString:Ljava/lang/String;

.field private mMediaReceiver:Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;

.field private mScreenOffReceiver:Lcom/lge/camera/CameraHelp$CameraScreenOffReceiver;

.field private mSecureCamera:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/CameraHelp;->mHandler:Landroid/os/Handler;

    .line 47
    iput-boolean v1, p0, Lcom/lge/camera/CameraHelp;->mSecureCamera:Z

    .line 52
    iput-boolean v1, p0, Lcom/lge/camera/CameraHelp;->isScrolled:Z

    .line 53
    const/16 v0, 0x12c

    iput v0, p0, Lcom/lge/camera/CameraHelp;->delayTimeToMoveSelectedItem:I

    .line 273
    return-void
.end method

.method static synthetic access$002(Lcom/lge/camera/CameraHelp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/lge/camera/CameraHelp;->isScrolled:Z

    return p1
.end method

.method private registerCameraScreenOffReceiver(Lcom/lge/camera/CameraHelp$CameraScreenOffReceiver;)V
    .locals 2
    .parameter "receiver"

    .prologue
    .line 229
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/CameraHelp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 230
    return-void
.end method

.method private registerMediaReceiver(Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;)V
    .locals 2
    .parameter "receiver"

    .prologue
    .line 211
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/CameraHelp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 226
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    .line 295
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Help onConfigurationChanged ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lge/camera/CameraHelp;->isScrolled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-boolean v2, p0, Lcom/lge/camera/CameraHelp;->isScrolled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/CameraHelp;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/lge/camera/CameraHelp;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    iget v4, p0, Lcom/lge/camera/CameraHelp;->delayTimeToMoveSelectedItem:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 299
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 300
    .local v0, outMetrics:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraHelp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 301
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 302
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Lcom/lge/camera/properties/CameraConstants;->setLcdSize(II)V

    .line 303
    iget-object v2, p0, Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    if-eqz v2, :cond_1

    .line 304
    iget-object v2, p0, Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Lcom/lge/camera/adapter/HelpItemAdapter;->setOrientation(I)V

    .line 305
    iget-object v2, p0, Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    invoke-virtual {v2}, Lcom/lge/camera/adapter/HelpItemAdapter;->refreshDialog()V

    .line 307
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 308
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 60
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 61
    .local v9, outMetrics:Landroid/util/DisplayMetrics;
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraHelp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    .line 62
    .local v13, wm:Landroid/view/WindowManager;
    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 63
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Lcom/lge/camera/properties/CameraConstants;->setLcdSize(II)V

    .line 65
    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 66
    .local v6, ab:Landroid/app/ActionBar;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 68
    new-instance v0, Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;

    invoke-direct {v0, p0, p0}, Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;-><init>(Lcom/lge/camera/CameraHelp;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lge/camera/CameraHelp;->mMediaReceiver:Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;

    .line 69
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mMediaReceiver:Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;

    invoke-direct {p0, v0}, Lcom/lge/camera/CameraHelp;->registerMediaReceiver(Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;)V

    .line 71
    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 73
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "helpMode"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/CameraHelp;->mHelpMode:I

    .line 74
    const-string v0, "HelpIndex"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/CameraHelp;->mKeyString:Ljava/lang/String;

    .line 75
    const-string v0, "CameraId"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/CameraHelp;->mCameraId:I

    .line 76
    const-string v0, "secureCamera"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/camera/CameraHelp;->mSecureCamera:Z

    .line 78
    iget-boolean v0, p0, Lcom/lge/camera/CameraHelp;->mSecureCamera:Z

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Lcom/lge/camera/CameraHelp$CameraScreenOffReceiver;

    invoke-direct {v0, p0, p0}, Lcom/lge/camera/CameraHelp$CameraScreenOffReceiver;-><init>(Lcom/lge/camera/CameraHelp;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lge/camera/CameraHelp;->mScreenOffReceiver:Lcom/lge/camera/CameraHelp$CameraScreenOffReceiver;

    .line 80
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mScreenOffReceiver:Lcom/lge/camera/CameraHelp$CameraScreenOffReceiver;

    invoke-direct {p0, v0}, Lcom/lge/camera/CameraHelp;->registerCameraScreenOffReceiver(Lcom/lge/camera/CameraHelp$CameraScreenOffReceiver;)V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/lge/camera/CameraHelp;->mSecureCamera:Z

    invoke-static {v0, v1, v2}, Lcom/lge/camera/util/Common;->configureWindowFlag(Landroid/view/Window;ZZ)V

    .line 84
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraHelp;->setContentView(I)V

    .line 86
    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v10

    .line 87
    .local v10, rotation:I
    const/4 v5, 0x2

    .line 88
    .local v5, orientation:I
    packed-switch v10, :pswitch_data_0

    .line 99
    :goto_0
    new-instance v0, Lcom/lge/camera/adapter/HelpItemAdapter;

    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/lge/camera/CameraHelp;->mHelpMode:I

    iget v4, p0, Lcom/lge/camera/CameraHelp;->mCameraId:I

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/adapter/HelpItemAdapter;-><init>(Landroid/content/Context;Landroid/app/Activity;III)V

    iput-object v0, p0, Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    .line 100
    const v0, 0x7f0900b1

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lge/camera/CameraHelp;->mHelpListView:Landroid/widget/ListView;

    .line 101
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mHelpListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    new-instance v0, Lcom/lge/camera/CameraHelp$HelpHandler;

    iget-object v1, p0, Lcom/lge/camera/CameraHelp;->mHelpListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    iget-object v3, p0, Lcom/lge/camera/CameraHelp;->mKeyString:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/camera/CameraHelp$HelpHandler;-><init>(Landroid/widget/ListView;Lcom/lge/camera/adapter/HelpItemAdapter;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/CameraHelp;->mHandler:Landroid/os/Handler;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/CameraHelp;->isScrolled:Z

    .line 106
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mHelpListView:Landroid/widget/ListView;

    new-instance v1, Lcom/lge/camera/CameraHelp$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/CameraHelp$1;-><init>(Lcom/lge/camera/CameraHelp;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 116
    const/4 v12, 0x0

    .line 117
    .local v12, version_name:Ljava/lang/String;
    const/4 v11, 0x0

    .line 119
    .local v11, title_version:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v12, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 120
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VersionName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_1
    iget v0, p0, Lcom/lge/camera/CameraHelp;->mHelpMode:I

    if-nez v0, :cond_1

    .line 126
    const v0, 0x7f0b019a

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraHelp;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 130
    :goto_2
    invoke-virtual {v6, v11}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {p0, v11}, Lcom/lge/camera/CameraHelp;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mHelpListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    iget-object v2, p0, Lcom/lge/camera/CameraHelp;->mKeyString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lge/camera/adapter/HelpItemAdapter;->getItemPosition(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 133
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v8}, Lcom/lge/camera/CameraHelp;->setResult(ILandroid/content/Intent;)V

    .line 134
    return-void

    .line 91
    .end local v11           #title_version:Ljava/lang/String;
    .end local v12           #version_name:Ljava/lang/String;
    :pswitch_0
    const/4 v5, 0x1

    .line 92
    goto/16 :goto_0

    .line 95
    :pswitch_1
    const/4 v5, 0x2

    goto/16 :goto_0

    .line 121
    .restart local v11       #title_version:Ljava/lang/String;
    .restart local v12       #version_name:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 122
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "CameraApp"

    const-string v1, "VersionName is not found, "

    invoke-static {v0, v1, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 128
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const v0, 0x7f0b01ec

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraHelp;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 193
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mMediaReceiver:Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mMediaReceiver:Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraHelp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    iput-object v1, p0, Lcom/lge/camera/CameraHelp;->mMediaReceiver:Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mScreenOffReceiver:Lcom/lge/camera/CameraHelp$CameraScreenOffReceiver;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mScreenOffReceiver:Lcom/lge/camera/CameraHelp$CameraScreenOffReceiver;

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraHelp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 199
    iput-object v1, p0, Lcom/lge/camera/CameraHelp;->mScreenOffReceiver:Lcom/lge/camera/CameraHelp$CameraScreenOffReceiver;

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    invoke-virtual {v0}, Lcom/lge/camera/adapter/HelpItemAdapter;->unbind()V

    .line 203
    iput-object v1, p0, Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    .line 205
    :cond_2
    iput-object v1, p0, Lcom/lge/camera/CameraHelp;->mHandler:Landroid/os/Handler;

    .line 206
    iput-object v1, p0, Lcom/lge/camera/CameraHelp;->mHelpListView:Landroid/widget/ListView;

    .line 207
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 312
    sparse-switch p1, :sswitch_data_0

    .line 321
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 315
    :sswitch_0
    const-string v0, "CameraApp"

    const-string v1, "KEYCODE_MENU or KEYCODE_BACK keyup"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 138
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 144
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 141
    :pswitch_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->finish()V

    .line 142
    const/4 v0, 0x1

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 182
    iput-boolean v2, p0, Lcom/lge/camera/CameraHelp;->mSecureCamera:Z

    .line 183
    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/camera/CameraHelp;->mSecureCamera:Z

    invoke-static {v0, v2, v1}, Lcom/lge/camera/util/Common;->configureWindowFlag(Landroid/view/Window;ZZ)V

    .line 184
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    invoke-virtual {v0}, Lcom/lge/camera/adapter/HelpItemAdapter;->onPause()V

    .line 187
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 188
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 150
    const-string v0, "CameraApp"

    const-string v1, "onRestart()-start "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lge/camera/util/CheckStatusManager;->setEnterCheckComplete(Z)V

    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 153
    const-string v0, "CameraApp"

    const-string v1, "onRestart()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 158
    const-string v0, "CameraApp"

    const-string v1, "onResume()-start "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/lge/camera/util/CheckStatusManager;->checkEnterApplication(Landroid/app/Activity;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 162
    const-string v0, "CameraApp"

    const-string v1, "onResume()-end,  checkEnterApplication"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/camera/util/CheckStatusManager;->checkCameraOut(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 168
    const-string v0, "CameraApp"

    const-string v1, "onResume()-end "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 174
    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 175
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-static {p0}, Lcom/lge/camera/util/AppControlUtil;->setNavigationBgTransparent(Landroid/app/Activity;)V

    .line 178
    :cond_0
    return-void
.end method
