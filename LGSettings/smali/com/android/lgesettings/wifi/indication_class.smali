.class public Lcom/android/lgesettings/wifi/indication_class;
.super Landroid/widget/LinearLayout;
.source "indication_class.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method public updatePageIndicator(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 11
    .parameter "vg"
    .parameter "inputView"
    .parameter "Page_Max"
    .parameter "Page_count"

    .prologue
    .line 39
    move-object v4, p2

    .line 41
    .local v4, layout:Landroid/view/View;
    const v7, 0x7f0a02d5

    :try_start_0
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 42
    .local v3, indication_LinearLayout:Landroid/widget/LinearLayout;
    if-eqz v3, :cond_2

    .line 44
    new-instance v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    .local v6, margin:Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v6, :cond_2

    .line 47
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    add-int/lit8 v7, p3, 0x1

    if-ge v1, v7, :cond_2

    .line 49
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 51
    .local v2, indicationImg:Landroid/widget/ImageView;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52
    .local v5, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v2, :cond_0

    if-eqz v5, :cond_0

    .line 54
    if-ne v1, p4, :cond_1

    .line 56
    const v7, 0x7f020252

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    :goto_1
    const/16 v7, 0x8

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 62
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    const/16 v7, 0x8

    const/16 v8, 0x8

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 64
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_1
    const v7, 0x7f020251

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 77
    .end local v1           #i:I
    .end local v2           #indicationImg:Landroid/widget/ImageView;
    .end local v3           #indication_LinearLayout:Landroid/widget/LinearLayout;
    .end local v5           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v6           #margin:Landroid/view/ViewGroup$MarginLayoutParams;
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "Indication_class"

    const-string v8, "indication Fail: IOException2"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    return-void
.end method
