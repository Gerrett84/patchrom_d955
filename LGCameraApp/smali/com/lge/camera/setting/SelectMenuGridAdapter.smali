.class public Lcom/lge/camera/setting/SelectMenuGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectMenuGridAdapter.java"


# instance fields
.field private ROW_NUM_LAND:I

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDragViewGroup:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/components/RotateImageButton;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMenus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/setting/SettingMenuItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRowNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter
    .parameter "colNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/setting/SettingMenuItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/components/RotateImageButton;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, menus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/camera/setting/SettingMenuItem;>;"
    .local p3, dragViewGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/camera/components/RotateImageButton;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/setting/SelectMenuGridAdapter;->ROW_NUM_LAND:I

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/setting/SelectMenuGridAdapter;->mContext:Ljava/lang/ref/WeakReference;

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/setting/SelectMenuGridAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/setting/SelectMenuGridAdapter;->mDragViewGroup:Ljava/lang/ref/WeakReference;

    .line 38
    iput p4, p0, Lcom/lge/camera/setting/SelectMenuGridAdapter;->mRowNum:I

    .line 39
    return-void
.end method

.method private adjustCount()I
    .locals 4

    .prologue
    .line 144
    iget-object v2, p0, Lcom/lge/camera/setting/SelectMenuGridAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/lge/camera/setting/SelectMenuGridAdapter;->mRowNum:I

    rem-int v1, v2, v3

    .line 145
    .local v1, remainder:I
    const/4 v0, 0x0

    .line 147
    .local v0, addCount:I
    if-eqz v1, :cond_0

    .line 148
    iget v2, p0, Lcom/lge/camera/setting/SelectMenuGridAdapter;->mRowNum:I

    sub-int v0, v2, v1

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/setting/SelectMenuGridAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v0

    return v2
.end method

