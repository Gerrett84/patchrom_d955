.class Lcom/android/lgesettings/lge/TetherSettingsHelpUsb$BkPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "TetherSettingsHelpUsb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BkPagerAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "con"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb$BkPagerAdapter;->this$0:Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;

    .line 286
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 287
    iput-object p2, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb$BkPagerAdapter;->mContext:Landroid/content/Context;

    .line 288
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb$BkPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 289
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .parameter "pager"
    .parameter "position"
    .parameter "view"

    .prologue
    .line 307
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 308
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 315
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb$BkPagerAdapter;->this$0:Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;

    #getter for: Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->COUNT:I
    invoke-static {v0}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->access$000(Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;)I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 4
    .parameter "pager"
    .parameter "position"

    .prologue
    .line 295
    iget-object v1, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb$BkPagerAdapter;->this$0:Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb$BkPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 296
    iget-object v1, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb$BkPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040166

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 298
    .local v0, layout:Landroid/view/View;
    iget-object v1, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb$BkPagerAdapter;->this$0:Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;

    #calls: Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->initWidget(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->access$500(Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;Landroid/view/View;)V

    .line 299
    iget-object v1, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb$BkPagerAdapter;->this$0:Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;

    #calls: Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->setUI(I)V
    invoke-static {v1, p2}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->access$600(Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;I)V

    .line 301
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 302
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "obj"

    .prologue
    .line 311
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
    .line 317
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 322
    return-void
.end method
