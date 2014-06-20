.class public Lcom/android/lgesettings/EasyToUseSelectDescript;
.super Landroid/app/Activity;
.source "EasyToUseSelectDescript.java"


# static fields
.field static isLandscape:Z


# instance fields
.field IsStart:Z

.field private PAGE_COUNT:I

.field private animationViewArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private intent:Landroid/content/Intent;

.field private mAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mBack:Landroid/widget/Button;

.field private mCenter:Landroid/widget/Button;

.field private mDesc1:Landroid/widget/TextView;

.field private mDesc2:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHint:Landroid/widget/ViewFlipper;

.field private mImageView:Landroid/view/View;

.field private mImageViewArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mNext:Landroid/widget/Button;

.field private mRunnable:Ljava/lang/Runnable;

.field private mTitle:Landroid/widget/TextView;

.field private navigation0:Landroid/widget/ImageView;

.field private navigation1:Landroid/widget/ImageView;

.field private navigation2:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/EasyToUseSelectDescript;->isLandscape:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->PAGE_COUNT:I

    .line 43
    iput-object v1, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->navigation0:Landroid/widget/ImageView;

    .line 44
    iput-object v1, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->navigation1:Landroid/widget/ImageView;

    .line 45
    iput-object v1, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->navigation2:Landroid/widget/ImageView;

    .line 46
    iput-object v1, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->animationViewArrayList:Ljava/util/ArrayList;

    .line 47
    iput-object v1, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mImageViewArray:Ljava/util/ArrayList;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->IsStart:Z

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/android/lgesettings/EasyToUseSelectDescript$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/EasyToUseSelectDescript$1;-><init>(Lcom/android/lgesettings/EasyToUseSelectDescript;)V

    iput-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/EasyToUseSelectDescript;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/EasyToUseSelectDescript;)Landroid/widget/ViewFlipper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mHint:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/EasyToUseSelectDescript;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->PAGE_COUNT:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/EasyToUseSelectDescript;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/lgesettings/EasyToUseSelectDescript;->next()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/lgesettings/EasyToUseSelectDescript;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/lgesettings/EasyToUseSelectDescript;->previous()V

    return-void
.end method

.method private clearNavigation()V
    .locals 3

    .prologue
    .line 201
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mImageViewArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mImageViewArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f02025d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mImageViewArray:Ljava/util/ArrayList;

    .line 142
    const v0, 0x7f0a00f7

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/EasyToUseSelectDescript;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mHint:Landroid/widget/ViewFlipper;

    .line 143
    const v0, 0x7f0a00f6

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/EasyToUseSelectDescript;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mTitle:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f0a00fb

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/EasyToUseSelectDescript;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mDesc1:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f0a00fc

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/EasyToUseSelectDescript;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mDesc2:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f0a0016

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/EasyToUseSelectDescript;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mBack:Landroid/widget/Button;

    .line 149
    const v0, 0x7f0a0100

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/EasyToUseSelectDescript;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mCenter:Landroid/widget/Button;

    .line 150
    iget-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mCenter:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 152
    const v0, 0x7f0a0017

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/EasyToUseSelectDescript;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mNext:Landroid/widget/Button;

    .line 154
    const v0, 0x7f0a00fd

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/EasyToUseSelectDescript;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->navigation0:Landroid/widget/ImageView;

    .line 155
    const v0, 0x7f0a00fe

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/EasyToUseSelectDescript;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->navigation1:Landroid/widget/ImageView;

    .line 156
    const v0, 0x7f0a00ff

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/EasyToUseSelectDescript;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->navigation2:Landroid/widget/ImageView;

    .line 158
    iget-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mImageViewArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->navigation0:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mImageViewArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->navigation1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mImageViewArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->navigation2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-direct {p0}, Lcom/android/lgesettings/EasyToUseSelectDescript;->setDefaultSettings()V

    .line 163
    return-void
.end method

