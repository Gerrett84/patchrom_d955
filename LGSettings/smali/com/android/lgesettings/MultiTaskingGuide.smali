.class public Lcom/android/lgesettings/MultiTaskingGuide;
.super Ljava/lang/Object;
.source "MultiTaskingGuide.java"


# instance fields
.field bRunAni:Z

.field inf:Landroid/view/LayoutInflater;

.field private mAni:Landroid/graphics/drawable/AnimationDrawable;

.field private mAniImage:Landroid/widget/ImageView;

.field mContext:Landroid/content/Context;

.field mPlayMultitasking:Landroid/widget/ImageView;

.field mRunAni:Ljava/lang/Runnable;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/MultiTaskingGuide;->bRunAni:Z

    .line 29
    iput-object p1, p0, Lcom/android/lgesettings/MultiTaskingGuide;->mContext:Landroid/content/Context;

    .line 30
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingGuide;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "Theme.LGE.White"

    const-string v3, "style"

    const-string v4, "com.lge.internal"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 32
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingGuide;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/lgesettings/MultiTaskingGuide;->inf:Landroid/view/LayoutInflater;

    .line 33
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingGuide;->inf:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/lgesettings/MultiTaskingGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0400cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/MultiTaskingGuide;->mView:Landroid/view/View;

    .line 35
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingGuide;->mView:Landroid/view/View;

    const v1, 0x7f0a01c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/lgesettings/MultiTaskingGuide;->mPlayMultitasking:Landroid/widget/ImageView;

    .line 36
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingGuide;->mView:Landroid/view/View;

    const v1, 0x7f0a01bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/lgesettings/MultiTaskingGuide;->mAniImage:Landroid/widget/ImageView;

    .line 37
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingGuide;->mAniImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/lgesettings/MultiTaskingGuide;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 53
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingGuide;->mPlayMultitasking:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingGuide;->mAniImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/lgesettings/MultiTaskingGuide$1;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/MultiTaskingGuide$1;-><init>(Lcom/android/lgesettings/MultiTaskingGuide;)V

    iput-object v1, p0, Lcom/android/lgesettings/MultiTaskingGuide;->mRunAni:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/MultiTaskingGuide;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingGuide;->mAniImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/lgesettings/MultiTaskingGuide;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/android/lgesettings/MultiTaskingGuide;->mAniImage:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/lgesettings/MultiTaskingGuide;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingGuide;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/lgesettings/MultiTaskingGuide;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/android/lgesettings/MultiTaskingGuide;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    return-object p1
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingGuide;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 79
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingGuide;->mPlayMultitasking:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 80
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingGuide;->mAniImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/lgesettings/MultiTaskingGuide;->mRunAni:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 81
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingGuide;->mAniImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iput-object v2, p0, Lcom/android/lgesettings/MultiTaskingGuide;->mRunAni:Ljava/lang/Runnable;

    .line 83
    iput-object v2, p0, Lcom/android/lgesettings/MultiTaskingGuide;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 84
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingGuide;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->recycleView(Landroid/view/View;)V

    .line 85
    iput-object v2, p0, Lcom/android/lgesettings/MultiTaskingGuide;->mView:Landroid/view/View;

    .line 86
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 87
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingGuide;->mView:Landroid/view/View;

    return-object v0
.end method
