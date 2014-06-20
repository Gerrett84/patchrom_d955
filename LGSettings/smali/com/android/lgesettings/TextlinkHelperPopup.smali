.class public Lcom/android/lgesettings/TextlinkHelperPopup;
.super Landroid/app/Activity;
.source "TextlinkHelperPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/TextlinkHelperPopup$BkPagerAdapter;
    }
.end annotation


# instance fields
.field private COUNT:I

.field private category_howtouse:Landroid/widget/LinearLayout;

.field private category_introduction:Landroid/widget/LinearLayout;

.field private category_language:Landroid/widget/LinearLayout;

.field private category_tips:Landroid/widget/LinearLayout;

.field private isAnimated:Z

.field private mCurrentPage:I

.field private mHelpGuide1_1:Landroid/widget/TextView;

.field private mHelpGuide1_title:Landroid/widget/TextView;

.field private mHelpGuide2_1:Landroid/widget/TextView;

.field private mHelpGuide2_2:Landroid/widget/TextView;

.field private mHelpGuide2_3:Landroid/widget/TextView;

.field private mHelpGuide2_4:Landroid/widget/TextView;

.field private mHelpGuide2_title:Landroid/widget/TextView;

.field private mHelpGuide3_1:Landroid/widget/TextView;

.field private mHelpGuide3_title:Landroid/widget/TextView;

.field private mHelpGuide4_1:Landroid/widget/TextView;

.field private mHelpGuide4_2:Landroid/widget/TextView;

.field private mHelpGuide4_title:Landroid/widget/TextView;

.field private mHelpImage01:Landroid/widget/ImageView;

.field private mHelpImage02:Landroid/widget/ImageView;

.field private mHelpImage03:Landroid/widget/ImageView;

.field private mMaxPage:I

.field private mNext:Landroid/widget/Button;

.field private mPageMark:Landroid/widget/LinearLayout;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPrev:Landroid/widget/Button;

.field private mPrevPosition:I