.method private next()V
    .locals 6

    .prologue
    .line 250
    iget-object v2, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mHint:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    .line 251
    .local v1, childId:I
    iget-object v2, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mHint:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    .line 253
    .local v0, childCount:I
    iget v2, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->PAGE_COUNT:I

    if-eq v1, v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/EasyToUseSelectDescript;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 255
    iget-object v2, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mHint:Landroid/widget/ViewFlipper;

    const v3, 0x7f050005

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 256
    iget-object v2, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mHint:Landroid/widget/ViewFlipper;

    const v3, 0x7f05000a

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 258
    iget-object v2, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mHint:Landroid/widget/ViewFlipper;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 259
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/EasyToUseSelectDescript;->setAnimationView(I)V

    .line 260
    iget-object v2, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 262
    :cond_0
    return-void
.end method

.method private previous()V
    .locals 6

    .prologue
    .line 264
    iget-object v2, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mHint:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    .line 265
    .local v1, childId:I
    iget-object v2, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mHint:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    .line 267
    .local v0, childCount:I
    if-eqz v1, :cond_0

    .line 268
    iget-object v2, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/EasyToUseSelectDescript;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 269
    iget-object v2, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mHint:Landroid/widget/ViewFlipper;

    const v3, 0x7f05000f

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 270
    iget-object v2, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mHint:Landroid/widget/ViewFlipper;

    const v3, 0x7f050014

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 272
    iget-object v2, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mHint:Landroid/widget/ViewFlipper;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 273
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/EasyToUseSelectDescript;->setAnimationView(I)V

    .line 274
    iget-object v2, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 275
    iget-object v2, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mNext:Landroid/widget/Button;

    const v3, 0x7f080d62

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 277
    :cond_0
    return-void
.end method

.method private setAnimationView(II)V
    .locals 2
    .parameter "id"
    .parameter "drawable"

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/EasyToUseSelectDescript;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mImageView:Landroid/view/View;

    .line 294
    iget-object v1, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mImageView:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 295
    iget-object v1, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mImageView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 296
    .local v0, background:Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    .line 297
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 299
    :cond_0
    return-void
.end method

