.class Lcom/android/lgesettings/wifi/WifiDialog;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/lgesettings/wifi/WifiConfigUiBase;


# static fields
.field private static final mLgeKtCm:Z


# instance fields
.field private final FULL_HD_RESOLUTION:I

.field private final HELP_INDEX1_TOP_SIZE:I

.field private final HELP_INDEX2_TOP_SIZE:I

.field private final mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/lgesettings/wifi/WifiConfigController;

.field private final mEdit:Z

.field public mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

.field private mHandler:Landroid/os/Handler;

.field private mIpAndProxyInvalid:Z

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPasswordView:Landroid/widget/EditText;

.field private mPopupView:Landroid/view/View;

.field private mSsid:Landroid/widget/EditText;

.field public mTimer:Ljava/util/Timer;

.field private mView:Landroid/view/View;

.field private marginSizeInLandscape:I

.field private widthInLandscape:I

.field private widthInPortrait:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 72
    const-string v1, "wifi.lge.kt.cm"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/lgesettings/wifi/WifiDialog;->mLgeKtCm:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/lgesettings/wifi/AccessPoint;Z)V
    .locals 2
    .parameter "context"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v1, 0x0

    .line 243
    const v0, 0x7f100053

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 74
    iput-boolean v1, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mIpAndProxyInvalid:Z

    .line 93
    const/16 v0, 0xd7

    iput v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->HELP_INDEX1_TOP_SIZE:I

    .line 94
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->HELP_INDEX2_TOP_SIZE:I

    .line 104
    iput v1, p0, Lcom/android/lgesettings/wifi/WifiDialog;->widthInPortrait:I

    .line 105
    iput v1, p0, Lcom/android/lgesettings/wifi/WifiDialog;->widthInLandscape:I

    .line 106
    iput v1, p0, Lcom/android/lgesettings/wifi/WifiDialog;->marginSizeInLandscape:I

    .line 107
    const v0, 0x1fa400

    iput v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->FULL_HD_RESOLUTION:I

    .line 245
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mContext:Landroid/content/Context;

    .line 247
    iput-boolean p4, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mEdit:Z

    .line 248
    iput-object p2, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 249
    iput-object p3, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/lgesettings/wifi/AccessPoint;ZI)V
    .locals 2
    .parameter "context"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "theme"

    .prologue
    const/4 v1, 0x0

    .line 255
    invoke-direct {p0, p1, p5}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 74
    iput-boolean v1, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mIpAndProxyInvalid:Z

    .line 93
    const/16 v0, 0xd7

    iput v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->HELP_INDEX1_TOP_SIZE:I

    .line 94
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->HELP_INDEX2_TOP_SIZE:I

    .line 104
    iput v1, p0, Lcom/android/lgesettings/wifi/WifiDialog;->widthInPortrait:I

    .line 105
    iput v1, p0, Lcom/android/lgesettings/wifi/WifiDialog;->widthInLandscape:I

    .line 106
    iput v1, p0, Lcom/android/lgesettings/wifi/WifiDialog;->marginSizeInLandscape:I

    .line 107
    const v0, 0x1fa400

    iput v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->FULL_HD_RESOLUTION:I

    .line 258
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mContext:Landroid/content/Context;

    .line 260
    iput-boolean p4, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mEdit:Z

    .line 261
    iput-object p2, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 262
    iput-object p3, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    .line 263
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/wifi/WifiDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mPasswordView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/wifi/WifiDialog;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/wifi/WifiDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private calWidth()V
    .locals 5

    .prologue
    const v4, 0x40ea8f5c

    .line 461
    iget v2, p0, Lcom/android/lgesettings/wifi/WifiDialog;->widthInLandscape:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/lgesettings/wifi/WifiDialog;->widthInPortrait:I

    if-nez v2, :cond_1

    .line 462
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 463
    .local v0, width1:I
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 465
    .local v1, width2:I
    const v2, 0x1fa400

    mul-int v3, v0, v1

    if-ne v2, v3, :cond_2

    .line 466
    const v2, 0x42fb570a

    invoke-direct {p0, v2}, Lcom/android/lgesettings/wifi/WifiDialog;->dip2px(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/lgesettings/wifi/WifiDialog;->marginSizeInLandscape:I

    .line 472
    :goto_0
    if-le v0, v1, :cond_3

    .line 473
    iget v2, p0, Lcom/android/lgesettings/wifi/WifiDialog;->marginSizeInLandscape:I

    sub-int v2, v0, v2

    iput v2, p0, Lcom/android/lgesettings/wifi/WifiDialog;->widthInLandscape:I

    .line 474
    invoke-direct {p0, v4}, Lcom/android/lgesettings/wifi/WifiDialog;->dip2px(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    iput v2, p0, Lcom/android/lgesettings/wifi/WifiDialog;->widthInPortrait:I

    .line 482
    .end local v0           #width1:I
    .end local v1           #width2:I
    :cond_1
    :goto_1
    return-void

    .line 469
    .restart local v0       #width1:I
    .restart local v1       #width2:I
    :cond_2
    const v2, 0x42e2a8f6

    invoke-direct {p0, v2}, Lcom/android/lgesettings/wifi/WifiDialog;->dip2px(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/lgesettings/wifi/WifiDialog;->marginSizeInLandscape:I

    goto :goto_0

    .line 477
    :cond_3
    iget v2, p0, Lcom/android/lgesettings/wifi/WifiDialog;->marginSizeInLandscape:I

    sub-int v2, v1, v2

    iput v2, p0, Lcom/android/lgesettings/wifi/WifiDialog;->widthInLandscape:I

    .line 478
    invoke-direct {p0, v4}, Lcom/android/lgesettings/wifi/WifiDialog;->dip2px(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    iput v2, p0, Lcom/android/lgesettings/wifi/WifiDialog;->widthInPortrait:I

    goto :goto_1
.end method

.method private dip2px(F)I
    .locals 4
    .parameter "dip"

    .prologue
    .line 450
    const/4 v0, 0x0

    .line 451
    .local v0, px:I
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 452
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    .line 454
    :cond_0
    const-string v1, "WifiDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dip = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", px = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mIpAndProxyInvalid:Z

    .line 270
    return-void
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 274
    const-string v0, "WifiDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dismiss()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiDialog;->hideExpandableNotificationGuide()V

    .line 283
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mIpAndProxyInvalid:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 284
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 292
    :cond_1
    return-void
.end method

.method public getController()Lcom/android/lgesettings/wifi/WifiConfigController;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mController:Lcom/android/lgesettings/wifi/WifiConfigController;

    return-object v0
.end method

.method public getExpandableNotificationYesButton()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 385
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mContext:Landroid/content/Context;

    const-string v3, "setExpandableNotificationYesButton"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 386
    .local v1, pref_tutorialYNbutton:Landroid/content/SharedPreferences;
    const-string v2, "setExpandableNotificationYesButton"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 388
    .local v0, bStatus:Z
    return v0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 400
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public hideExpandableNotificationGuide()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 120
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 302
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401a4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mView:Landroid/view/View;

    .line 305
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0104

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mSsid:Landroid/widget/EditText;

    .line 307
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mSsid:Landroid/widget/EditText;

    const-string v1, "jp.co.omronsoft.iwnnime.ml.mode=5"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiDialog;->calWidth()V

    .line 316
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0384

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mPasswordView:Landroid/widget/EditText;

    .line 317
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mPasswordView:Landroid/widget/EditText;

    new-instance v1, Lcom/android/lgesettings/wifi/WifiDialog$2;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/wifi/WifiDialog$2;-><init>(Lcom/android/lgesettings/wifi/WifiDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 333
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiDialog;->setView(Landroid/view/View;)V

    .line 334
    invoke-virtual {p0, v4}, Lcom/android/lgesettings/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    .line 335
    new-instance v0, Lcom/android/lgesettings/wifi/WifiConfigController;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-boolean v3, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mEdit:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/lgesettings/wifi/WifiConfigController;-><init>(Lcom/android/lgesettings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/lgesettings/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mController:Lcom/android/lgesettings/wifi/WifiConfigController;

    .line 336
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 340
    sget-boolean v0, Lcom/android/lgesettings/wifi/WifiDialog;->mLgeKtCm:Z

    if-nez v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mController:Lcom/android/lgesettings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 346
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiDialog;->getExpandableNotificationYesButton()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/lgesettings/SubSettings;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/lgesettings/Settings$WifiSettingsActivity;

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 350
    :cond_3
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v4}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mTimer:Ljava/util/Timer;

    .line 351
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mHandler:Landroid/os/Handler;

    .line 352
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/lgesettings/wifi/WifiDialog$3;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/wifi/WifiDialog$3;-><init>(Lcom/android/lgesettings/wifi/WifiDialog;)V

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 376
    :cond_4
    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiDialog;->hideExpandableNotificationGuide()V

    .line 435
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/lgesettings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 436
    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 420
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/lgesettings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 421
    return-void
.end method

.method public setIpAndProxyInvalid(Z)V
    .locals 0
    .parameter "IpAndProxyInvalid"

    .prologue
    .line 440
    iput-boolean p1, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mIpAndProxyInvalid:Z

    .line 441
    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 415
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/lgesettings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 416
    return-void
.end method

.method public showExpandableNotificationGuide(Landroid/view/View;I)V
    .locals 12
    .parameter "where"
    .parameter "scene"

    .prologue
    const v11, 0x7f0a0112

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 128
    const-string v6, "WifiDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " :showExpandableNotificationGuide():scene= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_0

    .line 139
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->dismiss()V

    .line 143
    :cond_0
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 144
    .local v5, wm:Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 145
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 146
    .local v4, orientation:I
    const-string v6, "WifiDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "### orientation:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", widthInLandscape:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/lgesettings/wifi/WifiDialog;->widthInLandscape:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", widthInPortrait:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/lgesettings/wifi/WifiDialog;->widthInPortrait:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", scene:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    const v7, 0x7f04007c

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mPopupView:Landroid/view/View;

    .line 153
    const/4 v6, 0x1

    if-eq v4, v6, :cond_1

    const/4 v6, 0x3

    if-ne v4, v6, :cond_2

    .line 154
    :cond_1
    new-instance v6, Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mPopupView:Landroid/view/View;

    iget v8, p0, Lcom/android/lgesettings/wifi/WifiDialog;->widthInLandscape:I

    invoke-direct {v6, v7, v8, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v6, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    .line 164
    :goto_0
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 174
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mPopupView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    new-instance v7, Lcom/android/lgesettings/wifi/WifiDialog$1;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/wifi/WifiDialog$1;-><init>(Lcom/android/lgesettings/wifi/WifiDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mPopupView:Landroid/view/View;

    const v7, 0x7f0a010f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 183
    .local v3, guideTitle:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mPopupView:Landroid/view/View;

    const v7, 0x7f0a0111

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 186
    .local v2, guideText:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mPopupView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 190
    .local v1, guideButton:Landroid/widget/Button;
    packed-switch p2, :pswitch_data_0

    .line 238
    :goto_1
    return-void

    .line 157
    .end local v1           #guideButton:Landroid/widget/Button;
    .end local v2           #guideText:Landroid/widget/TextView;
    .end local v3           #guideTitle:Landroid/widget/TextView;
    :cond_2
    new-instance v6, Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mPopupView:Landroid/view/View;

    iget v8, p0, Lcom/android/lgesettings/wifi/WifiDialog;->widthInPortrait:I

    invoke-direct {v6, v7, v8, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v6, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 207
    .restart local v1       #guideButton:Landroid/widget/Button;
    .restart local v2       #guideText:Landroid/widget/TextView;
    .restart local v3       #guideTitle:Landroid/widget/TextView;
    :pswitch_0
    const v6, 0x7f0816ca

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 208
    const v6, 0x7f0816b8

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 209
    const v6, 0x7f080a8a

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 210
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 211
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 213
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiDialog;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    const/16 v7, 0x51

    const/16 v8, -0x96

    invoke-virtual {v6, p1, v7, v9, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
