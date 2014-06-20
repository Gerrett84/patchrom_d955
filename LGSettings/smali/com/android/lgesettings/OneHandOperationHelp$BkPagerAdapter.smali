.class Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "OneHandOperationHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/OneHandOperationHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BkPagerAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/lgesettings/OneHandOperationHelp;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/OneHandOperationHelp;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "con"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/OneHandOperationHelp;

    .line 187
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 188
    iput-object p2, p0, Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;->mContext:Landroid/content/Context;

    .line 189
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 190
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .parameter "pager"
    .parameter "position"
    .parameter "view"

    .prologue
    .line 215
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 216
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 220
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/OneHandOperationHelp;

    #getter for: Lcom/android/lgesettings/OneHandOperationHelp;->COUNT:I
    invoke-static {v0}, Lcom/android/lgesettings/OneHandOperationHelp;->access$000(Lcom/android/lgesettings/OneHandOperationHelp;)I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 4
    .parameter "pager"
    .parameter "position"

    .prologue
    .line 196
    iget-object v1, p0, Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/OneHandOperationHelp;

    invoke-virtual {v1}, Lcom/android/lgesettings/OneHandOperationHelp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 197
    iget-object v1, p0, Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400d2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 199
    .local v0, layout:Landroid/view/View;
    iget-object v2, p0, Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/OneHandOperationHelp;

    const v1, 0x7f0a0116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    #setter for: Lcom/android/lgesettings/OneHandOperationHelp;->title:Landroid/widget/TextView;
    invoke-static {v2, v1}, Lcom/android/lgesettings/OneHandOperationHelp;->access$502(Lcom/android/lgesettings/OneHandOperationHelp;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 200
    iget-object v2, p0, Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/OneHandOperationHelp;

    const v1, 0x7f0a0117

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    #setter for: Lcom/android/lgesettings/OneHandOperationHelp;->iv:Landroid/widget/ImageView;
    invoke-static {v2, v1}, Lcom/android/lgesettings/OneHandOperationHelp;->access$602(Lcom/android/lgesettings/OneHandOperationHelp;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 201
    iget-object v2, p0, Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/OneHandOperationHelp;

    const v1, 0x7f0a0118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    #setter for: Lcom/android/lgesettings/OneHandOperationHelp;->tv:Landroid/widget/TextView;
    invoke-static {v2, v1}, Lcom/android/lgesettings/OneHandOperationHelp;->access$702(Lcom/android/lgesettings/OneHandOperationHelp;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 204
    iget-object v1, p0, Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/OneHandOperationHelp;

    #getter for: Lcom/android/lgesettings/OneHandOperationHelp;->title:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/lgesettings/OneHandOperationHelp;->access$500(Lcom/android/lgesettings/OneHandOperationHelp;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/OneHandOperationHelp;

    iget-object v1, v1, Lcom/android/lgesettings/OneHandOperationHelp;->mTitleArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 205
    iget-object v1, p0, Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/OneHandOperationHelp;

    #getter for: Lcom/android/lgesettings/OneHandOperationHelp;->iv:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/lgesettings/OneHandOperationHelp;->access$600(Lcom/android/lgesettings/OneHandOperationHelp;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v1, p0, Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/OneHandOperationHelp;

    iget-object v1, v1, Lcom/android/lgesettings/OneHandOperationHelp;->mImageArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    iget-object v1, p0, Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/OneHandOperationHelp;

    #getter for: Lcom/android/lgesettings/OneHandOperationHelp;->tv:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/lgesettings/OneHandOperationHelp;->access$700(Lcom/android/lgesettings/OneHandOperationHelp;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/OneHandOperationHelp;

    iget-object v1, v1, Lcom/android/lgesettings/OneHandOperationHelp;->mTextArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 207
    iget-object v1, p0, Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/OneHandOperationHelp;

    #getter for: Lcom/android/lgesettings/OneHandOperationHelp;->tv:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/lgesettings/OneHandOperationHelp;->access$700(Lcom/android/lgesettings/OneHandOperationHelp;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v1, p0, Lcom/android/lgesettings/OneHandOperationHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/OneHandOperationHelp;

    iget-object v1, v1, Lcom/android/lgesettings/OneHandOperationHelp;->mTextArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 209
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 210
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "obj"

    .prologue
    .line 218
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
    .line 221
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 223
    return-void
.end method