.method private setButtonListener()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mNext:Landroid/widget/Button;

    new-instance v1, Lcom/android/lgesettings/EasyToUseSelectDescript$2;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/EasyToUseSelectDescript$2;-><init>(Lcom/android/lgesettings/EasyToUseSelectDescript;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mCenter:Landroid/widget/Button;

    new-instance v1, Lcom/android/lgesettings/EasyToUseSelectDescript$3;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/EasyToUseSelectDescript$3;-><init>(Lcom/android/lgesettings/EasyToUseSelectDescript;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mBack:Landroid/widget/Button;

    new-instance v1, Lcom/android/lgesettings/EasyToUseSelectDescript$4;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/EasyToUseSelectDescript$4;-><init>(Lcom/android/lgesettings/EasyToUseSelectDescript;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    return-void
.end method

.method private setDefaultSettings()V
    .locals 8

    .prologue
    const v7, 0x7f080d67

    const v6, 0x7f080d64

    .line 169
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->PAGE_COUNT:I

    add-int/lit8 v4, v4, 0x1

    if-ge v1, v4, :cond_0

    .line 170
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 171
    .local v3, viewItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, v3, v1}, Lcom/android/lgesettings/EasyToUseSelectDescript;->setViewItemGroup(Ljava/util/HashMap;I)Ljava/util/HashMap;

    move-result-object v3

    .line 172
    iget-object v4, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v3           #viewItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-boolean v4, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->IsStart:Z

    if-eqz v4, :cond_2

    .line 175
    const v2, 0x7f0a00f8

    .line 176
    .local v2, id:I
    const-string v4, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 177
    const v0, 0x7f020266

    .line 181
    .local v0, drawable:I
    :goto_1
    iget-object v4, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 182
    iget-object v4, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mDesc1:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 183
    iget-object v4, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mDesc2:Landroid/widget/TextView;

    const v5, 0x7f080d68

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 194
    :goto_2
    iget-object v4, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->navigation0:Landroid/widget/ImageView;

    const v5, 0x7f02025c

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    invoke-virtual {p0}, Lcom/android/lgesettings/EasyToUseSelectDescript;->setDescriptionVisible()V

    .line 197
    invoke-direct {p0, v2, v0}, Lcom/android/lgesettings/EasyToUseSelectDescript;->setAnimationView(II)V

    .line 198
    return-void

    .line 179
    .end local v0           #drawable:I
    :cond_1
    const v0, 0x7f020265

    .restart local v0       #drawable:I
    goto :goto_1

    .line 187
    .end local v0           #drawable:I
    .end local v2           #id:I
    :cond_2
    const v2, 0x7f0a00f8

    .line 188
    .restart local v2       #id:I
    const v0, 0x7f020262

    .line 189
    .restart local v0       #drawable:I
    iget-object v4, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 190
    iget-object v4, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mDesc1:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 192
    iget-object v4, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mDesc2:Landroid/widget/TextView;

    const v5, 0x7f080d6e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 426
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/EasyToUseSelectDescript;->setIsLandscape(Landroid/content/res/Configuration;)V

    .line 427
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 429
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v2, 0x7f040070

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/EasyToUseSelectDescript;->setContentView(I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/lgesettings/EasyToUseSelectDescript;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 88
    .local v0, mConfig:Landroid/content/res/Configuration;
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/EasyToUseSelectDescript;->setIsLandscape(Landroid/content/res/Configuration;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/lgesettings/EasyToUseSelectDescript;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->intent:Landroid/content/Intent;

    .line 91
    iget-object v2, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->intent:Landroid/content/Intent;

    const-string v3, "mode_key"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, name:Ljava/lang/String;
    const-string v2, "starter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->IsStart:Z

    .line 95
    invoke-virtual {p0}, Lcom/android/lgesettings/EasyToUseSelectDescript;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const v3, 0x7f080d73

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 101
    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->animationViewArrayList:Ljava/util/ArrayList;

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->animationViewArrayList:Ljava/util/ArrayList;

    .line 104
    invoke-direct {p0}, Lcom/android/lgesettings/EasyToUseSelectDescript;->initView()V

    .line 105
    invoke-direct {p0}, Lcom/android/lgesettings/EasyToUseSelectDescript;->setButtonListener()V

    .line 107
    if-nez p1, :cond_2

    .line 114
    :goto_1
    return-void

    .line 96
    :cond_1
    const-string v2, "standard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->IsStart:Z

    .line 98
    invoke-virtual {p0}, Lcom/android/lgesettings/EasyToUseSelectDescript;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const v3, 0x7f080d74

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mHint:Landroid/widget/ViewFlipper;

    const-string v3, "page"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 112
    const-string v2, "page"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/EasyToUseSelectDescript;->setAnimationView(I)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 128
    iget-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/EasyToUseSelectDescript;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 129
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 121
    iget-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 136
    const-string v0, "page"

    iget-object v1, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mHint:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    return-void
.end method

.method setAnimationView(I)V
    .locals 10
    .parameter "viewId"

    .prologue
    const/16 v8, 0x8

    const/4 v9, 0x0

    .line 302
    invoke-direct {p0}, Lcom/android/lgesettings/EasyToUseSelectDescript;->clearNavigation()V

    .line 303
    iget-object v7, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 304
    .local v6, viewItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "id"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 305
    .local v3, id:I
    const-string v7, "drawable"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 306
    .local v2, drawable:I
    const-string v7, "title"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 307
    .local v5, titleRes:I
    const-string v7, "desc1"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 308
    .local v0, desc1:I
    const-string v7, "desc2"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 309
    .local v1, desc2:I
    const-string v7, "navigation"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 311
    .local v4, navigationRes:I
    iget-object v7, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(I)V

    .line 312
    iget-object v7, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mDesc1:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    .line 313
    iget-object v7, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mDesc2:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(I)V

    .line 315
    iget-object v7, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mImageViewArray:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 317
    iget v7, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->PAGE_COUNT:I

    if-ne v7, p1, :cond_0

    .line 318
    iget-object v7, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mBack:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 320
    iget-object v7, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mCenter:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 321
    iget-object v7, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mNext:Landroid/widget/Button;

    const v8, 0x7f080d79

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 335
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/EasyToUseSelectDescript;->setDescriptionVisible()V

    .line 336
    invoke-direct {p0, v3, v2}, Lcom/android/lgesettings/EasyToUseSelectDescript;->setAnimationView(II)V

    .line 338
    return-void

    .line 325
    :cond_0
    if-nez p1, :cond_1

    .line 326
    iget-object v7, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mCenter:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 331
    :goto_1
    iget-object v7, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mBack:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 328
    :cond_1
    iget-object v7, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mCenter:Landroid/widget/Button;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setDescriptionVisible()V
    .locals 2

    .prologue
    .line 440
    sget-boolean v0, Lcom/android/lgesettings/EasyToUseSelectDescript;->isLandscape:Z

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mDesc1:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->mDesc1:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIsLandscape(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    .line 432
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 433
    sput-boolean v2, Lcom/android/lgesettings/EasyToUseSelectDescript;->isLandscape:Z

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 435
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/EasyToUseSelectDescript;->isLandscape:Z

    goto :goto_0
.end method

.method setViewItemGroup(Ljava/util/HashMap;I)Ljava/util/HashMap;
    .locals 7
    .parameter
    .parameter "viewId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, viewItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const v6, 0x7f080d65

    const v5, 0x7f080d64

    const v4, 0x7f080d62

    const v3, 0x7f080d67

    const v2, 0x7f02025c

    .line 341
    iget-boolean v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript;->IsStart:Z

    if-eqz v0, :cond_1

    .line 342
    packed-switch p2, :pswitch_data_0

    .line 419
    :goto_0
    return-object p1

    .line 344
    :pswitch_0
    const-string v0, "id"

    const v1, 0x7f0a00f8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    const-string v0, "drawable"

    const v1, 0x7f020266

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :goto_1
    const-string v0, "title"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string v0, "desc1"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v0, "desc2"

    const v1, 0x7f080d68

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v0, "navigation"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v0, "mNext"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 348
    :cond_0
    const-string v0, "drawable"

    const v1, 0x7f020265

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 358
    :pswitch_1
    const-string v0, "id"

    const v1, 0x7f0a00f9

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v0, "drawable"

    const v1, 0x7f020267

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v0, "title"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v0, "desc1"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v0, "desc2"

    const v1, 0x7f080d6a

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v0, "navigation"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v0, "mNext"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 367
    :pswitch_2
    const-string v0, "id"

    const v1, 0x7f0a00fa

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v0, "drawable"

    const v1, 0x7f020268

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v0, "title"

    const v1, 0x7f080d66

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v0, "desc1"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v0, "desc2"

    const v1, 0x7f080d6c

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v0, "navigation"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v0, "mNext"

    const v1, 0x7f080d79

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 382
    :cond_1
    packed-switch p2, :pswitch_data_1

    goto/16 :goto_0

    .line 384
    :pswitch_3
    const-string v0, "id"

    const v1, 0x7f0a00f8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v0, "drawable"

    const v1, 0x7f020262

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v0, "title"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string v0, "desc1"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string v0, "desc2"

    const v1, 0x7f080d6e

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v0, "navigation"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v0, "mNext"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 394
    :pswitch_4
    const-string v0, "id"

    const v1, 0x7f0a00f9

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const-string v0, "drawable"

    const v1, 0x7f020263

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string v0, "title"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string v0, "desc1"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string v0, "desc2"

    const v1, 0x7f080d70

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string v0, "navigation"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string v0, "mNext"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 404
    :pswitch_5
    const-string v0, "id"

    const v1, 0x7f0a00fa

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string v0, "drawable"

    const v1, 0x7f020264

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string v0, "title"

    const v1, 0x7f080d66

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string v0, "desc1"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string v0, "desc2"

    const v1, 0x7f080d72

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string v0, "navigation"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string v0, "mNext"

    const v1, 0x7f080d79

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 342
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 382
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected startAnimation(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 280
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->run()V

    .line 283
    :cond_0
    return-void
.end method

.method protected stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 286
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 289
    :cond_0
    return-void
.end method
