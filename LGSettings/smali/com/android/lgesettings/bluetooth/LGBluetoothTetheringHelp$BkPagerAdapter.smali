.class Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$BkPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "LGBluetoothTetheringHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BkPagerAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "con"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    .line 250
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 251
    iput-object p2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$BkPagerAdapter;->mContext:Landroid/content/Context;

    .line 252
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$BkPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 253
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3
    .parameter "pager"
    .parameter "position"
    .parameter "view"

    .prologue
    .line 315
    const-string v0, "LGBluetoothTetheringHelp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LGBluetoothTetheringHelpGuide destroyItem position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 317
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 325
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->Page_Count:I
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->access$200(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 12
    .parameter "pager"
    .parameter "position"

    .prologue
    const/high16 v11, 0x4160

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 263
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iput-object v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$BkPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 265
    const-string v5, "LGBluetoothTetheringHelp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LGBluetoothTetheringHelpGuide instantiateItem position : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    move v1, p2

    .line 267
    .local v1, page:I
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$BkPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mLayoutArray:[I
    invoke-static {v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->access$800(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)[I

    move-result-object v6

    aget v6, v6, v1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 268
    .local v0, layout:Landroid/view/View;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    invoke-virtual {p1, v0, v9}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 270
    if-nez v1, :cond_3

    .line 274
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    const v6, 0x7f0a0129

    invoke-virtual {v5, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 275
    .local v2, tether_1_numbering:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    const v6, 0x7f0a012a

    invoke-virtual {v5, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 276
    .local v3, tether_2_numbering:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$BkPagerAdapter;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    const v6, 0x7f0a012b

    invoke-virtual {v5, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 281
    .local v4, tether_3_numbering:Landroid/widget/TextView;
    invoke-static {}, Lcom/android/lgesettings/Utils;->isRTLLanguage()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/lgesettings/Utils;->isEnglishDigitRTLLanguage()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 282
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :goto_0
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 288
    invoke-static {}, Lcom/android/lgesettings/Utils;->isRTLLanguage()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/lgesettings/Utils;->isEnglishDigitRTLLanguage()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 289
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%d"

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    :goto_1
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 295
    invoke-static {}, Lcom/android/lgesettings/Utils;->isRTLLanguage()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/lgesettings/Utils;->isEnglishDigitRTLLanguage()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 296
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%d"

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :goto_2
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 310
    .end local v2           #tether_1_numbering:Landroid/widget/TextView;
    .end local v3           #tether_2_numbering:Landroid/widget/TextView;
    .end local v4           #tether_3_numbering:Landroid/widget/TextView;
    :cond_3
    return-object v0

    .line 285
    .restart local v2       #tether_1_numbering:Landroid/widget/TextView;
    .restart local v3       #tether_2_numbering:Landroid/widget/TextView;
    .restart local v4       #tether_3_numbering:Landroid/widget/TextView;
    :cond_4
    const-string v5, "1. "

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 292
    :cond_5
    const-string v5, "2. "

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 299
    :cond_6
    const-string v5, "3. "

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "obj"

    .prologue
    .line 321
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
    .line 328
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 336
    return-void
.end method
