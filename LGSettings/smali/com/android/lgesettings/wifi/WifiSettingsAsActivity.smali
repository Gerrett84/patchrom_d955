.class public Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;
.super Ljava/lang/Object;
.source "WifiSettingsAsActivity.java"

# interfaces
.implements Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;


# instance fields
.field private final FULL_HD_RESOLUTION:I

.field private final HELP_INDEX1_TOP_SIZE:I

.field private final HELP_INDEX2_TOP_SIZE:I

.field private mAccessPointCategory:Landroid/preference/PreferenceCategory;

.field mAlertDialogView:Landroid/view/View;

.field private mAutomaticConnectionCheckBox:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/widget/TextView;

.field public mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

.field public mInterHelpIndex:I

.field private mP2pSupported:Z

.field private mPopupView:Landroid/view/View;

.field private mScanView:Landroid/view/View;

.field private mWifiDirectView:Landroid/view/View;

.field private mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

.field private marginSizeInLandscape:I

.field targetDevice:Ljava/lang/String;

.field targetProductName:Ljava/lang/String;

.field private widthInLandscape:I

.field private widthInPortrait:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->HELP_INDEX1_TOP_SIZE:I

    .line 104
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->HELP_INDEX2_TOP_SIZE:I

    .line 119
    iput v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->widthInPortrait:I

    .line 120
    iput v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->widthInLandscape:I

    .line 121
    iput v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->marginSizeInLandscape:I

    .line 122
    const v0, 0x1fa400

    iput v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->FULL_HD_RESOLUTION:I

    .line 130
    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->targetDevice:Ljava/lang/String;

    .line 132
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->targetProductName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)Lcom/android/lgesettings/wifi/WifiSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mPopupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private dip2px(F)I
    .locals 4
    .parameter

    .prologue
    .line 862
    const/4 v0, 0x0

    .line 863
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 864
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 866
    :cond_0
    const-string v1, "WifiSettings"

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

    .line 867
    return v0
.end method


# virtual methods
.method public createTutorialYNPopup()V
    .locals 6

    .prologue
    .line 776
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 777
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0401b0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mAlertDialogView:Landroid/view/View;

    .line 779
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0816c1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mAlertDialogView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$11;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$11;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0816c6

    new-instance v5, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$10;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$10;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0816c5

    new-instance v5, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$9;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$9;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 845
    .local v2, mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mAlertDialogView:Landroid/view/View;

    const v4, 0x7f0a002e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    new-instance v4, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$12;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$12;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 855
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 856
    .local v1, mAlertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 857
    return-void
.end method

.method public getExpandableNotificationIndex()I
    .locals 3

    .prologue
    .line 717
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getExpandableNotificationIndex() ,mInterHelpIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mInterHelpIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mInterHelpIndex:I

    return v0
.end method

.method public getExpandableNotificationYesButton()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 747
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mContext:Landroid/content/Context;

    const-string v3, "setExpandableNotificationYesButton"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 748
    .local v1, pref_tutorialYNbutton:Landroid/content/SharedPreferences;
    const-string v2, "setExpandableNotificationYesButton"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 750
    .local v0, bStatus:Z
    return v0
.end method

.method public hideExpandableNotificationGuide()V
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 713
    :cond_0
    return-void
.end method

.method public onAddAccessPoint(Landroid/preference/Preference;)V
    .locals 1
    .parameter "accessPoint"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 356
    :cond_0
    return-void
.end method

