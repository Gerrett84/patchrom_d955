.class Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$BkPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "WifiScreenHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BkPagerAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "con"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;

    .line 246
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 247
    iput-object p2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$BkPagerAdapter;->mContext:Landroid/content/Context;

    .line 248
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$BkPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 249
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .parameter "pager"
    .parameter "position"
    .parameter "view"

    .prologue
    .line 267
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 268
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 275
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->COUNT:I
    invoke-static {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->access$000(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;)I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 4
    .parameter "pager"
    .parameter "position"

    .prologue
    .line 255
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$BkPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 256
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$BkPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0401ba

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 258
    .local v0, layout:Landroid/view/View;
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;

    #calls: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->initWidget(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->access$500(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;Landroid/view/View;)V

    .line 259
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;

    #calls: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->setUI(I)V
    invoke-static {v1, p2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->access$600(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;I)V

    .line 261
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 262
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "obj"

    .prologue
    .line 271
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
    .line 277
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 282
    return-void
.end method
