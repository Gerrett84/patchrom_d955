.class public Lcom/lge/camera/controller/BubblePopupController;
.super Ljava/lang/Object;
.source "BubblePopupController.java"


# static fields
.field private static mBubblePopupController:Lcom/lge/camera/controller/BubblePopupController;


# instance fields
.field private mBubblePopupType:I

.field private mNotiComplete:Z

.field private mPopupView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/camera/controller/BubblePopupController;->mBubblePopupController:Lcom/lge/camera/controller/BubblePopupController;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v1, p0, Lcom/lge/camera/controller/BubblePopupController;->mBubblePopupType:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/BubblePopupController;->mPopupView:Landroid/view/View;

    .line 25
    iput-boolean v1, p0, Lcom/lge/camera/controller/BubblePopupController;->mNotiComplete:Z

    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/BubblePopupController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lge/camera/controller/BubblePopupController;->mPopupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/camera/controller/BubblePopupController;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lge/camera/controller/BubblePopupController;->mPopupView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/BubblePopupController;Lcom/lge/camera/Mediator;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/controller/BubblePopupController;->setBubblePopupAnimation(Lcom/lge/camera/Mediator;Landroid/view/View;Z)V

    return-void
.end method

.method public static get()Lcom/lge/camera/controller/BubblePopupController;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/lge/camera/controller/BubblePopupController;->mBubblePopupController:Lcom/lge/camera/controller/BubblePopupController;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/lge/camera/controller/BubblePopupController;

    invoke-direct {v0}, Lcom/lge/camera/controller/BubblePopupController;-><init>()V

    sput-object v0, Lcom/lge/camera/controller/BubblePopupController;->mBubblePopupController:Lcom/lge/camera/controller/BubblePopupController;

    .line 33
    :cond_0
    sget-object v0, Lcom/lge/camera/controller/BubblePopupController;->mBubblePopupController:Lcom/lge/camera/controller/BubblePopupController;

    return-object v0
.end method

