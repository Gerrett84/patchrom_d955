.class public Lcom/android/lgesettings/GestureHelp;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "GestureHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/GestureHelp$BkPagerAdapter;
    }
.end annotation


# instance fields
.field private COUNT:I

.field private gestureanswering_status:Z

.field private isAnimated:Z

.field private iv:Landroid/widget/ImageView;

.field private mImageArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNext:Landroid/widget/Button;

.field private mPageAdapter:Lcom/android/lgesettings/GestureHelp$BkPagerAdapter;

.field private mPageMark:Landroid/widget/LinearLayout;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPrev:Landroid/widget/Button;

.field private mPrevPosition:I

.field private mTextArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private title:Landroid/widget/TextView;

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0xb

    .line 40
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 42
    iput v4, p0, Lcom/android/lgesettings/GestureHelp;->COUNT:I

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v4, [Ljava/lang/Integer;

    const v2, 0x7f02031f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0202fe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f020309

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const v2, 0x7f02030a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const v3, 0x7f0202fd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const v3, 0x7f02030d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const v3, 0x7f020313

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const v3, 0x7f0202bd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const v3, 0x7f020302

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const v3, 0x7f020312

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const v3, 0x7f020310

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/lgesettings/GestureHelp;->mImageArray:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v4, [Ljava/lang/Integer;

    const v2, 0x7f08092e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f08092b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f08091f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const v2, 0x7f080920

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const v3, 0x7f08091c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const v3, 0x7f08093c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const v3, 0x7f080930

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const v3, 0x7f080929

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const v3, 0x7f080919

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const v3, 0x7f08091b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const v3, 0x7f08091d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/lgesettings/GestureHelp;->mTextArray:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v4, [Ljava/lang/Integer;

    const v2, 0x7f08092d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f080921

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f080935

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const v2, 0x7f080933

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const v3, 0x7f0808e0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const v3, 0x7f080937

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const v3, 0x7f08092f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const v3, 0x7f080f94

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const v3, 0x7f080918

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const v3, 0x7f0808e2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const v3, 0x7f0808db

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/lgesettings/GestureHelp;->mTitleArray:Ljava/util/ArrayList;

    .line 264
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/GestureHelp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/lgesettings/GestureHelp;->COUNT:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/GestureHelp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/lgesettings/GestureHelp;->mPrevPosition:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/GestureHelp;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/lgesettings/GestureHelp;->mTextArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/lgesettings/GestureHelp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/lgesettings/GestureHelp;->mPrevPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/lgesettings/GestureHelp;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/lgesettings/GestureHelp;->mPageMark:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/GestureHelp;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/lgesettings/GestureHelp;->mPrev:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/GestureHelp;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/lgesettings/GestureHelp;->mNext:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/GestureHelp;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/lgesettings/GestureHelp;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/lgesettings/GestureHelp;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/lgesettings/GestureHelp;->title:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/lgesettings/GestureHelp;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/lgesettings/GestureHelp;->iv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/lgesettings/GestureHelp;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/lgesettings/GestureHelp;->iv:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/lgesettings/GestureHelp;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/lgesettings/GestureHelp;->tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/lgesettings/GestureHelp;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/lgesettings/GestureHelp;->tv:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/lgesettings/GestureHelp;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/lgesettings/GestureHelp;->mTitleArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/lgesettings/GestureHelp;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/lgesettings/GestureHelp;->mImageArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method private initPageMark()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 245
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/android/lgesettings/GestureHelp;->COUNT:I

    if-ge v0, v3, :cond_1

    .line 247
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/lgesettings/GestureHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 248
    .local v1, iv:Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 250
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-nez v0, :cond_0

    .line 251
    const v3, 0x7f0200c5

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 256
    :goto_1
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 257
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    invoke-virtual {v2, v5, v4, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 259
    iget-object v3, p0, Lcom/android/lgesettings/GestureHelp;->mPageMark:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_0
    const v3, 0x7f0200c6

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 261
    .end local v1           #iv:Landroid/widget/ImageView;
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iput v4, p0, Lcom/android/lgesettings/GestureHelp;->mPrevPosition:I

    .line 262
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 313
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 314
    .local v1, view:I
    const v2, 0x7f0a0119

    if-ne v1, v2, :cond_1

    .line 315
    iget-object v2, p0, Lcom/android/lgesettings/GestureHelp;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 316
    .local v0, cur:I
    if-lez v0, :cond_0

    .line 320
    iget-object v2, p0, Lcom/android/lgesettings/GestureHelp;->mPager:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v3, v0, -0x1

    iget-boolean v4, p0, Lcom/android/lgesettings/GestureHelp;->isAnimated:Z

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 337
    .end local v0           #cur:I
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    const v2, 0x7f0a011a

    if-ne v1, v2, :cond_0

    .line 328
    iget-object v2, p0, Lcom/android/lgesettings/GestureHelp;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 329
    .restart local v0       #cur:I
    iget v2, p0, Lcom/android/lgesettings/GestureHelp;->COUNT:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 330
    iget-object v2, p0, Lcom/android/lgesettings/GestureHelp;->mPager:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v3, v0, 0x1

    iget-boolean v4, p0, Lcom/android/lgesettings/GestureHelp;->isAnimated:Z

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 334
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/GestureHelp;->finishFragment()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 341
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 343
    new-instance v0, Lcom/android/lgesettings/GestureHelp$BkPagerAdapter;

    invoke-virtual {p0}, Lcom/android/lgesettings/GestureHelp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/GestureHelp$BkPagerAdapter;-><init>(Lcom/android/lgesettings/GestureHelp;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/GestureHelp;->mPageAdapter:Lcom/android/lgesettings/GestureHelp$BkPagerAdapter;

    .line 344
    iget-object v0, p0, Lcom/android/lgesettings/GestureHelp;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/lgesettings/GestureHelp;->mPageAdapter:Lcom/android/lgesettings/GestureHelp$BkPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 345
    iget-object v0, p0, Lcom/android/lgesettings/GestureHelp;->mPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/android/lgesettings/GestureHelp;->mPrevPosition:I

    iget-boolean v2, p0, Lcom/android/lgesettings/GestureHelp;->isAnimated:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 346
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 111
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const-string v4, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    const v4, 0x7f020312

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/GestureHelp;->removeHelpScreen(I)V

    .line 116
    :cond_0
    const-string v4, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "ro.lge.capp_slideAside"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 117
    :cond_1
    const v4, 0x7f0202bd

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/GestureHelp;->removeHelpScreen(I)V

    .line 120
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/GestureHelp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 121
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 123
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    const-string v4, "com.lge.gestureanswering"

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 131
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/GestureHelp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 133
    .local v2, mcontext:Landroid/content/Context;
    const-string v4, "Utils.isWifiOnly(mcontext)"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {v2}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 136
    const v4, 0x7f0202fd

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/GestureHelp;->removeHelpScreen(I)V

    .line 139
    :cond_3
    const-string v4, "ro.lge.capp_touch_palm_cover"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_4

    .line 140
    const v4, 0x7f020313

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/GestureHelp;->removeHelpScreen(I)V

    .line 144
    :cond_4
    :try_start_1
    const-string v4, "com.lge.doubletap"

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 154
    :goto_1
    const v4, 0x7f02031f

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/GestureHelp;->removeHelpScreen(I)V

    .line 155
    const v4, 0x7f02030d

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/GestureHelp;->removeHelpScreen(I)V

    .line 159
    return-void

    .line 125
    .end local v2           #mcontext:Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const v4, 0x7f020309

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/GestureHelp;->removeHelpScreen(I)V

    .line 127
    const v4, 0x7f02030a

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/GestureHelp;->removeHelpScreen(I)V

    goto :goto_0

    .line 147
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #mcontext:Landroid/content/Context;
    :catch_1
    move-exception v0

    .line 148
    .restart local v0       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const v4, 0x7f0202fe

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/GestureHelp;->removeHelpScreen(I)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/android/lgesettings/GestureHelp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 178
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 180
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    const-string v5, "com.lge.gestureanswering"

    const/16 v6, 0x80

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 182
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/lgesettings/GestureHelp;->gestureanswering_status:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    move-object v2, p1

    .line 190
    .local v2, mInflater:Landroid/view/LayoutInflater;
    const v5, 0x7f040084

    invoke-virtual {v2, v5, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 193
    .local v4, rootview:Landroid/view/View;
    const v5, 0x7f0a0119

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/lgesettings/GestureHelp;->mPrev:Landroid/widget/Button;

    .line 194
    iget-object v5, p0, Lcom/android/lgesettings/GestureHelp;->mPrev:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    const v5, 0x7f0a011a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/lgesettings/GestureHelp;->mNext:Landroid/widget/Button;

    .line 197
    iget-object v5, p0, Lcom/android/lgesettings/GestureHelp;->mNext:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v5, p0, Lcom/android/lgesettings/GestureHelp;->mPrev:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 199
    const v5, 0x7f0a003d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/lgesettings/GestureHelp;->mPageMark:Landroid/widget/LinearLayout;

    .line 200
    iget-object v5, p0, Lcom/android/lgesettings/GestureHelp;->mPageMark:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 201
    const v5, 0x7f0a003b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lcom/android/lgesettings/GestureHelp;->mPager:Landroid/support/v4/view/ViewPager;

    .line 202
    iget-object v5, p0, Lcom/android/lgesettings/GestureHelp;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lcom/android/lgesettings/GestureHelp$BkPagerAdapter;

    invoke-virtual {p0}, Lcom/android/lgesettings/GestureHelp;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/lgesettings/GestureHelp$BkPagerAdapter;-><init>(Lcom/android/lgesettings/GestureHelp;Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 204
    iget-object v5, p0, Lcom/android/lgesettings/GestureHelp;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lcom/android/lgesettings/GestureHelp$1;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/GestureHelp$1;-><init>(Lcom/android/lgesettings/GestureHelp;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 235
    invoke-virtual {p0}, Lcom/android/lgesettings/GestureHelp;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const v6, 0x7f020334

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setIcon(I)V

    .line 236
    invoke-direct {p0}, Lcom/android/lgesettings/GestureHelp;->initPageMark()V

    .line 239
    iput-boolean v8, p0, Lcom/android/lgesettings/GestureHelp;->isAnimated:Z

    .line 241
    return-object v4

    .line 183
    .end local v2           #mInflater:Landroid/view/LayoutInflater;
    .end local v4           #rootview:Landroid/view/View;
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-boolean v8, p0, Lcom/android/lgesettings/GestureHelp;->gestureanswering_status:Z

    goto :goto_0
.end method

.method public removeHelpScreen(I)V
    .locals 2
    .parameter "imageresId"

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/GestureHelp;->mImageArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/android/lgesettings/GestureHelp;->mImageArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/lgesettings/GestureHelp;->mImageArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 166
    iget-object v1, p0, Lcom/android/lgesettings/GestureHelp;->mTextArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 167
    iget-object v1, p0, Lcom/android/lgesettings/GestureHelp;->mTitleArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 168
    iget v1, p0, Lcom/android/lgesettings/GestureHelp;->COUNT:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/lgesettings/GestureHelp;->COUNT:I

    .line 163
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_1
    return-void
.end method