.method private isDefinedQFL(Ljava/lang/String;)Z
    .locals 3
    .parameter "key"

    .prologue
    .line 106
    const/4 v1, 0x0

    .line 107
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/setting/SelectMenuGridAdapter;->mDragViewGroup:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 108
    iget-object v2, p0, Lcom/lge/camera/setting/SelectMenuGridAdapter;->mDragViewGroup:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2}, Lcom/lge/camera/components/RotateImageButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #pref:Lcom/lge/camera/setting/ListPreference;
    check-cast v1, Lcom/lge/camera/setting/ListPreference;

    .line 109
    .restart local v1       #pref:Lcom/lge/camera/setting/ListPreference;
    if-nez v1, :cond_1

    .line 107
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 113
    const/4 v2, 0x1

    .line 116
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/lge/camera/setting/SelectMenuGridAdapter;->adjustCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/lge/camera/setting/SettingMenuItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lge/camera/setting/SelectMenuGridAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/lge/camera/setting/SelectMenuGridAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenuItem;

    .line 132
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SelectMenuGridAdapter;->getItem(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 136
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 46
    move-object/from16 v8, p2

    .line 47
    .local v8, selectItemView:Landroid/view/View;
    if-nez v8, :cond_0

    .line 48
    iget-object v13, p0, Lcom/lge/camera/setting/SelectMenuGridAdapter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Context;

    const-string v14, "layout_inflater"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 49
    .local v12, vi:Landroid/view/LayoutInflater;
    const v13, 0x7f030035

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 50
    if-nez v8, :cond_0

    .line 51
    const-string v13, "CameraApp"

    const-string v14, "SelectMenuGridAdapter error. view is null."

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v13, 0x0

    .line 102
    .end local v12           #vi:Landroid/view/LayoutInflater;
    :goto_0
    return-object v13

    .line 56
    :cond_0
    const/4 v6, 0x0

    .line 57
    .local v6, layoutParams:Landroid/widget/AbsListView$LayoutParams;
    const v13, 0x7f090186

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 58
    .local v4, iconView:Landroid/widget/ImageView;
    const v13, 0x7f090187

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 61
    .local v11, tv:Landroid/widget/TextView;
    if-eqz v11, :cond_1

    if-eqz v4, :cond_1

    .line 63
    sget-object v13, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v14, 0x1

    invoke-virtual {v11, v13, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 65
    iget v13, p0, Lcom/lge/camera/setting/SelectMenuGridAdapter;->mRowNum:I

    iget v14, p0, Lcom/lge/camera/setting/SelectMenuGridAdapter;->ROW_NUM_LAND:I

    if-ne v13, v14, :cond_2

    .line 66
    iget-object v13, p0, Lcom/lge/camera/setting/SelectMenuGridAdapter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Context;

    const v14, 0x7f0a01f9

    invoke-static {v13, v14}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    .line 67
    .local v2, gridLayoutWidth:I
    iget-object v13, p0, Lcom/lge/camera/setting/SelectMenuGridAdapter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Context;

    const v14, 0x7f0a01fa

    invoke-static {v13, v14}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    .line 68
    .local v1, gridLayoutHeight:I
    iget-object v13, p0, Lcom/lge/camera/setting/SelectMenuGridAdapter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Context;

    const v14, 0x7f0a0200

    invoke-static {v13, v14}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v10

    .line 74
    .local v10, topMargin:I
    :goto_1
    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    .end local v6           #layoutParams:Landroid/widget/AbsListView$LayoutParams;
    invoke-direct {v6, v2, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 75
    .restart local v6       #layoutParams:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 78
    .local v7, param:Landroid/widget/RelativeLayout$LayoutParams;
    iput v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 79
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    invoke-virtual/range {p0 .. p1}, Lcom/lge/camera/setting/SelectMenuGridAdapter;->getItem(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    .line 83
    .local v0, ci:Lcom/lge/camera/setting/SettingMenuItem;
    if-eqz v0, :cond_7

    .line 84
    iget-object v13, v0, Lcom/lge/camera/setting/SettingMenuItem;->name:Ljava/lang/String;

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/lge/camera/setting/SelectMenuGridAdapter;->isDefinedQFL(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    const/4 v5, 0x1

    .line 86
    .local v5, isDefinedQFL:Z
    :goto_2
    if-eqz v5, :cond_4

    const/4 v13, 0x2

    invoke-static {v13}, Lcom/lge/camera/util/ColorUtil;->getItemColor(I)I

    move-result v9

    .line 87
    .local v9, textColor:I
    :goto_3
    if-eqz v5, :cond_5

    const/4 v13, 0x5

    invoke-static {v13}, Lcom/lge/camera/util/ColorUtil;->getItemColor(I)I

    move-result v3

    .line 88
    .local v3, iconColor:I
    :goto_4
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    iget v13, v0, Lcom/lge/camera/setting/SettingMenuItem;->iconResourceId:I

    if-eqz v13, :cond_6

    .line 90
    iget v13, v0, Lcom/lge/camera/setting/SettingMenuItem;->iconResourceId:I

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 101
    .end local v0           #ci:Lcom/lge/camera/setting/SettingMenuItem;
    .end local v1           #gridLayoutHeight:I
    .end local v2           #gridLayoutWidth:I
    .end local v3           #iconColor:I
    .end local v5           #isDefinedQFL:Z
    .end local v7           #param:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9           #textColor:I
    .end local v10           #topMargin:I
    :cond_1
    :goto_5
    const v13, 0x7f020438

    invoke-virtual {v8, v13}, Landroid/view/View;->setBackgroundResource(I)V

    move-object v13, v8

    .line 102
    goto/16 :goto_0

    .line 70
    :cond_2
    iget-object v13, p0, Lcom/lge/camera/setting/SelectMenuGridAdapter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Context;

    const v14, 0x7f0a01fb

    invoke-static {v13, v14}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    .line 71
    .restart local v2       #gridLayoutWidth:I
    iget-object v13, p0, Lcom/lge/camera/setting/SelectMenuGridAdapter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Context;

    const v14, 0x7f0a01fc

    invoke-static {v13, v14}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    .line 72
    .restart local v1       #gridLayoutHeight:I
    iget-object v13, p0, Lcom/lge/camera/setting/SelectMenuGridAdapter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Context;

    const v14, 0x7f0a0201

    invoke-static {v13, v14}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v10

    .restart local v10       #topMargin:I
    goto :goto_1

    .line 85
    .restart local v0       #ci:Lcom/lge/camera/setting/SettingMenuItem;
    .restart local v7       #param:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 86
    .restart local v5       #isDefinedQFL:Z
    :cond_4
    const/4 v13, 0x3

    invoke-static {v13}, Lcom/lge/camera/util/ColorUtil;->getItemColor(I)I

    move-result v9

    goto :goto_3

    .line 87
    .restart local v9       #textColor:I
    :cond_5
    const/4 v13, 0x3

    invoke-static {v13}, Lcom/lge/camera/util/ColorUtil;->getItemColor(I)I

    move-result v3

    goto :goto_4

    .line 94
    .restart local v3       #iconColor:I
    :cond_6
    const/4 v13, 0x4

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 97
    .end local v3           #iconColor:I
    .end local v5           #isDefinedQFL:Z
    .end local v9           #textColor:I
    :cond_7
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5
.end method

.method public setRowNum(I)V
    .locals 0
    .parameter "rowNum"

    .prologue
    .line 140
    iput p1, p0, Lcom/lge/camera/setting/SelectMenuGridAdapter;->mRowNum:I

    .line 141
    return-void
.end method

.method public setRowNumLandscape(I)V
    .locals 0
    .parameter "num"

    .prologue
    .line 42
    iput p1, p0, Lcom/lge/camera/setting/SelectMenuGridAdapter;->ROW_NUM_LAND:I

    .line 43
    return-void
.end method
