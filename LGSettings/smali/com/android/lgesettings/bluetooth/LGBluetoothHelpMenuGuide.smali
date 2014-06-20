.class public Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;
.super Landroid/app/Activity;
.source "LGBluetoothHelpMenuGuide.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide$BkPagerAdapter;
    }
.end annotation


# instance fields
.field private final ALPHAVALUE:I

.field private final ALPHAVALUEMAX:I

.field private OneButtonlayout:Landroid/widget/LinearLayout;

.field private final Page1_MAX_Count:I

.field private final Page2_MAX_Count:I

.field private final Page3_MAX_Count:I

.field private final Page4_MAX_Count:I

.field private final Page5_MAX_Count:I

.field private Page_Count:I

.field private TwoButtonlayout:Landroid/widget/LinearLayout;

.field private isAnimated:Z

.field private mBack:Landroid/widget/Button;

.field private mBtnLayout:Landroid/widget/LinearLayout;

.field private mKey_mode:I

.field private mLayoutArray:[I

.field private mNext:Landroid/widget/Button;

.field private mOk:Landroid/widget/Button;

.field private mPageMark:Landroid/widget/LinearLayout;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPrevPosition:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTitleArray:[I

.field targetProduct:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x6

    const/4 v1, 0x1

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->ALPHAVALUE:I

    .line 47
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->ALPHAVALUEMAX:I

    .line 49
    iput v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->Page_Count:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mPrevPosition:I

    .line 54
    iput-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->TwoButtonlayout:Landroid/widget/LinearLayout;

    .line 55
    iput-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->OneButtonlayout:Landroid/widget/LinearLayout;

    .line 70
    const-string v0, "ro.build.product"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->targetProduct:Ljava/lang/String;

    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mTitleArray:[I

    .line 80
    iput v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->Page1_MAX_Count:I

    .line 81
    iput v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->Page2_MAX_Count:I

    .line 82
    iput v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->Page3_MAX_Count:I

    .line 83
    iput v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->Page4_MAX_Count:I

    .line 84
    iput v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->Page5_MAX_Count:I

    .line 86
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mLayoutArray:[I

    .line 99
    new-instance v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide$1;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 316
    return-void

    .line 72
    :array_0
    .array-data 0x4
        0x72t 0x15t 0x8t 0x7ft
        0x3ct 0x15t 0x8t 0x7ft
        0x3et 0x15t 0x8t 0x7ft
        0x3ft 0x15t 0x8t 0x7ft
        0x77t 0x15t 0x8t 0x7ft
    .end array-data

    .line 86
    :array_1
    .array-data 0x4
        0x96t 0x0t 0x4t 0x7ft
        0x8at 0x0t 0x4t 0x7ft
        0x8bt 0x0t 0x4t 0x7ft
        0x8ct 0x0t 0x4t 0x7ft
        0x8dt 0x0t 0x4t 0x7ft
        0x8et 0x0t 0x4t 0x7ft
        0x8ft 0x0t 0x4t 0x7ft
        0x88t 0x0t 0x4t 0x7ft
        0x90t 0x0t 0x4t 0x7ft
        0x87t 0x0t 0x4t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mKey_mode:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->Page_Count:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mPageMark:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mPrevPosition:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mPrevPosition:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mNext:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mBack:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mLayoutArray:[I

    return-object v0
.end method

.method private initPageMark()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x2

    const/4 v7, 0x4

    .line 286
    const-string v4, "LGBluetoothHelpMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TARGET Product : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->targetProduct:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, NoMargin:Z
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->targetProduct:Ljava/lang/String;

    const-string v5, "zee"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->targetProduct:Ljava/lang/String;

    const-string v5, "vu3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 290
    :cond_0
    const/4 v0, 0x1

    .line 293
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->Page_Count:I

    if-ge v1, v4, :cond_4

    .line 294
    const-string v4, "LGBluetoothHelpMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LGBluetoothHelpMenuGuide initPageMark i : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 296
    .local v2, iv:Landroid/widget/ImageView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 298
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-nez v1, :cond_3

    .line 299
    const v4, 0x7f020063

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 304
    :goto_1
    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 305
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    if-nez v0, :cond_2

    .line 308
    const/16 v4, 0x12

    invoke-virtual {v3, v7, v9, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 311
    :cond_2
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mPageMark:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    :cond_3
    const v4, 0x7f020062

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 313
    .end local v2           #iv:Landroid/widget/ImageView;
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    iput v9, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mPrevPosition:I

    .line 314
    return-void
.end method

.method private setButtonAlpha(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "config"

    .prologue
    const/16 v2, 0xff

    .line 228
    iget v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mKey_mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->TwoButtonlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 230
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mNext:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 231
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mBack:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 237
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 239
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->OneButtonlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 234
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mOk:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 394
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 395
    .local v1, view:I
    const v2, 0x7f0a0041

    if-ne v1, v2, :cond_2

    .line 396
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 398
    .local v0, cur:I
    const-string v2, "LGBluetoothHelpMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LGBluetoothHelpMenuGuide onClick btnBack cur : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    if-lez v0, :cond_1

    .line 401
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mPager:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v3, v0, -0x1

    iget-boolean v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->isAnimated:Z

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 418
    .end local v0           #cur:I
    :cond_0
    :goto_0
    return-void

    .line 403
    .restart local v0       #cur:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->finish()V

    goto :goto_0

    .line 405
    .end local v0           #cur:I
    :cond_2
    const v2, 0x7f0a0042

    if-ne v1, v2, :cond_4

    .line 406
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 408
    .restart local v0       #cur:I
    const-string v2, "LGBluetoothHelpMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LGBluetoothHelpMenuGuide onClick btnNext cur : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->Page_Count:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    .line 411
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mPager:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v3, v0, 0x1

    iget-boolean v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->isAnimated:Z

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 413
    :cond_3
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->finish()V

    goto :goto_0

    .line 415
    .end local v0           #cur:I
    :cond_4
    const v2, 0x7f0a003f

    if-ne v1, v2, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 245
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->setButtonAlpha(Landroid/content/res/Configuration;)V

    .line 246
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 120
    .local v0, ActionBarCompat:Landroid/app/ActionBar;
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Key_mode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mKey_mode:I

    .line 123
    const-string v1, "LGBluetoothHelpMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LGBluetoothHelpMenuGuide onCreate mKey_mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mKey_mode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const v1, 0x7f04001f

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->setContentView(I)V

    .line 125
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mTitleArray:[I

    iget v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mKey_mode:I

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->setTitle(I)V

    .line 126
    iget v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mKey_mode:I

    if-ne v1, v5, :cond_0

    .line 127
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->Page_Count:I

    .line 128
    const v1, 0x7f0a003d

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mPageMark:Landroid/widget/LinearLayout;

    .line 129
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->initPageMark()V

    .line 133
    :goto_0
    const v1, 0x7f0a003c

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mBtnLayout:Landroid/widget/LinearLayout;

    .line 135
    const-string v1, "LGBluetoothHelpMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LGBluetoothHelpMenuGuide onCreate mPageMark : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mPageMark:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const v1, 0x7f0a003b

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mPager:Landroid/support/v4/view/ViewPager;

    .line 138
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide$BkPagerAdapter;

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide$BkPagerAdapter;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 139
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide$2;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide$2;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 186
    iget v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mKey_mode:I

    if-ne v1, v5, :cond_1

    .line 187
    const v1, 0x7f0a0040

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->TwoButtonlayout:Landroid/widget/LinearLayout;

    .line 188
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->TwoButtonlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    const v1, 0x7f0a0042

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mNext:Landroid/widget/Button;

    .line 191
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mNext:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const v1, 0x7f0a0041

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mBack:Landroid/widget/Button;

    .line 194
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mBack:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mBack:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    :goto_1
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->setButtonAlpha(Landroid/content/res/Configuration;)V

    .line 206
    iput-boolean v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->isAnimated:Z

    .line 208
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    return-void

    .line 131
    :cond_0
    iput v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->Page_Count:I

    goto/16 :goto_0

    .line 197
    :cond_1
    const v1, 0x7f0a003e

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->OneButtonlayout:Landroid/widget/LinearLayout;

    .line 198
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->OneButtonlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    const v1, 0x7f0a003f

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mOk:Landroid/widget/Button;

    .line 201
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mOk:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 202
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mOk:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 280
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 281
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 282
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 256
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 264
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 258
    :pswitch_0
    const-string v0, "LGBluetoothHelpMenu"

    const-string v1, "[BTUI] Pressed title back button"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->onBackPressed()V

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 270
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 271
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 250
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 251
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 275
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 276
    return-void
.end method
