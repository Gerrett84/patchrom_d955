.class Lcom/android/lgesettings/TextlinkHelperPopup$BkPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "TextlinkHelperPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/TextlinkHelperPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BkPagerAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/lgesettings/TextlinkHelperPopup;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/TextlinkHelperPopup;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "con"

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/lgesettings/TextlinkHelperPopup$BkPagerAdapter;->this$0:Lcom/android/lgesettings/TextlinkHelperPopup;

    .line 345
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 346
    iput-object p2, p0, Lcom/android/lgesettings/TextlinkHelperPopup$BkPagerAdapter;->mContext:Landroid/content/Context;

    .line 347
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup$BkPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 348
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .parameter "pager"
    .parameter "position"
    .parameter "view"

    .prologue
    .line 368
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 369
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 376
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/lgesettings/TextlinkHelperPopup$BkPagerAdapter;->this$0:Lcom/android/lgesettings/TextlinkHelperPopup;

    #getter for: Lcom/android/lgesettings/TextlinkHelperPopup;->COUNT:I
    invoke-static {v0}, Lcom/android/lgesettings/TextlinkHelperPopup;->access$000(Lcom/android/lgesettings/TextlinkHelperPopup;)I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 4
    .parameter "pager"
    .parameter "position"

    .prologue
    .line 354
    iget-object v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup$BkPagerAdapter;->this$0:Lcom/android/lgesettings/TextlinkHelperPopup;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/TextlinkHelperPopup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup$BkPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 355
    iget-object v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup$BkPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040169

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 357
    .local v0, layout:Landroid/view/View;
    const-string v1, "TextlinkHelperPopup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "instantiateItem position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup$BkPagerAdapter;->this$0:Lcom/android/lgesettings/TextlinkHelperPopup;

    #calls: Lcom/android/lgesettings/TextlinkHelperPopup;->initWidget(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/android/lgesettings/TextlinkHelperPopup;->access$500(Lcom/android/lgesettings/TextlinkHelperPopup;Landroid/view/View;)V

    .line 360
    iget-object v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup$BkPagerAdapter;->this$0:Lcom/android/lgesettings/TextlinkHelperPopup;

    #calls: Lcom/android/lgesettings/TextlinkHelperPopup;->setUI(I)V
    invoke-static {v1, p2}, Lcom/android/lgesettings/TextlinkHelperPopup;->access$600(Lcom/android/lgesettings/TextlinkHelperPopup;I)V

    .line 362
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 363
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "obj"

    .prologue
    .line 372
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
    .line 378
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 383
    return-void
.end method
