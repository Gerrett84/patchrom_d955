.class public Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingExpandChildMenuAdapter.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;
    }
.end annotation


# instance fields
.field private final ALPHA_DISABLE:F

.field private final ALPHA_ENABLE:F

.field private isShowSelectedCheck:Z

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

.field private mCurrentParentKey:Ljava/lang/String;

.field private mMenus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/lge/camera/setting/SettingMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/camera/setting/SettingMenu;)V
    .locals 1
    .parameter "context"
    .parameter "menus"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->isShowSelectedCheck:Z

    .line 30
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->ALPHA_ENABLE:F

    .line 31
    const v0, 0x3e99999a

    iput v0, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->ALPHA_DISABLE:F

    .line 139
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->mCurrentParentKey:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->mContext:Ljava/lang/ref/WeakReference;

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    .line 37
    invoke-virtual {p2, p0}, Lcom/lge/camera/setting/SettingMenu;->addObserver(Ljava/util/Observer;)V

    .line 38
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 41
    iget-object v1, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenu;

    .line 42
    .local v0, settingMenu:Lcom/lge/camera/setting/SettingMenu;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, p0}, Lcom/lge/camera/setting/SettingMenu;->deleteObserver(Ljava/util/Observer;)V

    .line 45
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 147
    iget-object v1, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenu;

    .line 148
    .local v0, settingMenu:Lcom/lge/camera/setting/SettingMenu;
    if-nez v0, :cond_0

    .line 149
    const-string v1, "CameraApp"

    const-string v2, "Cannot return menu counting because settingMenu is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v1, 0x0

    .line 152
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingMenuItem;->getChildCount()I

    move-result v1

    goto :goto_0
.end method

