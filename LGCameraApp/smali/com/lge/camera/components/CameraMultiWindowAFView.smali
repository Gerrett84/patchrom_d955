.class public Lcom/lge/camera/components/CameraMultiWindowAFView;
.super Landroid/widget/RelativeLayout;
.source "CameraMultiWindowAFView.java"


# instance fields
.field private animationHandler:Landroid/os/Handler;

.field animationSetter:Ljava/lang/Runnable;

.field private areaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInit:Z

.field private previewOnScreenHeight:I

.field private previewOnScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenWidth:I

    .line 30
    iput v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenHeight:I

    .line 32
    iput-boolean v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->mInit:Z

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->animationHandler:Landroid/os/Handler;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    .line 38
    new-instance v0, Lcom/lge/camera/components/CameraMultiWindowAFView$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/CameraMultiWindowAFView$1;-><init>(Lcom/lge/camera/components/CameraMultiWindowAFView;)V

    iput-object v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->animationSetter:Ljava/lang/Runnable;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenWidth:I

    .line 30
    iput v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenHeight:I

    .line 32
    iput-boolean v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->mInit:Z

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->animationHandler:Landroid/os/Handler;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    .line 38
    new-instance v0, Lcom/lge/camera/components/CameraMultiWindowAFView$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/CameraMultiWindowAFView$1;-><init>(Lcom/lge/camera/components/CameraMultiWindowAFView;)V

    iput-object v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->animationSetter:Ljava/lang/Runnable;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/components/CameraMultiWindowAFView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->animationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private makeMultiFocusView()V
    .locals 21

    .prologue
    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 76
    :cond_0
    const-string v19, "CameraApp"

    const-string v20, "Cannot make multi focus window because areaList/mContext == null"

    invoke-static/range {v19 .. v20}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_1
    return-void

    .line 80
    :cond_2
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 81
    .local v10, outMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "window"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/WindowManager;

    .line 82
    .local v18, wm:Landroid/view/WindowManager;
    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 87
    const/4 v4, 0x0

    .line 89
    .local v4, NAVIGATION_BAR_HEIGHT:I
    iget v3, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 90
    .local v3, LCD_WIDTH:I
    iget v2, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 98
    .local v2, LCD_HEIGHT:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0a001c

    invoke-static/range {v19 .. v20}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    .line 104
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 105
    add-int/2addr v3, v4

    .line 113
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 114
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x44fa

    div-float v14, v19, v20

    .line 115
    .local v14, scaleX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x44fa

    div-float v15, v19, v20

    .line 121
    .local v15, scaleY:F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0a00a7

    invoke-static/range {v19 .. v20}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v12

    .line 122
    .local v12, qflWidth:I
    const/4 v11, 0x0

    .line 123
    .local v11, qflMargin:I
    const/16 v17, 0x0

    .line 125
    .local v17, topMargin:I
    invoke-static {}, Lcom/lge/camera/util/Common;->isSmartCoverClosed()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0a0016

    invoke-static/range {v19 .. v20}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v19

    mul-int/lit8 v12, v19, -0x1

    .line 129
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 130
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenWidth:I

    move/from16 v19, v0

    sub-int v19, v3, v19

    if-eqz v19, :cond_7

    move v11, v12

    .line 131
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenHeight:I

    move/from16 v19, v0

    sub-int v19, v2, v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenHeight:I

    move/from16 v19, v0

    sub-int v19, v2, v19

    div-int/lit8 v17, v19, 0x2

    .line 137
    :goto_4
    const/4 v7, 0x0

    .line 138
    .local v7, left:I
    const/16 v16, 0x0

    .line 139
    .local v16, top:I
    const/4 v13, 0x0

    .line 140
    .local v13, right:I
    const/4 v5, 0x0

    .line 144
    .local v5, bottom:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_1

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_1

    .line 149
    new-instance v9, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 151
    .local v9, multiWindowAFGuide:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_c

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f020363

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 158
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/hardware/Camera$Area;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v7, v19, v11

    .line 160
    int-to-float v0, v3

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/hardware/Camera$Area;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    sub-float v19, v20, v19

    int-to-float v0, v11

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v13, v0

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/hardware/Camera$Area;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v15

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v16, v19, v17

    .line 162
    int-to-float v0, v2

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/hardware/Camera$Area;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v15

    sub-float v19, v20, v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v5, v19, v17

    .line 170
    :goto_7
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 171
    .local v8, lp:Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, v16

    invoke-virtual {v8, v7, v0, v13, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 173
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8}, Lcom/lge/camera/components/CameraMultiWindowAFView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 101
    .end local v5           #bottom:I
    .end local v6           #i:I
    .end local v7           #left:I
    .end local v8           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9           #multiWindowAFGuide:Landroid/widget/ImageView;
    .end local v11           #qflMargin:I
    .end local v12           #qflWidth:I
    .end local v13           #right:I
    .end local v14           #scaleX:F
    .end local v15           #scaleY:F
    .end local v16           #top:I
    .end local v17           #topMargin:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0a001d

    invoke-static/range {v19 .. v20}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    goto/16 :goto_0

    .line 107
    :cond_5
    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 117
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x44fa

    div-float v14, v19, v20

    .line 118
    .restart local v14       #scaleX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x44fa

    div-float v15, v19, v20

    .restart local v15       #scaleY:F
    goto/16 :goto_2

    .line 130
    .restart local v11       #qflMargin:I
    .restart local v12       #qflWidth:I
    .restart local v17       #topMargin:I
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 131
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 133
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenWidth:I

    move/from16 v19, v0

    sub-int v19, v2, v19

    if-eqz v19, :cond_a

    move v11, v12

    .line 134
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenHeight:I

    move/from16 v19, v0

    sub-int v19, v3, v19

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenHeight:I

    move/from16 v19, v0

    sub-int v19, v3, v19

    div-int/lit8 v17, v19, 0x2

    :goto_9
    goto/16 :goto_4

    .line 133
    :cond_a
    const/4 v11, 0x0

    goto :goto_8

    .line 134
    :cond_b
    const/16 v17, 0x0

    goto :goto_9

    .line 154
    .restart local v5       #bottom:I
    .restart local v6       #i:I
    .restart local v7       #left:I
    .restart local v9       #multiWindowAFGuide:Landroid/widget/ImageView;
    .restart local v13       #right:I
    .restart local v16       #top:I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f020363

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 155
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 164
    :cond_d
    int-to-float v0, v3

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/hardware/Camera$Area;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    sub-float v19, v20, v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v7, v19, v17

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/hardware/Camera$Area;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v13, v19, v17

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/hardware/Camera$Area;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v15

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v16, v19, v11

    .line 167
    int-to-float v0, v2

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/hardware/Camera$Area;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v15

    sub-float v19, v20, v19

    int-to-float v0, v11

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v5, v0

    goto/16 :goto_7