.field private mVzw:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mCurrentPage:I

    .line 36
    iput v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mMaxPage:I

    .line 38
    iput v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->COUNT:I

    .line 83
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mVzw:Z

    .line 341
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/TextlinkHelperPopup;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->COUNT:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/TextlinkHelperPopup;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mPrevPosition:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/lgesettings/TextlinkHelperPopup;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mPrevPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/lgesettings/TextlinkHelperPopup;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mPageMark:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/TextlinkHelperPopup;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mPrev:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/TextlinkHelperPopup;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mNext:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/TextlinkHelperPopup;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/lgesettings/TextlinkHelperPopup;->initWidget(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/lgesettings/TextlinkHelperPopup;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/lgesettings/TextlinkHelperPopup;->setUI(I)V

    return-void
.end method

.method private initPageMark()V
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 251
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->COUNT:I

    if-ge v0, v3, :cond_1

    .line 253
    const-string v3, "TextlinkHelperPopup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initPageMark COUNT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->COUNT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 256
    .local v1, iv:Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 258
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-nez v0, :cond_0

    .line 259
    const-string v3, "TextlinkHelperPopup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initPageMark  if (i == 0) i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const v3, 0x7f0200c5

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 266
    :goto_1
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 267
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    invoke-virtual {v2, v7, v6, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 269
    iget-object v3, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mPageMark:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_0
    const-string v3, "TextlinkHelperPopup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initPageMark else i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const v3, 0x7f0200c6

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 271
    .end local v1           #iv:Landroid/widget/ImageView;
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iput v6, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mPrevPosition:I

    .line 272
    return-void
.end method

.method private initWidget(Landroid/view/View;)V
    .locals 2
    .parameter "layout"

    .prologue
    const/16 v1, 0x8

    .line 162
    const v0, 0x7f0a0317

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->category_introduction:Landroid/widget/LinearLayout;

    .line 166
    const v0, 0x7f0a031b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->category_howtouse:Landroid/widget/LinearLayout;

    .line 169
    const v0, 0x7f0a0322

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->category_tips:Landroid/widget/LinearLayout;

    .line 173
    const v0, 0x7f0a0326

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->category_language:Landroid/widget/LinearLayout;

    .line 177
    const v0, 0x7f0a0318

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide1_title:Landroid/widget/TextView;

    .line 178
    const v0, 0x7f0a031c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide2_title:Landroid/widget/TextView;

    .line 179
    const v0, 0x7f0a0323

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide3_title:Landroid/widget/TextView;

    .line 180
    const v0, 0x7f0a0327

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide4_title:Landroid/widget/TextView;

    .line 183
    const v0, 0x7f0a0319

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpImage01:Landroid/widget/ImageView;

    .line 184
    const v0, 0x7f0a031d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpImage02:Landroid/widget/ImageView;

    .line 185
    const v0, 0x7f0a0324

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpImage03:Landroid/widget/ImageView;

    .line 191
    const v0, 0x7f0a031a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide1_1:Landroid/widget/TextView;

    .line 192
    const v0, 0x7f0a031e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide2_1:Landroid/widget/TextView;

    .line 193
    const v0, 0x7f0a031f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide2_2:Landroid/widget/TextView;

    .line 194
    const v0, 0x7f0a0320

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide2_3:Landroid/widget/TextView;

    .line 195
    const v0, 0x7f0a0321

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide2_4:Landroid/widget/TextView;

    .line 196
    const v0, 0x7f0a0325

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide3_1:Landroid/widget/TextView;

    .line 197
    const v0, 0x7f0a0328

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide4_1:Landroid/widget/TextView;

    .line 198
    const v0, 0x7f0a0329

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide4_2:Landroid/widget/TextView;

    .line 201
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->category_introduction:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->category_howtouse:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->category_tips:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->category_language:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide1_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide2_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide3_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide4_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide1_1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide2_1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide2_2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide2_3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide2_4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide3_1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide4_1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide4_2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    return-void
.end method

.method private setUI(I)V
    .locals 5
    .parameter "position"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 275
    const-string v0, "TextlinkHelperPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUI position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpImage01:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpImage02:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpImage03:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide1_1:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide2_title:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide3_title:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide4_title:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide1_1:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide2_1:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide2_2:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide2_3:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide2_4:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide3_1:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide4_1:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide4_2:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    if-nez p1, :cond_0

    .line 298
    const-string v0, "TextlinkHelperPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUI position ==0 position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->category_introduction:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide1_title:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpImage01:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide1_1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    :goto_0
    return-void

    .line 305
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 306
    const-string v0, "TextlinkHelperPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUI position == 1 position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->category_howtouse:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide2_title:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpImage02:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide2_1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide2_2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide2_3:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide2_4:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 318
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 319
    const-string v0, "TextlinkHelperPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUI position == 2 position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->category_tips:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide3_title:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpImage03:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide3_1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 326
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 327
    const-string v0, "TextlinkHelperPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUI position == 3 position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->category_language:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide4_title:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide4_1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mHelpGuide4_2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 335
    :cond_3
    const-string v0, "TextlinkHelperPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUI else  position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 399
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 400
    .local v1, view:I
    const v2, 0x7f0a0315

    if-ne v1, v2, :cond_1

    .line 401
    iget-object v2, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 402
    .local v0, cur:I
    if-lez v0, :cond_0

    .line 403
    iget-object v2, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mPager:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v3, v0, -0x1

    iget-boolean v4, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->isAnimated:Z

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 417
    .end local v0           #cur:I
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    const v2, 0x7f0a0017

    if-ne v1, v2, :cond_0

    .line 409
    iget-object v2, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 410
    .restart local v0       #cur:I
    iget v2, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->COUNT:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 411
    iget-object v2, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mPager:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v3, v0, 0x1

    iget-boolean v4, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->isAnimated:Z

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 414
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/TextlinkHelperPopup;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v1, 0x7f04016a

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/TextlinkHelperPopup;->setContentView(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/lgesettings/TextlinkHelperPopup;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 95
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 96
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 97
    iget-boolean v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mVzw:Z

    if-eqz v1, :cond_0

    .line 98
    const v1, 0x7f080a4c

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 101
    :cond_0
    const v1, 0x7f0203aa

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 107
    :cond_1
    const v1, 0x7f0a0315

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/TextlinkHelperPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mPrev:Landroid/widget/Button;

    .line 108
    iget-object v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mPrev:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v1, 0x7f0a0017

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/TextlinkHelperPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mNext:Landroid/widget/Button;

    .line 111
    iget-object v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mNext:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mPrev:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    const v1, 0x7f0a003d

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/TextlinkHelperPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mPageMark:Landroid/widget/LinearLayout;

    .line 114
    iget-object v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mPageMark:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 115
    const v1, 0x7f0a003b

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/TextlinkHelperPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mPager:Landroid/support/v4/view/ViewPager;

    .line 116
    iget-object v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/android/lgesettings/TextlinkHelperPopup$BkPagerAdapter;

    invoke-virtual {p0}, Lcom/android/lgesettings/TextlinkHelperPopup;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/lgesettings/TextlinkHelperPopup$BkPagerAdapter;-><init>(Lcom/android/lgesettings/TextlinkHelperPopup;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 117
    iget-object v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/android/lgesettings/TextlinkHelperPopup$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/TextlinkHelperPopup$1;-><init>(Lcom/android/lgesettings/TextlinkHelperPopup;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 154
    invoke-direct {p0}, Lcom/android/lgesettings/TextlinkHelperPopup;->initPageMark()V

    .line 156
    iput-boolean v4, p0, Lcom/android/lgesettings/TextlinkHelperPopup;->isAnimated:Z

    .line 157
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 388
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 389
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/android/lgesettings/TextlinkHelperPopup;->onBackPressed()V

    .line 391
    const/4 v1, 0x1

    .line 394
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