.method public getItem(I)Lcom/lge/camera/setting/SettingMenuItem;
    .locals 3
    .parameter "position"

    .prologue
    .line 156
    iget-object v1, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenu;

    .line 157
    .local v0, settingMenu:Lcom/lge/camera/setting/SettingMenu;
    if-nez v0, :cond_0

    .line 158
    const-string v1, "CameraApp"

    const-string v2, "Cannot return menu item because settingMenu is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v1, 0x0

    .line 161
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/camera/setting/SettingMenuItem;->getChild(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->getItem(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 165
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 52
    iget-object v9, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 53
    .local v1, context:Landroid/content/Context;
    iget-object v9, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/camera/setting/SettingMenu;

    .line 54
    .local v7, settingMenu:Lcom/lge/camera/setting/SettingMenu;
    const/4 v3, 0x0

    .line 55
    .local v3, holder:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;
    move-object/from16 v0, p2

    .line 57
    .local v0, childView:Landroid/view/View;
    if-nez v0, :cond_6

    .line 58
    const-string v9, "layout_inflater"

    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 59
    .local v8, vi:Landroid/view/LayoutInflater;
    const v9, 0x7f03003c

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 60
    if-nez v0, :cond_0

    .line 61
    const-string v9, "CameraApp"

    const-string v10, "SettingExpandChildMenuAdapter error. view is null."

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 v9, 0x0

    .line 136
    .end local v8           #vi:Landroid/view/LayoutInflater;
    :goto_0
    return-object v9

    .line 64
    .restart local v8       #vi:Landroid/view/LayoutInflater;
    :cond_0
    new-instance v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;

    .end local v3           #holder:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;
    invoke-direct {v3, p0}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;-><init>(Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;)V

    .line 65
    .restart local v3       #holder:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;
    const v9, 0x7f0901a2

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mName:Landroid/widget/TextView;

    .line 68
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, currentLanguage:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v9

    const/16 v10, 0x9

    if-ne v9, v10, :cond_1

    const-string v9, "th"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 71
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mName:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 72
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mName:Landroid/widget/TextView;

    sget-object v10, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 75
    :cond_1
    const v9, 0x7f0901a1

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mImage:Landroid/widget/ImageView;

    .line 76
    const v9, 0x7f0901a3

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mRadio:Landroid/widget/ImageView;

    .line 77
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    .end local v2           #currentLanguage:Ljava/lang/String;
    .end local v8           #vi:Landroid/view/LayoutInflater;
    :goto_1
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 83
    .local v4, lp:Landroid/widget/RelativeLayout$LayoutParams;
    sget v9, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_7

    .line 85
    const v9, 0x7f0a016a

    invoke-static {v1, v9}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v9

    const/4 v10, 0x0

    const v11, 0x7f0a016b

    invoke-static {v1, v11}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v4, v9, v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 92
    :goto_2
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->getItem(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v5

    .line 96
    .local v5, menuItem:Lcom/lge/camera/setting/SettingMenuItem;
    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 98
    iget-boolean v9, v5, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    if-eqz v9, :cond_8

    .line 99
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mName:Landroid/widget/TextView;

    const/4 v10, 0x2

    invoke-static {v10}, Lcom/lge/camera/util/ColorUtil;->getItemColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v9

    const/16 v10, 0x9

    if-ne v9, v10, :cond_2

    const-string v9, "th"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 102
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mName:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 104
    :cond_2
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mName:Landroid/widget/TextView;

    const/high16 v10, 0x3f80

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 105
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mImage:Landroid/widget/ImageView;

    const/high16 v10, 0x3f80

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 106
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mRadio:Landroid/widget/ImageView;

    const/high16 v10, 0x3f80

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 114
    :goto_3
    const v9, 0x7f020450

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 115
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v9

    const/16 v10, 0x9

    if-ne v9, v10, :cond_3

    const-string v9, "th"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 117
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mName:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 119
    :cond_3
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mName:Landroid/widget/TextView;

    sget-object v10, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 120
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mName:Landroid/widget/TextView;

    iget-object v10, v5, Lcom/lge/camera/setting/SettingMenuItem;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v9, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->mCurrentParentKey:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/lge/camera/setting/SettingMenu;->getCurrentChildSettingIcons(Ljava/lang/String;)[I

    move-result-object v6

    .line 123
    .local v6, settingIcons:[I
    if-eqz v6, :cond_4

    array-length v9, v6

    if-le v9, p1, :cond_4

    .line 124
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mImage:Landroid/widget/ImageView;

    aget v10, v6, p1

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    :cond_4
    iget-boolean v9, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->isShowSelectedCheck:Z

    if-eqz v9, :cond_9

    iget-boolean v9, v5, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    if-eqz v9, :cond_9

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v9

    iget v9, v9, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    if-ne p1, v9, :cond_9

    .line 131
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mRadio:Landroid/widget/ImageView;

    const v10, 0x7f02004b

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .end local v6           #settingIcons:[I
    :cond_5
    :goto_4
    move-object v9, v0

    .line 136
    goto/16 :goto_0

    .line 79
    .end local v4           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5           #menuItem:Lcom/lge/camera/setting/SettingMenuItem;
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #holder:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;
    check-cast v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;

    .restart local v3       #holder:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;
    goto/16 :goto_1

    .line 89
    .restart local v4       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    const v9, 0x7f0a016d

    invoke-static {v1, v9}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v9

    const/4 v10, 0x0

    const v11, 0x7f0a016e

    invoke-static {v1, v11}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v4, v9, v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2

    .line 108
    .restart local v5       #menuItem:Lcom/lge/camera/setting/SettingMenuItem;
    :cond_8
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mName:Landroid/widget/TextView;

    const/4 v10, 0x3

    invoke-static {v10}, Lcom/lge/camera/util/ColorUtil;->getItemColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mName:Landroid/widget/TextView;

    const v10, 0x3e99999a

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 111
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mImage:Landroid/widget/ImageView;

    const v10, 0x3e99999a

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 112
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mRadio:Landroid/widget/ImageView;

    const v10, 0x3e99999a

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_3

    .line 133
    .restart local v6       #settingIcons:[I
    :cond_9
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mRadio:Landroid/widget/ImageView;

    const v10, 0x7f020431

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->getItem(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    .line 171
    .local v0, ci:Lcom/lge/camera/setting/SettingMenuItem;
    if-nez v0, :cond_0

    .line 172
    const/4 v1, 0x0

    .line 174
    :goto_0
    return v1

    :cond_0
    iget-boolean v1, v0, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    goto :goto_0
.end method

.method public setCurrentParentKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->mCurrentParentKey:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setShowSelectedChild(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->isShowSelectedCheck:Z

    .line 49
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 183
    iget-object v1, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenu;

    .line 184
    .local v0, settingMenu:Lcom/lge/camera/setting/SettingMenu;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    if-nez v1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v1, v0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    new-instance v2, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$1;-><init>(Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;Lcom/lge/camera/setting/SettingMenu;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0
    .parameter "observable"
    .parameter "obj"

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->update()V

    .line 180
    return-void
.end method