.method public onAddMessage(I)V
    .locals 1
    .parameter "msgId"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 349
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;Z)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"
    .parameter "wifiIsEnabled"

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 281
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->targetDevice:Ljava/lang/String;

    const-string v1, "awifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->targetDevice:Ljava/lang/String;

    const-string v1, "awifi070u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 282
    invoke-static {}, Lcom/android/lgesettings/Utils;->isRTLLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/lgesettings/Utils;->isEnglishDigitRTLLanguage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 283
    :cond_0
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mP2pSupported:Z

    if-eqz v0, :cond_1

    .line 284
    const v0, 0x7f0802a1

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 288
    :cond_1
    const v0, 0x7f080307

    invoke-interface {p1, v2, v6, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 303
    :cond_2
    :goto_0
    const v0, 0x7f08029e

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 307
    const/4 v0, 0x2

    const v1, 0x7f0802a0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 310
    const v0, 0x7f08029c

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 315
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_3

    .line 316
    invoke-static {}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getAllowWiFiProfileManagement()Z

    move-result v0

    if-nez v0, :cond_3

    .line 317
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 322
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-static {}, Lcom/android/lgesettings/wifi/WifiSettings;->isConnectionHistory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 323
    const/16 v0, 0x64

    const v1, 0x7f08168a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 327
    :cond_4
    const/4 v0, 0x5

    const v1, 0x7f0802ee

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 332
    invoke-static {}, Lcom/android/lgesettings/wifi/WifiSettings;->isSupportNSWO()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 333
    const/16 v0, 0x65

    const v1, 0x7f081619

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 336
    :cond_5
    return-void

    .line 293
    :cond_6
    const v0, 0x7f080307

    invoke-interface {p1, v2, v6, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 296
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mP2pSupported:Z

    if-eqz v0, :cond_2

    .line 297
    const v0, 0x7f0802a1

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0
.end method

.method public onGetAccessPoint(I)Landroid/preference/Preference;
    .locals 1
    .parameter "i"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 371
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    goto :goto_0
.end method

.method public onGetAccessPointCount()I
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 363
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitView(Lcom/android/lgesettings/wifi/WifiSettings;Landroid/widget/Switch;)V
    .locals 14
    .parameter "wifiSettings"
    .parameter "actionBarSwitch"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    .line 137
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    if-eqz v9, :cond_7

    .line 138
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v9}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iput-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mContext:Landroid/content/Context;

    .line 143
    iget v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->widthInLandscape:I

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->widthInPortrait:I

    if-nez v9, :cond_1

    .line 144
    :cond_0
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v7, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 145
    .local v7, width1:I
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v8, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 147
    .local v8, width2:I
    const v9, 0x1fa400

    mul-int v10, v7, v8

    if-ne v9, v10, :cond_8

    .line 148
    const v9, 0x42fb570a

    invoke-direct {p0, v9}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->dip2px(F)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->marginSizeInLandscape:I

    .line 154
    :goto_0
    if-le v7, v8, :cond_9

    .line 155
    iget v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->marginSizeInLandscape:I

    sub-int v9, v7, v9

    iput v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->widthInLandscape:I

    .line 156
    const v9, 0x40ea8f5c

    invoke-direct {p0, v9}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->dip2px(F)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    sub-int v9, v8, v9

    iput v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->widthInPortrait:I

    .line 167
    .end local v7           #width1:I
    .end local v8           #width2:I
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v9

    const-string v10, "US"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ATT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 168
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    const v10, 0x7f06008c

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 179
    :goto_2
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    const-string v10, "wifi_access_point"

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    .line 180
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v9}, Lcom/android/lgesettings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v9

    const v10, 0x1020004

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mEmptyView:Landroid/widget/TextView;

    .line 182
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mEmptyView:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    .line 183
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mEmptyView:Landroid/widget/TextView;

    const v10, 0x41aaa3d7

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 184
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mEmptyView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v10

    or-int/lit8 v10, v10, 0x20

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 185
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v9}, Lcom/android/lgesettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v9

    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 189
    :cond_2
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    iget-boolean v9, v9, Lcom/android/lgesettings/wifi/WifiSettings;->mP2pSupported:Z

    iput-boolean v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mP2pSupported:Z

    .line 192
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v9

    const-string v10, "US"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ATT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 193
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    const-string v10, "hotspot_auto_connect"

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mAutomaticConnectionCheckBox:Landroid/preference/CheckBoxPreference;

    .line 195
    :try_start_0
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mAutomaticConnectionCheckBox:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_3

    .line 196
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mAutomaticConnectionCheckBox:Landroid/preference/CheckBoxPreference;

    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v9}, Lcom/android/lgesettings/wifi/WifiSettings;->getContentResolverFromWifiSettings()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "wifi_auto_connect"

    const/4 v12, 0x1

    invoke-static {v9, v11, v12}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_c

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v10, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_3
    :goto_4
    :try_start_1
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v9}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 207
    .local v1, activity:Landroid/app/Activity;
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->targetDevice:Ljava/lang/String;

    const-string v10, "awifi"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->targetDevice:Ljava/lang/String;

    const-string v10, "awifi070u"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 208
    :cond_4
    const v9, 0x1020289

    invoke-virtual {v1, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 209
    .local v6, vg:Landroid/view/ViewGroup;
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 211
    const v9, 0x1020359

    invoke-virtual {v1, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 212
    const v9, 0x102035a

    invoke-virtual {v1, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 213
    const v9, 0x102035b

    invoke-virtual {v1, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 215
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f060085

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 216
    .local v2, buttonBar:Landroid/view/View;
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    const v9, 0x7f0a047e

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mScanView:Landroid/view/View;

    .line 222
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mScanView:Landroid/view/View;

    new-instance v10, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$1;

    invoke-direct {v10, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$1;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    const v9, 0x7f0a047f

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiDirectView:Landroid/view/View;

    .line 232
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiDirectView:Landroid/view/View;

    new-instance v10, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$2;

    invoke-direct {v10, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$2;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-boolean v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mP2pSupported:Z

    if-nez v9, :cond_5

    .line 241
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiDirectView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 246
    .end local v2           #buttonBar:Landroid/view/View;
    .end local v6           #vg:Landroid/view/ViewGroup;
    :cond_5
    move-object v0, v1

    check-cast v0, Landroid/preference/PreferenceActivity;

    move-object v5, v0

    .line 247
    .local v5, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v9

    if-nez v9, :cond_7

    .line 248
    :cond_6
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0002

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 250
    .local v4, padding:I
    if-eqz p2, :cond_7

    .line 251
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10, v4, v11}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 252
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    const/16 v10, 0x10

    const/16 v11, 0x10

    invoke-virtual {v9, v10, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 254
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    new-instance v10, Landroid/app/ActionBar$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    const v13, 0x800015

    invoke-direct {v10, v11, v12, v13}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, v10}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 259
    new-instance v9, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$3;

    invoke-direct {v9, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$3;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 277
    .end local v1           #activity:Landroid/app/Activity;
    .end local v4           #padding:I
    .end local v5           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_7
    :goto_5
    return-void

    .line 151
    .restart local v7       #width1:I
    .restart local v8       #width2:I
    :cond_8
    const v9, 0x42e2a8f6

    invoke-direct {p0, v9}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->dip2px(F)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->marginSizeInLandscape:I

    goto/16 :goto_0

    .line 159
    :cond_9
    iget v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->marginSizeInLandscape:I

    sub-int v9, v8, v9

    iput v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->widthInLandscape:I

    .line 160
    const v9, 0x40ea8f5c

    invoke-direct {p0, v9}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->dip2px(F)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    sub-int v9, v7, v9

    iput v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->widthInPortrait:I

    goto/16 :goto_1

    .line 172
    .end local v7           #width1:I
    .end local v8           #width2:I
    :cond_a
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v9

    const-string v10, "JP"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    const-string v10, "KDDI"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 173
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    const v10, 0x7f06008d

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_2

    .line 177
    :cond_b
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    const v10, 0x7f06008b

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_2

    .line 196
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 198
    :catch_0
    move-exception v3

    .line 199
    .local v3, e:Ljava/lang/NullPointerException;
    const-string v9, "WifiSettings"

    const-string v10, "onInitView NullPointerException"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 273
    .end local v3           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 274
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public onPrefereceClicked(Landroid/preference/Preference;)V
    .locals 4
    .parameter "preference"

    .prologue
    .line 383
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    if-nez v1, :cond_1

    .line 396
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 387
    .restart local p1
    :cond_1
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ATT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, key:Ljava/lang/String;
    const-string v1, "hotspot_auto_connect"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->getContentResolverFromWifiSettings()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_auto_connect"

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onRemoveAllAccessPoint()V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 379
    :cond_0
    return-void
.end method

.method public onWifiEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 400
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mScanView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiDirectView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 401
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mScanView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 402
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiDirectView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 406
    :cond_0
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "US"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ATT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 407
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mAutomaticConnectionCheckBox:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 408
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mAutomaticConnectionCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 409
    if-nez p1, :cond_2

    .line 410
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mAutomaticConnectionCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 417
    :cond_1
    :goto_0
    return-void

    .line 412
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mAutomaticConnectionCheckBox:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v3}, Lcom/android/lgesettings/wifi/WifiSettings;->getContentResolverFromWifiSettings()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_auto_connect"

    invoke-static {v3, v4, v0}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_3

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public setExpandableNotificationIndex(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 723
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "setExpandableNotificationIndex() ,mInterHelpIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mInterHelpIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iput p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mInterHelpIndex:I

    .line 725
    return-void
.end method

.method public setExpandableNotificationYesButton(I)V
    .locals 7
    .parameter "status"

    .prologue
    const/4 v3, 0x0

    .line 756
    const-string v4, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "setExpandableNotificationYesButton ,status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 760
    .local v0, bStatus:Z
    :goto_0
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mContext:Landroid/content/Context;

    const-string v5, "setExpandableNotificationYesButton"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 761
    .local v2, pref_tutorialYNbutton:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 762
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "setExpandableNotificationYesButton"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 763
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 764
    return-void

    .end local v0           #bStatus:Z
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #pref_tutorialYNbutton:Landroid/content/SharedPreferences;
    :cond_0
    move v0, v3

    .line 759
    goto :goto_0
.end method

.method public showExpandableNotificationGuide(I)V
    .locals 1
    .parameter "scene"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 697
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->showExpandableNotificationGuide(Landroid/view/View;I)V

    .line 699
    :cond_0
    return-void
.end method

.method public showExpandableNotificationGuide(Landroid/view/View;I)V
    .locals 11
    .parameter "where"
    .parameter "scene"

    .prologue
    .line 437
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 438
    .local v5, wm:Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 439
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 440
    .local v4, orientation:I
    const-string v6, "WifiSettings"

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

    iget v8, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->widthInLandscape:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", widthInPortrait:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->widthInPortrait:I

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

    .line 443
    const-string v6, "WifiSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showExpandableNotificationGuide "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_0

    .line 445
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->dismiss()V

    .line 459
    :cond_0
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v6}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f04007c

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mPopupView:Landroid/view/View;

    .line 463
    const/4 v6, 0x1

    if-eq v4, v6, :cond_1

    const/4 v6, 0x3

    if-ne v4, v6, :cond_2

    .line 464
    :cond_1
    new-instance v6, Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mPopupView:Landroid/view/View;

    iget v8, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->widthInLandscape:I

    const/4 v9, -0x2

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    .line 472
    :goto_0
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-virtual {v6, v7, v8}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 473
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 483
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mPopupView:Landroid/view/View;

    const v7, 0x7f0a010f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 484
    .local v3, guideTitle:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mPopupView:Landroid/view/View;

    const v7, 0x7f0a0111

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 486
    .local v2, guideText:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mPopupView:Landroid/view/View;

    const v7, 0x7f0a0112

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 487
    .local v1, guideButton:Landroid/widget/Button;
    new-instance v6, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$4;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$4;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    packed-switch p2, :pswitch_data_0

    .line 549
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mInterHelpIndex:I

    .line 557
    :goto_1
    return-void

    .line 467
    .end local v1           #guideButton:Landroid/widget/Button;
    .end local v2           #guideText:Landroid/widget/TextView;
    .end local v3           #guideTitle:Landroid/widget/TextView;
    :cond_2
    new-instance v6, Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mPopupView:Landroid/view/View;

    iget v8, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->widthInPortrait:I

    const/4 v9, -0x2

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 497
    .restart local v1       #guideButton:Landroid/widget/Button;
    .restart local v2       #guideText:Landroid/widget/TextView;
    .restart local v3       #guideTitle:Landroid/widget/TextView;
    :pswitch_0
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mInterHelpIndex:I

    .line 498
    const v6, 0x7f0816b3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 499
    const v6, 0x7f0816b4

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 500
    const v6, 0x7f080a8a

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 502
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 503
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 506
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mPopupView:Landroid/view/View;

    new-instance v7, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$5;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$5;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 518
    :pswitch_1
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mInterHelpIndex:I

    .line 519
    const v6, 0x7f0816b5

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 520
    const v6, 0x7f0816c7

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 521
    const v6, 0x7f080a8a

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 524
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 525
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 526
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mPopupView:Landroid/view/View;

    const/16 v8, 0x53

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    .line 531
    :pswitch_2
    const/4 v6, 0x4

    iput v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mInterHelpIndex:I

    .line 532
    const v6, 0x7f0816ca

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 533
    const v6, 0x7f0816b8

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 534
    const v6, 0x7f080a8a

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 535
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 536
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    const/16 v8, 0x190

    invoke-virtual {v6, v7, v8}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 537
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 538
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 539
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mPopupView:Landroid/view/View;

    const/16 v8, 0x50

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_1

    .line 542
    :pswitch_3
    const/4 v6, 0x5

    iput v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mInterHelpIndex:I

    .line 543
    const v6, 0x7f0816c8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 544
    const v6, 0x7f0816ba

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 545
    const v6, 0x7f080a8a

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1

    .line 495
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public showExpandableNotificationGuide2(I)V
    .locals 1
    .parameter "scene"

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->showExpandableNotificationGuide2(Landroid/view/View;I)V

    .line 706
    :cond_0
    return-void
.end method

.method public showExpandableNotificationGuide2(Landroid/view/View;I)V
    .locals 12
    .parameter "where"
    .parameter "scene"

    .prologue
    .line 568
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mContext:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 569
    .local v6, wm:Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 570
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v5

    .line 571
    .local v5, orientation:I
    const-string v7, "WifiSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "### orientation:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", widthInLandscape:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->widthInLandscape:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", widthInPortrait:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->widthInPortrait:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", scene:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    if-eqz v7, :cond_0

    .line 575
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->dismiss()V

    .line 578
    :cond_0
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mContext:Landroid/content/Context;

    if-nez v7, :cond_1

    .line 579
    const-string v7, "WifiSettings"

    const-string v8, "updateAccessPoints : mContext is null."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :goto_0
    return-void

    .line 582
    :cond_1
    const-string v7, "WifiSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showExpandableNotificationGuide2 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mContext:Landroid/content/Context;

    const v8, 0x7f04007c

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mPopupView:Landroid/view/View;

    .line 587
    const/4 v7, 0x1

    if-eq v5, v7, :cond_2

    const/4 v7, 0x3

    if-ne v5, v7, :cond_3

    .line 588
    :cond_2
    new-instance v7, Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mPopupView:Landroid/view/View;

    iget v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->widthInLandscape:I

    const/4 v10, -0x2

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v7, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    .line 595
    :goto_1
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-virtual {v7, v8, v9}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 596
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 606
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 611
    .local v4, locale:Ljava/util/Locale;
    const-string v7, "WifiSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "locale.getLanguage():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", locale.getCountry():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mPopupView:Landroid/view/View;

    const v8, 0x7f0a010f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 613
    .local v3, guideTitle:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mPopupView:Landroid/view/View;

    const v8, 0x7f0a0111

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 636
    .local v2, guideText:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mPopupView:Landroid/view/View;

    const v8, 0x7f0a0112

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 637
    .local v1, guideButton:Landroid/widget/Button;
    new-instance v7, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$6;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$6;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    packed-switch p2, :pswitch_data_0

    .line 674
    :goto_2
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 675
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 676
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mPopupView:Landroid/view/View;

    const/16 v9, 0x53

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 679
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mPopupView:Landroid/view/View;

    new-instance v8, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$8;

    invoke-direct {v8, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$8;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)V

    const-wide/16 v9, 0xbb8

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 591
    .end local v1           #guideButton:Landroid/widget/Button;
    .end local v2           #guideText:Landroid/widget/TextView;
    .end local v3           #guideTitle:Landroid/widget/TextView;
    .end local v4           #locale:Ljava/util/Locale;
    :cond_3
    new-instance v7, Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mPopupView:Landroid/view/View;

    iget v9, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->widthInPortrait:I

    const/4 v10, -0x2

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v7, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    goto/16 :goto_1

    .line 654
    .restart local v1       #guideButton:Landroid/widget/Button;
    .restart local v2       #guideText:Landroid/widget/TextView;
    .restart local v3       #guideTitle:Landroid/widget/TextView;
    .restart local v4       #locale:Ljava/util/Locale;
    :pswitch_0
    const v7, 0x7f0816c8

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 656
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0816cb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$7;

    invoke-direct {v8, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$7;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)V

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    const v7, 0x7f080a8a

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    .line 651
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public updateProgressUi(Z)V
    .locals 1
    .parameter "start"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    instance-of v0, v0, Lcom/android/lgesettings/wifi/WifiProgressCategory;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    check-cast v0, Lcom/android/lgesettings/wifi/WifiProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/lgesettings/wifi/WifiProgressCategory;->setProgress(Z)V

    .line 424
    :cond_0
    return-void
.end method
