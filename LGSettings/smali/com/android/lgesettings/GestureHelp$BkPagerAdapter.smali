.class Lcom/android/lgesettings/GestureHelp$BkPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "GestureHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/GestureHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BkPagerAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/lgesettings/GestureHelp;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/GestureHelp;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "con"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/lgesettings/GestureHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/GestureHelp;

    .line 268
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 269
    iput-object p2, p0, Lcom/android/lgesettings/GestureHelp$BkPagerAdapter;->mContext:Landroid/content/Context;

    .line 270
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/GestureHelp$BkPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 271
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .parameter "pager"
    .parameter "position"
    .parameter "view"

    .prologue
    .line 300
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 301
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 305
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/lgesettings/GestureHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/GestureHelp;

    #getter for: Lcom/android/lgesettings/GestureHelp;->COUNT:I
    invoke-static {v0}, Lcom/android/lgesettings/GestureHelp;->access$000(Lcom/android/lgesettings/GestureHelp;)I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 5
    .parameter "pager"
    .parameter "position"

    .prologue
    .line 277
    iget-object v2, p0, Lcom/android/lgesettings/GestureHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/GestureHelp;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/GestureHelp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/lgesettings/GestureHelp$BkPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 278
    iget-object v2, p0, Lcom/android/lgesettings/GestureHelp$BkPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040083

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 280
    .local v0, layout:Landroid/view/View;
    iget-object v3, p0, Lcom/android/lgesettings/GestureHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/GestureHelp;

    const v2, 0x7f0a0116

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    #setter for: Lcom/android/lgesettings/GestureHelp;->title:Landroid/widget/TextView;
    invoke-static {v3, v2}, Lcom/android/lgesettings/GestureHelp;->access$502(Lcom/android/lgesettings/GestureHelp;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 281
    iget-object v3, p0, Lcom/android/lgesettings/GestureHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/GestureHelp;

    const v2, 0x7f0a0117

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    #setter for: Lcom/android/lgesettings/GestureHelp;->iv:Landroid/widget/ImageView;
    invoke-static {v3, v2}, Lcom/android/lgesettings/GestureHelp;->access$602(Lcom/android/lgesettings/GestureHelp;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 282
    iget-object v3, p0, Lcom/android/lgesettings/GestureHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/GestureHelp;

    const v2, 0x7f0a0118

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    #setter for: Lcom/android/lgesettings/GestureHelp;->tv:Landroid/widget/TextView;
    invoke-static {v3, v2}, Lcom/android/lgesettings/GestureHelp;->access$702(Lcom/android/lgesettings/GestureHelp;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 284
    iget-object v2, p0, Lcom/android/lgesettings/GestureHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/GestureHelp;

    #getter for: Lcom/android/lgesettings/GestureHelp;->title:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/lgesettings/GestureHelp;->access$500(Lcom/android/lgesettings/GestureHelp;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v2, p0, Lcom/android/lgesettings/GestureHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/GestureHelp;

    #getter for: Lcom/android/lgesettings/GestureHelp;->mTitleArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/lgesettings/GestureHelp;->access$800(Lcom/android/lgesettings/GestureHelp;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 285
    iget-object v2, p0, Lcom/android/lgesettings/GestureHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/GestureHelp;

    #getter for: Lcom/android/lgesettings/GestureHelp;->iv:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/lgesettings/GestureHelp;->access$600(Lcom/android/lgesettings/GestureHelp;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v2, p0, Lcom/android/lgesettings/GestureHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/GestureHelp;

    #getter for: Lcom/android/lgesettings/GestureHelp;->mImageArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/lgesettings/GestureHelp;->access$900(Lcom/android/lgesettings/GestureHelp;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    iget-object v2, p0, Lcom/android/lgesettings/GestureHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/GestureHelp;

    #getter for: Lcom/android/lgesettings/GestureHelp;->tv:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/lgesettings/GestureHelp;->access$700(Lcom/android/lgesettings/GestureHelp;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v2, p0, Lcom/android/lgesettings/GestureHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/GestureHelp;

    #getter for: Lcom/android/lgesettings/GestureHelp;->mTextArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/lgesettings/GestureHelp;->access$1000(Lcom/android/lgesettings/GestureHelp;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 288
    iget-object v2, p0, Lcom/android/lgesettings/GestureHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/GestureHelp;

    #getter for: Lcom/android/lgesettings/GestureHelp;->title:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/lgesettings/GestureHelp;->access$500(Lcom/android/lgesettings/GestureHelp;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x419aa3d7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 289
    iget-object v2, p0, Lcom/android/lgesettings/GestureHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/GestureHelp;

    #getter for: Lcom/android/lgesettings/GestureHelp;->tv:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/lgesettings/GestureHelp;->access$700(Lcom/android/lgesettings/GestureHelp;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x417ab852

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 291
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 292
    .local v1, tf:Landroid/graphics/Typeface;
    iget-object v2, p0, Lcom/android/lgesettings/GestureHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/GestureHelp;

    #getter for: Lcom/android/lgesettings/GestureHelp;->title:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/lgesettings/GestureHelp;->access$500(Lcom/android/lgesettings/GestureHelp;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 294
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 295
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "obj"

    .prologue
    .line 303
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 306
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 308
    return-void
.end method
