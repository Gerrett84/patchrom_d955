.class Lcom/android/lgesettings/lge/ConnectivityHelperPopup$BkPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ConnectivityHelperPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/ConnectivityHelperPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BkPagerAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/lgesettings/lge/ConnectivityHelperPopup;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "con"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup$BkPagerAdapter;->this$0:Lcom/android/lgesettings/lge/ConnectivityHelperPopup;

    .line 226
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 228
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup$BkPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 229
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .parameter "pager"
    .parameter "position"
    .parameter "view"

    .prologue
    .line 247
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 248
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 255
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup$BkPagerAdapter;->this$0:Lcom/android/lgesettings/lge/ConnectivityHelperPopup;

    #getter for: Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mTotalPage:I
    invoke-static {v0}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->access$000(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;)I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 4
    .parameter "pager"
    .parameter "position"

    .prologue
    .line 235
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup$BkPagerAdapter;->this$0:Lcom/android/lgesettings/lge/ConnectivityHelperPopup;

    const-string v2, "layout_inflater"

    #calls: Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->access$500(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup$BkPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 236
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup$BkPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040176

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 238
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup$BkPagerAdapter;->this$0:Lcom/android/lgesettings/lge/ConnectivityHelperPopup;

    #calls: Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->initLayout(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->access$600(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;Landroid/view/View;)V

    .line 239
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup$BkPagerAdapter;->this$0:Lcom/android/lgesettings/lge/ConnectivityHelperPopup;

    #calls: Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->updatePageView(I)V
    invoke-static {v1, p2}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->access$700(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;I)V

    .line 241
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 242
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "obj"

    .prologue
    .line 251
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
    .line 257
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 262
    return-void
.end method
