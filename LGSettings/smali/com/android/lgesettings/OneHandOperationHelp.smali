.class public Lcom/android/lgesettings/OneHandOperationHelp;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "OneHandOperationHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;
    }
.end annotation


# instance fields
.field private COUNT:I

.field private SupportMessage:Z

.field private isAnimated:Z

.field private iv:Landroid/widget/ImageView;

.field mImageArray:Ljava/util/ArrayList;
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

.field private mPageAdapter:Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;

.field private mPageMark:Landroid/widget/LinearLayout;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPrev:Landroid/widget/Button;

.field private mPrevPosition:I

.field mTextArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTitleArray:Ljava/util/ArrayList;
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
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Integer;

    const v2, 0x7f020304

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f020306

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f020308

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f020307

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f020305

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mImageArray:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Integer;

    const v2, 0x7f08095e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f08095f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f080960

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f080961

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f080967

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mTextArray:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Integer;

    const v2, 0x7f080948

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f080949

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f080bf5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f08094b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f080965

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mTitleArray:Ljava/util/ArrayList;

    .line 183
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/OneHandOperationHelp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/lgesettings/OneHandOperationHelp;->COUNT:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/OneHandOperationHelp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mPrevPosition:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/lgesettings/OneHandOperationHelp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mPrevPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/lgesettings/OneHandOperationHelp;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mPageMark:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/OneHandOperationHelp;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mPrev:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/OneHandOperationHelp;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mNext:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/OneHandOperationHelp;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationHelp;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/lgesettings/OneHandOperationHelp;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/lgesettings/OneHandOperationHelp;->title:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/lgesettings/OneHandOperationHelp;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationHelp;->iv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/lgesettings/OneHandOperationHelp;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/lgesettings/OneHandOperationHelp;->iv:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/lgesettings/OneHandOperationHelp;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationHelp;->tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/lgesettings/OneHandOperationHelp;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/lgesettings/OneHandOperationHelp;->tv:Landroid/widget/TextView;

    return-object p1
.end method

.method private initPageMark()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 164
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/android/lgesettings/OneHandOperationHelp;->COUNT:I

    if-ge v0, v3, :cond_1

    .line 166
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/lgesettings/OneHandOperationHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 167
    .local v1, iv:Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 169
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-nez v0, :cond_0

    .line 170
    const v3, 0x7f0200c5

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 175
    :goto_1
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 176
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    invoke-virtual {v2, v5, v4, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 178
    iget-object v3, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mPageMark:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_0
    const v3, 0x7f0200c6

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 180
    .end local v1           #iv:Landroid/widget/ImageView;
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iput v4, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mPrevPosition:I

    .line 181
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 229
    .local v1, view:I
    const v2, 0x7f0a0119

    if-ne v1, v2, :cond_1

    .line 230
    iget-object v2, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 231
    .local v0, cur:I
    if-lez v0, :cond_0

    .line 233
    iget-object v2, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mPager:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v3, v0, -0x1

    iget-boolean v4, p0, Lcom/android/lgesettings/OneHandOperationHelp;->isAnimated:Z

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 247
    .end local v0           #cur:I
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    const v2, 0x7f0a011a

    if-ne v1, v2, :cond_0

    .line 239
    iget-object v2, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 240
    .restart local v0       #cur:I
    iget v2, p0, Lcom/android/lgesettings/OneHandOperationHelp;->COUNT:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 241
    iget-object v2, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mPager:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v3, v0, 0x1

    iget-boolean v4, p0, Lcom/android/lgesettings/OneHandOperationHelp;->isAnimated:Z

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 244
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/OneHandOperationHelp;->finishFragment()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 96
    new-instance v0, Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;

    invoke-virtual {p0}, Lcom/android/lgesettings/OneHandOperationHelp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;-><init>(Lcom/android/lgesettings/OneHandOperationHelp;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mPageAdapter:Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;

    .line 97
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mPageAdapter:Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 98
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mPrevPosition:I

    iget-boolean v2, p0, Lcom/android/lgesettings/OneHandOperationHelp;->isAnimated:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 99
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x4

    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 66
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-static {}, Lcom/android/lgesettings/Utils;->supportNavigationButtons()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mImageArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mTextArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mTitleArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/OneHandOperationHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mms_support_one_hand_keyboard"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/lgesettings/OneHandOperationHelp;->SupportMessage:Z

    .line 76
    const-string v0, "SupportMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SupportMessage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/OneHandOperationHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mms_support_one_hand_keyboard"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v0, "KDDI"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/lgesettings/OneHandOperationHelp;->SupportMessage:Z

    if-nez v0, :cond_2

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mImageArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mTextArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mTitleArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mImageArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/OneHandOperationHelp;->COUNT:I

    .line 88
    return-void

    .line 74
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 104
    if-nez p2, :cond_0

    .line 105
    const/4 v1, 0x0

    .line 160
    :goto_0
    return-object v1

    .line 108
    :cond_0
    move-object v0, p1

    .line 110
    .local v0, mInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f0400d3

    invoke-virtual {v0, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 113
    .local v1, rootView:Landroid/view/View;
    const v2, 0x7f0a0119

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mPrev:Landroid/widget/Button;

    .line 114
    iget-object v2, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mPrev:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v2, 0x7f0a011a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mNext:Landroid/widget/Button;

    .line 117
    iget-object v2, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mNext:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v2, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mPrev:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 119
    const v2, 0x7f0a003d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mPageMark:Landroid/widget/LinearLayout;

    .line 120
    iget-object v2, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mPageMark:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 121
    const v2, 0x7f0a003b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mPager:Landroid/support/v4/view/ViewPager;

    .line 122
    new-instance v2, Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;

    invoke-virtual {p0}, Lcom/android/lgesettings/OneHandOperationHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;-><init>(Lcom/android/lgesettings/OneHandOperationHelp;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mPageAdapter:Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;

    .line 123
    iget-object v2, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mPageAdapter:Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 124
    iget-object v2, p0, Lcom/android/lgesettings/OneHandOperationHelp;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/android/lgesettings/OneHandOperationHelp$1;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/OneHandOperationHelp$1;-><init>(Lcom/android/lgesettings/OneHandOperationHelp;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 155
    invoke-direct {p0}, Lcom/android/lgesettings/OneHandOperationHelp;->initPageMark()V

    .line 158
    iput-boolean v4, p0, Lcom/android/lgesettings/OneHandOperationHelp;->isAnimated:Z

    goto :goto_0
.end method
