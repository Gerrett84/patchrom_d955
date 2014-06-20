.class public Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingExpandParentMenuAdapter.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<[",
        "Lcom/lge/camera/setting/SettingMenuItem;",
        ">;",
        "Ljava/util/Observer;"
    }
.end annotation


# instance fields
.field private calcTime:J

.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field mGet:Lcom/lge/camera/ControllerFunction;

.field private mParentOnClickListener:Landroid/view/View$OnClickListener;

.field private mParentOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPressedCount:I

.field private menus:Ljava/lang/ref/WeakReference;
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
.method public constructor <init>(Landroid/content/Context;ILcom/lge/camera/setting/SettingMenu;Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .parameter "context"
    .parameter "resId"
    .parameter "menus"
    .parameter "mGet"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mPressedCount:I

    .line 181
    new-instance v0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$1;-><init>(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;)V

    iput-object v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mParentOnClickListener:Landroid/view/View$OnClickListener;

    .line 229
    new-instance v0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$2;-><init>(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;)V

    iput-object v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mParentOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->context:Ljava/lang/ref/WeakReference;

    .line 41
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->menus:Ljava/lang/ref/WeakReference;

    .line 42
    invoke-virtual {p3, p0}, Lcom/lge/camera/setting/SettingMenu;->addObserver(Ljava/util/Observer;)V

    .line 43
    iput-object p4, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mGet:Lcom/lge/camera/ControllerFunction;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->isClickedLately(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->calcTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mPressedCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mPressedCount:I

    return p1
.end method

.method static synthetic access$212(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iget v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mPressedCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mPressedCount:I

    return v0
.end method

.method static synthetic access$220(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iget v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mPressedCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mPressedCount:I

    return v0
.end method

.method private getViewMenuItemDisable(Landroid/widget/LinearLayout;Lcom/lge/camera/components/SettingExpandParentImage;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 3
    .parameter "parentItemLayout"
    .parameter "parentImage"
    .parameter "menuText"
    .parameter "currentText"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 264
    const-string v0, "key_none"

    iput-object v0, p2, Lcom/lge/camera/components/SettingExpandParentImage;->key:Ljava/lang/String;

    .line 265
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setSoundEffectsEnabled(Z)V

    .line 266
    const v0, 0x7f020436

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 267
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 269
    invoke-static {}, Lcom/lge/camera/util/ColorUtil;->getDimColorExpand()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/lge/camera/components/SettingExpandParentImage;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 270
    invoke-static {v2}, Lcom/lge/camera/util/ColorUtil;->getItemColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    invoke-static {v2}, Lcom/lge/camera/util/ColorUtil;->getItemColor(I)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 272
    return-void
.end method

.method private getViewMenuItemEnable(Landroid/widget/LinearLayout;Lcom/lge/camera/components/SettingExpandParentImage;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 5
    .parameter "parentItemLayout"
    .parameter "parentImage"
    .parameter "menuText"
    .parameter "currentText"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 249
    const v3, 0x7f020436

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 250
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setSoundEffectsEnabled(Z)V

    .line 251
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 253
    const-string v3, "#ff5d5f61"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 254
    .local v0, menuTextColor:I
    iget-boolean v3, p2, Lcom/lge/camera/components/SettingExpandParentImage;->selected:Z

    if-eqz v3, :cond_0

    .line 255
    const-string v3, "#ff018eac"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 257
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lcom/lge/camera/components/SettingExpandParentImage;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 258
    iget-boolean v3, p2, Lcom/lge/camera/components/SettingExpandParentImage;->selected:Z

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {p2, v1}, Lcom/lge/camera/components/SettingExpandParentImage;->setImageLevel(I)V

    .line 259
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 260
    const/16 v1, 0xff

    const/16 v3, 0x8e

    const/16 v4, 0xac

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    return-void

    :cond_1
    move v1, v2

    .line 258
    goto :goto_0
.end method

.method private isClickedLately(J)Z
    .locals 4
    .parameter "millisToWait"

    .prologue
    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->calcTime:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    .line 177
    const/4 v0, 0x1

    .line 179
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 47
    iget-object v1, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->menus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenu;

    .line 48
    .local v0, settingMenu:Lcom/lge/camera/setting/SettingMenu;
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0, p0}, Lcom/lge/camera/setting/SettingMenu;->deleteObserver(Ljava/util/Observer;)V

    .line 51
    :cond_0
    return-void
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 275
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/Context;

    .line 55
    .local v17, tempContext:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->menus:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/lge/camera/setting/SettingMenu;

    .line 56
    .local v16, settingMenu:Lcom/lge/camera/setting/SettingMenu;
    if-nez v17, :cond_0

    move-object/from16 v18, p2

    .line 170
    :goto_0
    return-object v18

    .line 59
    :cond_0
    if-nez p2, :cond_1

    .line 60
    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 61
    .local v6, layoutInflater:Landroid/view/LayoutInflater;
    const v18, 0x7f03003d

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 63
    .end local v6           #layoutInflater:Landroid/view/LayoutInflater;
    :cond_1
    if-nez p2, :cond_2

    .line 64
    const/16 v18, 0x0

    goto :goto_0

    .line 66
    :cond_2
    const v18, 0x7f0901a5

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 67
    .local v13, parentLayout:Landroid/widget/LinearLayout;
    sget v18, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 68
    sget v18, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 69
    sget-object v18, Lcom/lge/camera/properties/CameraConstants;->PARENT_ITEM_ID:[I

    const/16 v19, 0x3

    aget v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 74
    :goto_1
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    sget v18, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    move/from16 v0, v18

    if-ge v5, v0, :cond_11

    .line 75
    sget-object v18, Lcom/lge/camera/properties/CameraConstants;->PARENT_ITEM_ID:[I

    aget v18, v18, v5

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 76
    .local v12, parentItemLayout:Landroid/widget/LinearLayout;
    const v18, 0x7f0901ac

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/lge/camera/components/SettingExpandParentImage;

    .line 77
    .local v10, parentImage:Lcom/lge/camera/components/SettingExpandParentImage;
    const v18, 0x7f0901ad

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 79
    .local v14, parentMenuText:Landroid/widget/TextView;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, currentLanguage:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v18

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const-string v18, "th"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 82
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 83
    sget-object v18, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 85
    :cond_3
    const v18, 0x7f0901ae

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 86
    .local v8, parentCurrentText:Landroid/widget/TextView;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v18

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const-string v18, "th"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 88
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 89
    sget-object v18, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 92
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mParentOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mParentOnTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    invoke-virtual/range {p0 .. p1}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Lcom/lge/camera/setting/SettingMenuItem;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v0, v5, :cond_9

    .line 96
    invoke-virtual/range {p0 .. p1}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Lcom/lge/camera/setting/SettingMenuItem;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    sget v19, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_6

    .line 97
    const v18, 0x7f02035b

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 108
    :goto_3
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 109
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 110
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setSoundEffectsEnabled(Z)V

    .line 112
    const v18, 0x7f02035a

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/lge/camera/components/SettingExpandParentImage;->setImageResource(I)V

    .line 113
    const-string v18, "key_none"

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/lge/camera/components/SettingExpandParentImage;->key:Ljava/lang/String;

    .line 114
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 71
    .end local v4           #currentLanguage:Ljava/lang/String;
    .end local v5           #i:I
    .end local v8           #parentCurrentText:Landroid/widget/TextView;
    .end local v10           #parentImage:Lcom/lge/camera/components/SettingExpandParentImage;
    .end local v12           #parentItemLayout:Landroid/widget/LinearLayout;
    .end local v14           #parentMenuText:Landroid/widget/TextView;
    :cond_5
    sget-object v18, Lcom/lge/camera/properties/CameraConstants;->PARENT_ITEM_ID:[I

    const/16 v19, 0x3

    aget v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 99
    .restart local v4       #currentLanguage:Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v8       #parentCurrentText:Landroid/widget/TextView;
    .restart local v10       #parentImage:Lcom/lge/camera/components/SettingExpandParentImage;
    .restart local v12       #parentItemLayout:Landroid/widget/LinearLayout;
    .restart local v14       #parentMenuText:Landroid/widget/TextView;
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Lcom/lge/camera/setting/SettingMenuItem;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v5, v0, :cond_7

    .line 100
    const v18, 0x7f02035e

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 101
    :cond_7
    sget v18, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_8

    .line 102
    const v18, 0x7f02035f

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 104
    :cond_8
    const v18, 0x7f02035d

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 119
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Lcom/lge/camera/setting/SettingMenuItem;

    aget-object v7, v18, v5

    .line 121
    .local v7, menuItem:Lcom/lge/camera/setting/SettingMenuItem;
    if-eqz v7, :cond_10

    if-eqz p2, :cond_10

    .line 122
    iget-object v0, v7, Lcom/lge/camera/setting/SettingMenuItem;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {v7}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/SettingMenu;->getCurrentChildSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 125
    .local v9, parentCurrentTextString:Ljava/lang/String;
    if-eqz v9, :cond_a

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 126
    :cond_a
    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :goto_5
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v18

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    const-string v18, "th"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 134
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 137
    :cond_b
    invoke-virtual {v7}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/lge/camera/components/SettingExpandParentImage;->key:Ljava/lang/String;

    .line 138
    iput v5, v10, Lcom/lge/camera/components/SettingExpandParentImage;->column:I

    .line 139
    move/from16 v0, p1

    iput v0, v10, Lcom/lge/camera/components/SettingExpandParentImage;->row:I

    .line 140
    invoke-virtual {v7}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/SettingMenu;->getCurrentChildSettingIcon(Ljava/lang/String;)I

    move-result v15

    .line 141
    .local v15, parentResourceId:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_e

    .line 142
    iget v0, v7, Lcom/lge/camera/setting/SettingMenuItem;->iconResourceId:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/lge/camera/components/SettingExpandParentImage;->setImageResource(I)V

    .line 147
    :goto_6
    iget-boolean v0, v7, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 148
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10, v14, v8}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->getViewMenuItemEnable(Landroid/widget/LinearLayout;Lcom/lge/camera/components/SettingExpandParentImage;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 152
    :goto_7
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 153
    iget-object v11, v7, Lcom/lge/camera/setting/SettingMenuItem;->name:Ljava/lang/String;

    .line 154
    .local v11, parentItemDescription:Ljava/lang/String;
    if-eqz v9, :cond_c

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 155
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 157
    :cond_c
    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 128
    .end local v11           #parentItemDescription:Ljava/lang/String;
    .end local v15           #parentResourceId:I
    :cond_d
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 144
    .restart local v15       #parentResourceId:I
    :cond_e
    invoke-virtual {v10, v15}, Lcom/lge/camera/components/SettingExpandParentImage;->setImageResource(I)V

    goto :goto_6

    .line 150
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10, v14, v8}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->getViewMenuItemDisable(Landroid/widget/LinearLayout;Lcom/lge/camera/components/SettingExpandParentImage;Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_7

    .line 159
    .end local v9           #parentCurrentTextString:Ljava/lang/String;
    .end local v15           #parentResourceId:I
    :cond_10
    const v18, 0x7f02035b

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 160
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 161
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setSoundEffectsEnabled(Z)V

    .line 164
    const v18, 0x7f02035a

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/lge/camera/components/SettingExpandParentImage;->setImageResource(I)V

    .line 165
    const-string v18, "key_none"

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/lge/camera/components/SettingExpandParentImage;->key:Ljava/lang/String;

    .line 166
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .end local v4           #currentLanguage:Ljava/lang/String;
    .end local v7           #menuItem:Lcom/lge/camera/setting/SettingMenuItem;
    .end local v8           #parentCurrentText:Landroid/widget/TextView;
    .end local v10           #parentImage:Lcom/lge/camera/components/SettingExpandParentImage;
    .end local v12           #parentItemLayout:Landroid/widget/LinearLayout;
    .end local v14           #parentMenuText:Landroid/widget/TextView;
    :cond_11
    move-object/from16 v18, p2

    .line 170
    goto/16 :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(II)Z
    .locals 2
    .parameter "position"
    .parameter "column"

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/lge/camera/setting/SettingMenuItem;

    aget-object v0, v1, p2

    .line 286
    .local v0, ci:Lcom/lge/camera/setting/SettingMenuItem;
    if-nez v0, :cond_0

    .line 287
    const/4 v1, 0x0

    .line 290
    :goto_0
    return v1

    :cond_0
    iget-boolean v1, v0, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    goto :goto_0
.end method

.method public update()V
    .locals 3

    .prologue
    .line 299
    iget-object v1, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->menus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenu;

    .line 300
    .local v0, settingMenu:Lcom/lge/camera/setting/SettingMenu;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    if-nez v1, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v1, v0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    new-instance v2, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$3;

    invoke-direct {v2, p0, v0}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$3;-><init>(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;Lcom/lge/camera/setting/SettingMenu;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0
    .parameter "observable"
    .parameter "obj"

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->update()V

    .line 296
    return-void
.end method
