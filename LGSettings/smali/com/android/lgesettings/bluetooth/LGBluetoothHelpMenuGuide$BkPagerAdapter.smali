.class Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide$BkPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "LGBluetoothHelpMenuGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BkPagerAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "con"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide$BkPagerAdapter;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;

    .line 320
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 321
    iput-object p2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide$BkPagerAdapter;->mContext:Landroid/content/Context;

    .line 322
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide$BkPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 323
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 4
    .parameter "pager"
    .parameter "position"
    .parameter "o"

    .prologue
    .line 363
    const-string v1, "LGBluetoothHelpMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LGBluetoothHelpMenuGuide destroyItem position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p3

    .line 364
    check-cast v0, Landroid/view/View;

    .line 365
    .local v0, view:Landroid/view/View;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 366
    const/4 v0, 0x0

    .line 367
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
    .line 327
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide$BkPagerAdapter;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->Page_Count:I
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->access$100(Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;)I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 5
    .parameter "pager"
    .parameter "position"

    .prologue
    .line 333
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide$BkPagerAdapter;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide$BkPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 335
    const-string v2, "LGBluetoothHelpMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LGBluetoothHelpMenuGuide instantiateItem position : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide$BkPagerAdapter;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mKey_mode:I
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->access$000(Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;)I

    move-result v2

    if-nez v2, :cond_0

    .line 340
    move v1, p2

    .line 354
    .local v1, page:I
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide$BkPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide$BkPagerAdapter;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mLayoutArray:[I
    invoke-static {v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->access$600(Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;)[I

    move-result-object v3

    aget v3, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 356
    .local v0, layout:Landroid/view/View;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 357
    return-object v0

    .line 341
    .end local v0           #layout:Landroid/view/View;
    .end local v1           #page:I
    .restart local p1
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide$BkPagerAdapter;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mKey_mode:I
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->access$000(Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 342
    add-int/lit8 v1, p2, 0x1

    .restart local v1       #page:I
    goto :goto_0

    .line 343
    .end local v1           #page:I
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide$BkPagerAdapter;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mKey_mode:I
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->access$000(Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 344
    add-int/lit8 v1, p2, 0x7

    .restart local v1       #page:I
    goto :goto_0

    .line 345
    .end local v1           #page:I
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide$BkPagerAdapter;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mKey_mode:I
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->access$000(Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 346
    add-int/lit8 v1, p2, 0x8

    .restart local v1       #page:I
    goto :goto_0

    .line 347
    .end local v1           #page:I
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide$BkPagerAdapter;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->mKey_mode:I
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;->access$000(Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 348
    add-int/lit8 v1, p2, 0x9

    .restart local v1       #page:I
    goto :goto_0

    .line 351
    .end local v1           #page:I
    :cond_4
    move v1, p2

    .restart local v1       #page:I
    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "obj"

    .prologue
    .line 371
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
    .line 380
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 389
    return-void
.end method
