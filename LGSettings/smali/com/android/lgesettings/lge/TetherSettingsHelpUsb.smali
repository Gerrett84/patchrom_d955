.class public Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;
.super Landroid/app/Activity;
.source "TetherSettingsHelpUsb.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/lge/TetherSettingsHelpUsb$BkPagerAdapter;
    }
.end annotation


# instance fields
.field private COUNT:I

.field private isAnimated:Z

.field private mCurrentPage:I

.field private mHelpGuide1:Landroid/widget/TextView;

.field private mHelpGuide1Vzw:Landroid/widget/TextView;

.field private mHelpGuide2:Landroid/widget/TextView;

.field private mHelpGuide2Vzw:Landroid/widget/TextView;

.field private mHelpGuide3:Landroid/widget/TextView;

.field private mHelpGuide4:Landroid/widget/TextView;

.field private mHelpImage:Landroid/widget/ImageView;

.field private mMaxPage:I

.field private mNext:Landroid/widget/Button;

.field private mPageMark:Landroid/widget/LinearLayout;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPagerListener:Landroid/view/View$OnClickListener;

.field private mPrev:Landroid/widget/Button;

.field private mPrevPosition:I

.field private mVzw:Z

.field private mXPDriverButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mCurrentPage:I

    .line 41
    iput v1, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mMaxPage:I

    .line 43
    iput v1, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->COUNT:I

    .line 65
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mVzw:Z

    .line 271
    new-instance v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb$2;-><init>(Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mPagerListener:Landroid/view/View$OnClickListener;

    .line 282
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->COUNT:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mPrevPosition:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mPrevPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mPageMark:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mPrev:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mNext:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->initWidget(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->setUI(I)V

    return-void
.end method

.method private initPageMark()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 217
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->COUNT:I

    if-ge v0, v3, :cond_1

    .line 218
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 219
    .local v1, iv:Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 221
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-nez v0, :cond_0

    .line 222
    const v3, 0x7f0200c5

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 228
    :goto_1
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 229
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    invoke-virtual {v2, v5, v4, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 231
    iget-object v3, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mPageMark:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_0
    const v3, 0x7f0200c6

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 233
    .end local v1           #iv:Landroid/widget/ImageView;
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iput v4, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mPrevPosition:I

    .line 234
    return-void
.end method

.method private initWidget(Landroid/view/View;)V
    .locals 17
    .parameter "layout"

    .prologue
    .line 142
    const-string v10, "http://mpcs.me/hot/"

    .line 143
    .local v10, url_en:Ljava/lang/String;
    const-string v11, "http://mpcs.es/hot/"

    .line 145
    .local v11, url_es:Ljava/lang/String;
    const-string v12, "ro.build.target_operator_ext"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, strNewCo:Ljava/lang/String;
    const v12, 0x7f0a030d

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpImage:Landroid/widget/ImageView;

    .line 147
    const v12, 0x7f0a030e

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide1:Landroid/widget/TextView;

    .line 148
    const v12, 0x7f0a0310

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide2:Landroid/widget/TextView;

    .line 149
    const v12, 0x7f0a0311

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide3:Landroid/widget/TextView;

    .line 150
    const v12, 0x7f0a0313

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide4:Landroid/widget/TextView;

    .line 151
    const v12, 0x7f0a030f

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide1Vzw:Landroid/widget/TextView;

    .line 152
    const v12, 0x7f0a0314

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide2Vzw:Landroid/widget/TextView;

    .line 154
    const v12, 0x7f0a0312

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mXPDriverButton:Landroid/widget/Button;

    .line 155
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mXPDriverButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mPagerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mVzw:Z

    if-eqz v12, :cond_0

    .line 158
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide1:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide2:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide3:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide4:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mXPDriverButton:Landroid/widget/Button;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 164
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide1Vzw:Landroid/widget/TextView;

    const v13, 0x7f080a4e

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 166
    const-string v12, "&bull;"

    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    .line 168
    .local v6, spanned:Landroid/text/Spanned;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f080a4f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f080a50

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f080a51

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f080a53

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, contents:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide2Vzw:Landroid/widget/TextView;

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    .end local v1           #contents:Ljava/lang/String;
    .end local v6           #spanned:Landroid/text/Spanned;
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v12

    const-string v13, "US"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v12

    const-string v13, "TMO"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 176
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 177
    .local v5, locale:Ljava/util/Locale;
    const-string v9, ""

    .line 178
    .local v9, urlText:Ljava/lang/String;
    const-string v8, ""

    .line 180
    .local v8, textlink:Ljava/lang/CharSequence;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f0804f2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, contents3:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f0804ea

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, contents4:Ljava/lang/String;
    const v12, 0x7f0804eb

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, contents5:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    const-string v13, "ES"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 185
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " <a href=\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0804f3

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "</a>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 190
    :goto_1
    const-string v12, "MPCS_TMO"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 191
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0804e7

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "<br><br>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0804f1

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v9, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    .line 198
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide1:Landroid/widget/TextView;

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide1:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide2:Landroid/widget/TextView;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide3:Landroid/widget/TextView;

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mXPDriverButton:Landroid/widget/Button;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 204
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide4:Landroid/widget/TextView;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide1Vzw:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide2Vzw:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 187
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " <a href=\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0804f3

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "</a>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 194
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0804e7

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "<br><br>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0804e8

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    goto/16 :goto_2

    .line 210
    .end local v2           #contents3:Ljava/lang/String;
    .end local v3           #contents4:Ljava/lang/String;
    .end local v4           #contents5:Ljava/lang/String;
    .end local v5           #locale:Ljava/util/Locale;
    .end local v8           #textlink:Ljava/lang/CharSequence;
    .end local v9           #urlText:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide1Vzw:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide2Vzw:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mXPDriverButton:Landroid/widget/Button;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setUI(I)V
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 237
    if-nez p1, :cond_2

    .line 238
    iget-boolean v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mVzw:Z

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide1Vzw:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide2Vzw:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mXPDriverButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 250
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 269
    :cond_0
    :goto_1
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide3:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide4:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mXPDriverButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 252
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 253
    iget-boolean v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mVzw:Z

    if-eqz v0, :cond_4

    .line 254
    iget-object v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide1Vzw:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide2Vzw:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mXPDriverButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 267
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 259
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide3:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mHelpGuide4:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 264
    iget-object v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mXPDriverButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 338
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 339
    .local v1, view:I
    const v2, 0x7f0a0315

    if-ne v1, v2, :cond_1

    .line 340
    iget-object v2, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 341
    .local v0, cur:I
    if-lez v0, :cond_0

    .line 342
    iget-object v2, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mPager:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v3, v0, -0x1

    iget-boolean v4, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->isAnimated:Z

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 355
    .end local v0           #cur:I
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    const v2, 0x7f0a0017

    if-ne v1, v2, :cond_0

    .line 347
    iget-object v2, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 348
    .restart local v0       #cur:I
    iget v2, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->COUNT:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 349
    iget-object v2, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mPager:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v3, v0, 0x1

    iget-boolean v4, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->isAnimated:Z

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 352
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const-string v2, "ro.build.target_operator_ext"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, strNewCo:Ljava/lang/String;
    const v2, 0x7f040167

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->setContentView(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 77
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 78
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 79
    iget-boolean v2, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mVzw:Z

    if-eqz v2, :cond_1

    .line 80
    const v2, 0x7f080a4c

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 92
    :cond_0
    :goto_0
    const v2, 0x7f0a0315

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mPrev:Landroid/widget/Button;

    .line 93
    iget-object v2, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mPrev:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v2, 0x7f0a0017

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mNext:Landroid/widget/Button;

    .line 96
    iget-object v2, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mNext:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v2, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mPrev:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    const v2, 0x7f0a003d

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mPageMark:Landroid/widget/LinearLayout;

    .line 99
    iget-object v2, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mPageMark:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 100
    const v2, 0x7f0a003b

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mPager:Landroid/support/v4/view/ViewPager;

    .line 101
    iget-object v2, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb$BkPagerAdapter;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb$BkPagerAdapter;-><init>(Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 102
    iget-object v2, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb$1;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb$1;-><init>(Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 136
    invoke-direct {p0}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->initPageMark()V

    .line 138
    iput-boolean v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->isAnimated:Z

    .line 139
    return-void

    .line 81
    :cond_1
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "US"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TMO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const-string v2, "MPCS_TMO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    const v2, 0x7f02033b

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(I)V

    goto/16 :goto_0

    .line 85
    :cond_2
    const v2, 0x7f02033c

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(I)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 327
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 328
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->onBackPressed()V

    .line 330
    const/4 v1, 0x1

    .line 333
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
