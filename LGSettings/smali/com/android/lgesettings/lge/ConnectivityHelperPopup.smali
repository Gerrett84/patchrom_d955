.class public Lcom/android/lgesettings/lge/ConnectivityHelperPopup;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "ConnectivityHelperPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/lge/ConnectivityHelperPopup$BkPagerAdapter;
    }
.end annotation


# instance fields
.field private isAnimated:Z

.field private mChargeLayout:Landroid/widget/LinearLayout;

.field private mInternetConnectionLayout:Landroid/widget/LinearLayout;

.field private mLgSoftwareLinearLayout:Landroid/widget/LinearLayout;

.field private mMassStorageLayout:Landroid/widget/LinearLayout;

.field private mMtpLinearLayout:Landroid/widget/LinearLayout;

.field private mNext:Landroid/widget/Button;

.field private mPageMark:Landroid/widget/LinearLayout;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPrev:Landroid/widget/Button;

.field private mPrevPosition:I

.field private mPtpLinearLayout:Landroid/widget/LinearLayout;

.field private mTetherLinearLayout:Landroid/widget/LinearLayout;

.field private mTotalPage:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mTotalPage:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPrevPosition:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPrevPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPageMark:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPrev:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mNext:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->initLayout(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->updatePageView(I)V

    return-void
.end method

.method private dividePage()I
    .locals 4

    .prologue
    .line 186
    const/4 v1, 0x3

    .line 188
    .local v1, totalPage:I
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VZW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isMassStorageSupport(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    add-int/lit8 v1, v1, 0x1

    .line 219
    :cond_0
    :goto_0
    return v1

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isMassStorageSupport(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 194
    add-int/lit8 v1, v1, 0x1

    .line 197
    :cond_2
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 198
    .local v0, cm:Landroid/net/ConnectivityManager;
    const-string v2, "ro.build.target_operator"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TRF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DCM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KDDI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "x2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_3
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TMO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "US"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 204
    :cond_6
    add-int/lit8 v1, v1, -0x1

    .line 207
    :cond_7
    const-string v2, "ro.build.target_operator"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SPR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    :cond_8
    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v2

    if-nez v2, :cond_9

    .line 210
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 212
    :cond_9
    invoke-static {}, Lcom/android/lgesettings/Utils;->getChameleonUsbTetheringMenuEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 504
    const v6, 0x7f0a0078

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mChargeLayout:Landroid/widget/LinearLayout;

    .line 505
    const v6, 0x7f0a007a

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mMassStorageLayout:Landroid/widget/LinearLayout;

    .line 506
    const v6, 0x7f0a007d

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mMtpLinearLayout:Landroid/widget/LinearLayout;

    .line 507
    const v6, 0x7f0a007e

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mInternetConnectionLayout:Landroid/widget/LinearLayout;

    .line 508
    const v6, 0x7f0a0081

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mTetherLinearLayout:Landroid/widget/LinearLayout;

    .line 509
    const v6, 0x7f0a0082

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mLgSoftwareLinearLayout:Landroid/widget/LinearLayout;

    .line 510
    const v6, 0x7f0a0084

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPtpLinearLayout:Landroid/widget/LinearLayout;

    .line 512
    const-string v6, "ro.build.target_operator"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ATT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v6

    const-string v7, "US"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 513
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mLgSoftwareLinearLayout:Landroid/widget/LinearLayout;

    const v7, 0x7f0a034b

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 514
    .local v2, software:Landroid/widget/TextView;
    const v6, 0x7f080486

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 515
    invoke-static {v10}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 516
    .local v3, tf:Landroid/graphics/Typeface;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 518
    .end local v2           #software:Landroid/widget/TextView;
    .end local v3           #tf:Landroid/graphics/Typeface;
    :cond_0
    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "i_skt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "i_u"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 519
    :cond_1
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mMassStorageLayout:Landroid/widget/LinearLayout;

    const v7, 0x7f0a007b

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 520
    .local v5, usb_storage_title:Landroid/widget/TextView;
    const v6, 0x7f080a22

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 521
    invoke-static {v10}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 522
    .restart local v3       #tf:Landroid/graphics/Typeface;
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 524
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mMassStorageLayout:Landroid/widget/LinearLayout;

    const v7, 0x7f0a007c

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 525
    .local v4, usb_storage_summary:Landroid/widget/TextView;
    const v6, 0x7f080a24

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 528
    .end local v3           #tf:Landroid/graphics/Typeface;
    .end local v4           #usb_storage_summary:Landroid/widget/TextView;
    .end local v5           #usb_storage_title:Landroid/widget/TextView;
    :cond_2
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v7, "VZW"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 529
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mTetherLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 530
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mTetherLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 531
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mLgSoftwareLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 532
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mLgSoftwareLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 533
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPtpLinearLayout:Landroid/widget/LinearLayout;

    const v7, 0x7f0a034c

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 534
    .local v1, mPtp_title:Landroid/widget/TextView;
    const v6, 0x7f080482

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 541
    .end local v1           #mPtp_title:Landroid/widget/TextView;
    :goto_0
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 542
    .local v0, cm:Landroid/net/ConnectivityManager;
    const-string v6, "ro.build.target_operator"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "TRF"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DCM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KDDI"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "x2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_3
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TMO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v6

    const-string v7, "US"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_4
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ACG"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 548
    :cond_6
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mTetherLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 549
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mTetherLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 551
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isPCsoftwareTRFModel()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 552
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mLgSoftwareLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 553
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mLgSoftwareLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 571
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isMtpSupport(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 572
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mMtpLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 573
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mMtpLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 574
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPtpLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 575
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPtpLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 577
    :cond_8
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isMassStorageSupport(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 578
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mMassStorageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 579
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mMassStorageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 581
    :cond_9
    return-void

    .line 537
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_a
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mInternetConnectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 538
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mInternetConnectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto/16 :goto_0

    .line 556
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    :cond_b
    const-string v6, "ro.build.target_operator"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "SPR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 558
    :cond_c
    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v6

    if-nez v6, :cond_e

    .line 559
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mTetherLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 560
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mTetherLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 567
    :cond_d
    :goto_2
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mLgSoftwareLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 568
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mLgSoftwareLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_1

    .line 562
    :cond_e
    invoke-static {}, Lcom/android/lgesettings/Utils;->getChameleonUsbTetheringMenuEnabled()Z

    move-result v6

    if-nez v6, :cond_d

    .line 563
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mTetherLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 564
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mTetherLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_2
.end method

.method private initPageMark()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 166
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mTotalPage:I

    if-ge v0, v3, :cond_1

    .line 167
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 168
    .local v1, iv:Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 170
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-nez v0, :cond_0

    .line 171
    const v3, 0x7f0200c5

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 177
    :goto_1
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 178
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    invoke-virtual {v2, v5, v4, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 180
    iget-object v3, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPageMark:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    const v3, 0x7f0200c6

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 182
    .end local v1           #iv:Landroid/widget/ImageView;
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iput v4, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPrevPosition:I

    .line 183
    return-void
.end method

.method private updatePageView(I)V
    .locals 3
    .parameter "pageNum"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 266
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mChargeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mMassStorageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mMtpLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mInternetConnectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mTetherLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mLgSoftwareLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPtpLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mMtpLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPtpLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    :cond_0
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 276
    packed-switch p1, :pswitch_data_0

    .line 375
    :cond_1
    :goto_0
    return-void

    .line 278
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mMassStorageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mChargeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mMassStorageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mChargeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mMtpLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 287
    :pswitch_1
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mMassStorageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 288
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mMtpLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 290
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mInternetConnectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 294
    :pswitch_2
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mMassStorageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 295
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mInternetConnectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 297
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPtpLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 301
    :pswitch_3
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mMassStorageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPtpLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 311
    :cond_5
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 313
    :pswitch_4
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mMassStorageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 314
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mChargeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mMassStorageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 317
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mChargeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mMtpLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 322
    :pswitch_5
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mMassStorageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 323
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mMtpLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 325
    :cond_7
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mTetherLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 326
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mTetherLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 328
    :cond_8
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mLgSoftwareLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 329
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mLgSoftwareLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPtpLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 332
    :cond_9
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPtpLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 338
    :pswitch_6
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mMassStorageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 339
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mTetherLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 340
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mTetherLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 342
    :cond_a
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mLgSoftwareLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 343
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mLgSoftwareLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPtpLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 346
    :cond_b
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPtpLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 350
    :cond_c
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mLgSoftwareLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 351
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mLgSoftwareLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPtpLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 354
    :cond_d
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPtpLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 359
    :pswitch_7
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mMassStorageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mLgSoftwareLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 361
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mLgSoftwareLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPtpLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 364
    :cond_e
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPtpLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 311
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 483
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 484
    .local v1, view:I
    const v2, 0x7f0a0315

    if-ne v1, v2, :cond_1

    .line 485
    iget-object v2, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 486
    .local v0, cur:I
    if-lez v0, :cond_0

    .line 487
    iget-object v2, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPager:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v3, v0, -0x1

    iget-boolean v4, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->isAnimated:Z

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 501
    .end local v0           #cur:I
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    const v2, 0x7f0a0017

    if-ne v1, v2, :cond_0

    .line 493
    iget-object v2, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 494
    .restart local v0       #cur:I
    iget v2, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mTotalPage:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 495
    iget-object v2, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPager:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v3, v0, 0x1

    iget-boolean v4, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->isAnimated:Z

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 498
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 79
    if-nez p2, :cond_0

    .line 162
    :goto_0
    return-object v1

    .line 89
    :cond_0
    const v2, 0x7f040177

    invoke-virtual {p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 91
    .local v1, rootView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 92
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 110
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->dividePage()I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mTotalPage:I

    .line 111
    const-string v2, "ConnectivityHelperPopup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTotalPage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mTotalPage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const v2, 0x7f0a0315

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPrev:Landroid/widget/Button;

    .line 114
    iget-object v2, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPrev:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mNext:Landroid/widget/Button;

    .line 116
    iget-object v2, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mNext:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v2, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPrev:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    const v2, 0x7f0a003d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPageMark:Landroid/widget/LinearLayout;

    .line 119
    iget-object v2, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPageMark:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 120
    const v2, 0x7f0a003b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPager:Landroid/support/v4/view/ViewPager;

    .line 121
    iget-object v2, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/android/lgesettings/lge/ConnectivityHelperPopup$BkPagerAdapter;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup$BkPagerAdapter;-><init>(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 122
    iget-object v2, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/android/lgesettings/lge/ConnectivityHelperPopup$1;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup$1;-><init>(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 156
    iput-boolean v5, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->isAnimated:Z

    .line 161
    invoke-direct {p0}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->initPageMark()V

    goto/16 :goto_0

    .line 97
    :cond_2
    if-eqz v0, :cond_1

    .line 98
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto/16 :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 390
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 391
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 393
    const/4 v1, 0x1

    .line 396
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