.end method


# virtual methods
.method public clearAnimation()V
    .locals 4

    .prologue
    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, childView:Landroid/view/View;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 327
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 329
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->cancel()V

    .line 330
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 326
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 333
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->animationHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->animationSetter:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 334
    iget-object v2, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->animationHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->animationSetter:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 336
    :cond_2
    invoke-super {p0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 337
    return-void
.end method

.method public destroyMultiWindowAFGuide()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 361
    iput-object v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->mContext:Landroid/content/Context;

    .line 362
    iput-object v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    .line 363
    iput-object v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->animationHandler:Landroid/os/Handler;

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->mInit:Z

    .line 365
    return-void
.end method

.method public getWindowIndexArrayForAnimation()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v3, windowIndexArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 343
    .local v2, rnd:Ljava/util/Random;
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildCount()I

    move-result v5

    div-int/lit8 v1, v5, 0x3

    .line 346
    .local v1, numberOfWindows:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 347
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v0, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 348
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 354
    .local v4, windowNumber:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 355
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    .end local v4           #windowNumber:I
    :cond_1
    return-object v3
.end method

.method public init(Landroid/content/Context;Ljava/util/List;[I)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "previewSizeOnScreen"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const/4 v1, 0x1

    .line 56
    iput-object p1, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    .line 58
    const/4 v0, 0x0

    aget v0, p3, v0

    iput v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenWidth:I

    .line 59
    aget v0, p3, v1

    iput v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenHeight:I

    .line 60
    invoke-static {}, Lcom/lge/camera/util/Common;->isSmartCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget v0, Lcom/lge/camera/properties/CameraConstants;->smartCoverSizeWidth:I

    iput v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenWidth:I

    .line 62
    sget v0, Lcom/lge/camera/properties/CameraConstants;->smartCoverSizeHeight:I

    iput v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenHeight:I

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->makeMultiFocusView()V

    .line 67
    iput-boolean v1, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->mInit:Z

    .line 68
    return-void
.end method

.method public isInitialize()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->mInit:Z

    return v0
.end method

.method public refresh([I)V
    .locals 1
    .parameter "previewSizeOnScreen"

    .prologue
    .line 178
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenWidth:I

    .line 179
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenHeight:I

    .line 180
    invoke-static {}, Lcom/lge/camera/util/Common;->isSmartCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    sget v0, Lcom/lge/camera/properties/CameraConstants;->smartCoverSizeWidth:I

    iput v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenWidth:I

    .line 182
    sget v0, Lcom/lge/camera/properties/CameraConstants;->smartCoverSizeHeight:I

    iput v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenHeight:I

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->removeAllViews()V

    .line 186
    invoke-direct {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->makeMultiFocusView()V

    .line 187
    return-void
.end method

.method public setAnimation()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    const-wide/16 v6, 0x190

    .line 291
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 292
    .local v4, mAniAlphaFadeIn:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v4, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 293
    invoke-virtual {v4, v10}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 295
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v9, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 296
    .local v5, mAniAlphaFadeOut:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 297
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 298
    invoke-virtual {v5, v10}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 300
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 301
    .local v0, aniSet:Landroid/view/animation/AnimationSet;
    invoke-virtual {v0, v11}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 302
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 303
    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 305
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getWindowIndexArrayForAnimation()Ljava/util/ArrayList;

    move-result-object v1

    .line 306
    .local v1, animatedWindow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 307
    .local v2, childView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 308
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 309
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 310
    if-eqz v2, :cond_0

    .line 311
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 308
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 315
    .end local v3           #i:I
    :cond_1
    return-void
.end method

.method public setBackgroundDefault()V
    .locals 4

    .prologue
    const v3, 0x7f020363

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, childView:Landroid/view/View;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 276
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 277
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 278
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 279
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 275
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 282
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 285
    :cond_1
    return-void
.end method

.method public setCenterWindowStatus(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 255
    .local v0, centerWindow:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 256
    packed-switch p1, :pswitch_data_0

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 258
    :pswitch_0
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020363

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 261
    :pswitch_1
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020367

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 264
    :pswitch_2
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020360

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCenterWindowVisibility(I)V
    .locals 7
    .parameter "visibility"

    .prologue
    const/16 v2, 0x8

    .line 236
    const/4 v1, 0x0

    .line 237
    .local v1, childView:Landroid/view/View;
    if-ne p1, v2, :cond_0

    const/4 v2, 0x0

    .line 238
    .local v2, childViewVisibility:I
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2

    .line 239
    invoke-virtual {p0, v3}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 240
    if-eqz v1, :cond_1

    .line 241
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 238
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 246
    .local v0, centerWindow:Landroid/view/View;
    if-eqz v0, :cond_3

    .line 247
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "visibility = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020363

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 249
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    :cond_3
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    iput-object p1, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    .line 233
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->animationSetter:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->animationSetter:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 321
    :cond_0
    return-void
.end method

.method public update()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f020367

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 190
    iget-object v2, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, childView:Landroid/view/View;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 193
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget v2, v2, Landroid/hardware/Camera$Area;->weight:I

    if-ne v2, v5, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 197
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 192
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2

    .line 200
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 202
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget v2, v2, Landroid/hardware/Camera$Area;->weight:I

    if-nez v2, :cond_3

    .line 203
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 204
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 205
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget v2, v2, Landroid/hardware/Camera$Area;->weight:I

    if-ne v2, v5, :cond_4

    .line 206
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 207
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 209
    :cond_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 210
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020360

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 217
    .end local v0           #childView:Landroid/view/View;
    .end local v1           #i:I
    :cond_5
    return-void
.end method