.method private isEqualDegree(ZII)Z
    .locals 3
    .parameter "landscape"
    .parameter "current"
    .parameter "input"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 162
    if-eqz p1, :cond_2

    .line 163
    if-ne p2, p3, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 163
    goto :goto_0

    .line 165
    :cond_2
    add-int/lit8 v2, p2, 0x5a

    rem-int/lit16 v2, v2, 0x168

    if-eq v2, p3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private setBubblePopupAnimation(Lcom/lge/camera/Mediator;Landroid/view/View;Z)V
    .locals 6
    .parameter "mediator"
    .parameter "aniView"
    .parameter "show"

    .prologue
    .line 195
    const-string v4, "CameraApp"

    const-string v5, "qflSettingAnimation-start"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f040008

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 202
    .local v3, showAni:Landroid/view/animation/Animation;
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f040009

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 204
    .local v2, hideAni:Landroid/view/animation/Animation;
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/CameraActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 205
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 206
    const/4 v4, 0x4

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    .end local v2           #hideAni:Landroid/view/animation/Animation;
    .end local v3           #showAni:Landroid/view/animation/Animation;
    :catch_0
    move-exception v1

    .line 235
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "CameraApp"

    const-string v5, "NullPointerException : "

    invoke-static {v4, v5, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 208
    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v2       #hideAni:Landroid/view/animation/Animation;
    .restart local v3       #showAni:Landroid/view/animation/Animation;
    :cond_3
    :try_start_1
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 209
    const/4 v4, 0x4

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 211
    if-eqz p3, :cond_4

    move-object v0, v3

    .line 212
    .local v0, animation:Landroid/view/animation/Animation;
    :goto_1
    if-eqz v0, :cond_0

    .line 213
    new-instance v4, Lcom/lge/camera/controller/BubblePopupController$2;

    invoke-direct {v4, p0, p2, p1, p3}, Lcom/lge/camera/controller/BubblePopupController$2;-><init>(Lcom/lge/camera/controller/BubblePopupController;Landroid/view/View;Lcom/lge/camera/Mediator;Z)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 231
    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_4
    move-object v0, v2

    .line 211
    goto :goto_1
.end method

.method private setLayout(Lcom/lge/camera/Mediator;Lcom/lge/camera/components/RotateLayout;I)V
    .locals 20
    .parameter "mediator"
    .parameter "rl"
    .parameter "degree"

    .prologue
    .line 73
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 78
    .local v11, params:Landroid/widget/RelativeLayout$LayoutParams;
    const v17, 0x7f090032

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 79
    .local v4, bubbleView:Landroid/view/View;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/RotateLayout;->measure(II)V

    .line 80
    const v17, 0x7f090033

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/lge/camera/components/RotateTextView;

    .line 82
    .local v13, rtv:Lcom/lge/camera/components/RotateTextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/BubblePopupController;->mBubblePopupType:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    goto :goto_0

    .line 85
    :pswitch_0
    const v17, 0x7f0b02da

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 86
    .local v10, message:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 87
    const v17, 0x7f0b02e1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 90
    :cond_2
    invoke-static {v11}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 91
    const/4 v5, 0x1

    .line 92
    .local v5, isConfigureLandscape:Z
    invoke-virtual/range {p1 .. p1}, Lcom/lge/camera/Mediator;->isConfigureLandscape()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 93
    const/16 v17, 0xc

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 94
    const/16 v17, 0xb

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 101
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const v18, 0x7f0a0008

    invoke-static/range {v17 .. v18}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v7

    .line 102
    .local v7, lcd_width:I
    invoke-virtual/range {p1 .. p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const v18, 0x7f0a0009

    invoke-static/range {v17 .. v18}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v6

    .line 103
    .local v6, lcd_height:I
    invoke-virtual/range {p1 .. p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const v18, 0x7f0a0232

    invoke-static/range {v17 .. v18}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v16

    .line 104
    .local v16, topMargin:I
    invoke-virtual/range {p1 .. p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const v18, 0x7f0a0234

    invoke-static/range {v17 .. v18}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    .line 105
    .local v3, bottomMargin:I
    invoke-virtual/range {p1 .. p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const v18, 0x7f0a00a7

    invoke-static/range {v17 .. v18}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v8

    .line 106
    .local v8, leftMargin:I
    invoke-virtual/range {p1 .. p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const v18, 0x7f0a001a

    invoke-static/range {v17 .. v18}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f0a001d

    invoke-static/range {v18 .. v19}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v18

    add-int v12, v17, v18

    .line 108
    .local v12, rightMargin:I
    const/4 v9, 0x0

    .line 109
    .local v9, maxWidth:I
    const/4 v14, 0x0

    .line 111
    .local v14, tempBottomMargin:I
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v17

    invoke-direct {v0, v5, v1, v2}, Lcom/lge/camera/controller/BubblePopupController;->isEqualDegree(ZII)Z

    move-result v17

    if-nez v17, :cond_3

    const/16 v17, 0xb4

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v17

    invoke-direct {v0, v5, v1, v2}, Lcom/lge/camera/controller/BubblePopupController;->isEqualDegree(ZII)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 113
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const v18, 0x7f0a004e

    invoke-static/range {v17 .. v18}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v14

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const v18, 0x7f0a0044

    invoke-static/range {v17 .. v18}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v15

    .line 115
    .local v15, thumbHeight:I
    sub-int v17, v15, v3

    div-int/lit8 v17, v17, 0x2

    add-int v14, v14, v17

    .line 117
    sub-int v17, v7, v8

    sub-int v17, v17, v12

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v18

    sub-int v9, v17, v18

    .line 118
    invoke-virtual {v13}, Lcom/lge/camera/components/RotateTextView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v10, v9}, Lcom/lge/camera/util/Common;->breakTextToMultiLine(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 119
    invoke-virtual {v13, v10}, Lcom/lge/camera/components/RotateTextView;->setText(Ljava/lang/String;)V

    .line 121
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v17

    invoke-direct {v0, v5, v1, v2}, Lcom/lge/camera/controller/BubblePopupController;->isEqualDegree(ZII)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 122
    const v17, 0x7f0200db

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 140
    .end local v15           #thumbHeight:I
    :goto_2
    if-eqz v5, :cond_8

    .line 141
    iput v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 142
    move/from16 v0, v16

    iput v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 143
    iput v8, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 144
    iput v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 152
    :goto_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/components/RotateLayout;->invalidate()V

    goto/16 :goto_0

    .line 96
    .end local v3           #bottomMargin:I
    .end local v6           #lcd_height:I
    .end local v7           #lcd_width:I
    .end local v8           #leftMargin:I
    .end local v9           #maxWidth:I
    .end local v12           #rightMargin:I
    .end local v14           #tempBottomMargin:I
    .end local v16           #topMargin:I
    :cond_4
    const/16 v17, 0xc

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 97
    const/16 v17, 0x9

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 98
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 124
    .restart local v3       #bottomMargin:I
    .restart local v6       #lcd_height:I
    .restart local v7       #lcd_width:I
    .restart local v8       #leftMargin:I
    .restart local v9       #maxWidth:I
    .restart local v12       #rightMargin:I
    .restart local v14       #tempBottomMargin:I
    .restart local v15       #thumbHeight:I
    .restart local v16       #topMargin:I
    :cond_5
    const v17, 0x7f0200dc

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 127
    .end local v15           #thumbHeight:I
    :cond_6
    move v14, v3

    .line 129
    sub-int v17, v6, v16

    sub-int v17, v17, v3

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v18

    sub-int v9, v17, v18

    .line 130
    invoke-virtual {v13}, Lcom/lge/camera/components/RotateTextView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v10, v9}, Lcom/lge/camera/util/Common;->breakTextToMultiLine(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 131
    invoke-virtual {v13, v10}, Lcom/lge/camera/components/RotateTextView;->setText(Ljava/lang/String;)V

    .line 133
    const/16 v17, 0x5a

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v17

    invoke-direct {v0, v5, v1, v2}, Lcom/lge/camera/controller/BubblePopupController;->isEqualDegree(ZII)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 134
    const v17, 0x7f0200dd

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 136
    :cond_7
    const v17, 0x7f0200de

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 146
    :cond_8
    move/from16 v0, v16

    iput v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 147
    iput v8, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 148
    iput v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 149
    iput v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_3

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public initializeNotiComplete()V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/BubblePopupController;->mNotiComplete:Z

    .line 253
    return-void
.end method

.method public removeBubblePopup(Lcom/lge/camera/Mediator;J)V
    .locals 1
    .parameter "mediator"
    .parameter "duration"

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 192
    :goto_0
    return-void

    .line 177
    :cond_0
    new-instance v0, Lcom/lge/camera/controller/BubblePopupController$1;

    invoke-direct {v0, p0, p1}, Lcom/lge/camera/controller/BubblePopupController$1;-><init>(Lcom/lge/camera/controller/BubblePopupController;Lcom/lge/camera/Mediator;)V

    invoke-virtual {p1, v0, p2, p3}, Lcom/lge/camera/Mediator;->postOnUiThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public setNotiComplete(Z)V
    .locals 0
    .parameter "complete"

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/lge/camera/controller/BubblePopupController;->mNotiComplete:Z

    .line 171
    return-void
.end method

.method public showBubblePopup(Lcom/lge/camera/Mediator;IJ)V
    .locals 6
    .parameter "mediator"
    .parameter "popupType"
    .parameter "duration"

    .prologue
    const/4 v5, 0x1

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, result:Z
    packed-switch p2, :pswitch_data_0

    .line 67
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p0, p1, p3, p4}, Lcom/lge/camera/controller/BubblePopupController;->removeBubblePopup(Lcom/lge/camera/Mediator;J)V

    .line 70
    :cond_1
    return-void

    .line 44
    :pswitch_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/lge/camera/controller/BubblePopupController;->mNotiComplete:Z

    if-nez v3, :cond_0

    .line 48
    const v3, 0x7f0900c1

    invoke-virtual {p1, v3}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 49
    .local v1, vg:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/lge/camera/controller/BubblePopupController;->mPopupView:Landroid/view/View;

    if-nez v3, :cond_2

    .line 50
    const v3, 0x7f030004

    invoke-virtual {p1, v3}, Lcom/lge/camera/Mediator;->inflateView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/controller/BubblePopupController;->mPopupView:Landroid/view/View;

    .line 52
    :cond_2
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/BubblePopupController;->mPopupView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 53
    iget-object v3, p0, Lcom/lge/camera/controller/BubblePopupController;->mPopupView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 55
    const v3, 0x7f090031

    invoke-virtual {p1, v3}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 56
    .local v2, view:Landroid/view/View;
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v3, v4}, Lcom/lge/camera/controller/BubblePopupController;->startRotation(Lcom/lge/camera/Mediator;IZ)V

    .line 57
    invoke-direct {p0, p1, v2, v5}, Lcom/lge/camera/controller/BubblePopupController;->setBubblePopupAnimation(Lcom/lge/camera/Mediator;Landroid/view/View;Z)V

    .line 58
    const/4 v0, 0x1

    .line 59
    iput p2, p0, Lcom/lge/camera/controller/BubblePopupController;->mBubblePopupType:I

    .line 60
    iput-boolean v5, p0, Lcom/lge/camera/controller/BubblePopupController;->mNotiComplete:Z

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public startRotation(Lcom/lge/camera/Mediator;IZ)V
    .locals 3
    .parameter "mediator"
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 240
    if-nez p1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    const v2, 0x7f090031

    invoke-virtual {p1, v2}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 244
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 245
    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 246
    .local v0, rl:Lcom/lge/camera/components/RotateLayout;
    invoke-direct {p0, p1, v0, p2}, Lcom/lge/camera/controller/BubblePopupController;->setLayout(Lcom/lge/camera/Mediator;Lcom/lge/camera/components/RotateLayout;I)V

    .line 247
    invoke-virtual {v0, p2}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    goto :goto_0
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/camera/controller/BubblePopupController;->mBubblePopupController:Lcom/lge/camera/controller/BubblePopupController;

    .line 38
    return-void
.end method
