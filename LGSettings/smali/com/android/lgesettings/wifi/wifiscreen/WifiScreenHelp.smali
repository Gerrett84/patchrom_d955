.class public Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;
.super Landroid/app/Activity;
.source "WifiScreenHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$BkPagerAdapter;
    }
.end annotation


# instance fields
.field private COUNT:I

.field private isAnimated:Z

.field private mHowToUseDesc:Landroid/widget/TextView;

.field private mHowToUseTitle:Landroid/widget/TextView;

.field private mImage:Landroid/widget/ImageView;

.field private mIntroductionDesc:Landroid/widget/TextView;

.field private mIntroductionTitle:Landroid/widget/TextView;

.field private mNext:Landroid/widget/Button;

.field private mNotesTextBattery:Landroid/widget/TextView;

.field private mOk:Landroid/widget/Button;

.field private mPageMark:Landroid/widget/LinearLayout;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPrev:Landroid/widget/Button;

.field private mPrevPosition:I

.field private mReferenceMark:Landroid/widget/TextView;

.field private mTipsTextIcon:Landroid/widget/TextView;

.field private mTipsTitle:Landroid/widget/TextView;

.field targetDevice:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->COUNT:I

    .line 50
    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->targetDevice:Ljava/lang/String;

    .line 242
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->COUNT:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPrevPosition:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPrevPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPageMark:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPrev:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mNext:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->initWidget(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->setUI(I)V

    return-void
.end method

.method private initPageMark()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 157
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->COUNT:I

    if-ge v0, v3, :cond_2

    .line 158
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 159
    .local v1, iv:Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 161
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-nez v0, :cond_1

    .line 162
    const v3, 0x7f0200c5

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 168
    :goto_1
    invoke-virtual {v2, v7, v5, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 169
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->targetDevice:Ljava/lang/String;

    const-string v4, "awifi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->targetDevice:Ljava/lang/String;

    const-string v4, "awifi070u"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 171
    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPageMark:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_1
    const v3, 0x7f0200c6

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 174
    .end local v1           #iv:Landroid/widget/ImageView;
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iput v5, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPrevPosition:I

    .line 175
    return-void
.end method

.method private initWidget(Landroid/view/View;)V
    .locals 4
    .parameter "layout"

    .prologue
    .line 178
    const v0, 0x7f0a0403

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mIntroductionTitle:Landroid/widget/TextView;

    .line 179
    const v0, 0x7f0a0404

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mImage:Landroid/widget/ImageView;

    .line 180
    const v0, 0x7f0a0405

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mIntroductionDesc:Landroid/widget/TextView;

    .line 181
    const v0, 0x7f0a0406

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mHowToUseTitle:Landroid/widget/TextView;

    .line 182
    const v0, 0x7f0a0407

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mHowToUseDesc:Landroid/widget/TextView;

    .line 183
    const v0, 0x7f0a0408

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mTipsTitle:Landroid/widget/TextView;

    .line 185
    const v0, 0x7f0a0409

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mTipsTextIcon:Landroid/widget/TextView;

    .line 186
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mTipsTextIcon:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mTipsTextIcon:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08163d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$2;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$2;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :cond_0
    const v0, 0x7f0a040a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mReferenceMark:Landroid/widget/TextView;

    .line 201
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mReferenceMark:Landroid/widget/TextView;

    const-string v1, "\u203b "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    const v0, 0x7f0a040b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mNotesTextBattery:Landroid/widget/TextView;

    .line 203
    return-void
.end method

.method private setUI(I)V
    .locals 4
    .parameter "position"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 206
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->targetDevice:Ljava/lang/String;

    const-string v1, "awifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->targetDevice:Ljava/lang/String;

    const-string v1, "awifi070u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mIntroductionTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mIntroductionDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mHowToUseTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mHowToUseDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mTipsTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mTipsTextIcon:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mReferenceMark:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mNotesTextBattery:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    if-nez p1, :cond_3

    .line 218
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mIntroductionTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mIntroductionDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mHowToUseTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mHowToUseDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mTipsTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mTipsTextIcon:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mReferenceMark:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mNotesTextBattery:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 228
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mIntroductionTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mIntroductionDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mHowToUseTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mHowToUseDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mTipsTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mTipsTextIcon:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mReferenceMark:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mNotesTextBattery:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 298
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->targetDevice:Ljava/lang/String;

    const-string v3, "awifi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->targetDevice:Ljava/lang/String;

    const-string v3, "awifi070u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->finish()V

    .line 320
    :cond_1
    :goto_0
    return-void

    .line 301
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 302
    .local v1, view:I
    const v2, 0x7f0a0315

    if-ne v1, v2, :cond_4

    .line 303
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 304
    .local v0, cur:I
    if-lez v0, :cond_3

    .line 305
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPager:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v3, v0, -0x1

    iget-boolean v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->isAnimated:Z

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 307
    :cond_3
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->finish()V

    goto :goto_0

    .line 310
    .end local v0           #cur:I
    :cond_4
    const v2, 0x7f0a0017

    if-ne v1, v2, :cond_1

    .line 311
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 312
    .restart local v0       #cur:I
    iget v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->COUNT:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_5

    .line 313
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPager:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v3, v0, 0x1

    iget-boolean v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->isAnimated:Z

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 316
    :cond_5
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const v7, 0x7f0a003d

    const v6, 0x7f0a003b

    const v3, 0x7f081358

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v2, 0x7f0401bb

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->setContentView(I)V

    .line 56
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->setTitle(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 59
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 61
    const v2, 0x7f020341

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(I)V

    .line 62
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->targetDevice:Ljava/lang/String;

    const-string v3, "awifi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->targetDevice:Ljava/lang/String;

    const-string v3, "awifi070u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 66
    :cond_1
    iput v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->COUNT:I

    .line 67
    const v2, 0x7f0a004d

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mOk:Landroid/widget/Button;

    .line 68
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mOk:Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 69
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mOk:Landroid/widget/Button;

    const v3, 0x7f080a8a

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 70
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mOk:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mOk:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 74
    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPageMark:Landroid/widget/LinearLayout;

    .line 76
    invoke-virtual {p0, v6}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPager:Landroid/support/v4/view/ViewPager;

    .line 77
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_4

    .line 78
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$BkPagerAdapter;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$BkPagerAdapter;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 80
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPageMark:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPrevPosition:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 81
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_3

    .line 82
    const v2, 0x7f0200c6

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 85
    :cond_3
    if-eqz v1, :cond_4

    .line 86
    const v2, 0x7f0200c5

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 144
    .end local v1           #view:Landroid/view/View;
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->initPageMark()V

    .line 146
    iput-boolean v5, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->isAnimated:Z

    .line 148
    return-void

    .line 91
    :cond_5
    const v2, 0x7f0a0315

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPrev:Landroid/widget/Button;

    .line 92
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPrev:Landroid/widget/Button;

    if-eqz v2, :cond_6

    .line 93
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPrev:Landroid/widget/Button;

    const v3, 0x7f0800fb

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 94
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPrev:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPrev:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    :cond_6
    const v2, 0x7f0a0017

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mNext:Landroid/widget/Button;

    .line 99
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mNext:Landroid/widget/Button;

    if-eqz v2, :cond_7

    .line 100
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mNext:Landroid/widget/Button;

    const v3, 0x7f0808da

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 101
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mNext:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mNext:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 105
    :cond_7
    invoke-virtual {p0, v7}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPageMark:Landroid/widget/LinearLayout;

    .line 106
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPageMark:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 108
    invoke-virtual {p0, v6}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPager:Landroid/support/v4/view/ViewPager;

    .line 109
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_4

    .line 110
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$BkPagerAdapter;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$BkPagerAdapter;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 112
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$1;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$1;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 287
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 288
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->onBackPressed()V

    .line 290
    const/4 v1, 0x1

    .line 293
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 154
    return-void
.end method
