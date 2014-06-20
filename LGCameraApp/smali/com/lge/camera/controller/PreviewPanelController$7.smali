.class Lcom/lge/camera/controller/PreviewPanelController$7;
.super Ljava/lang/Object;
.source "PreviewPanelController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/PreviewPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewPanelController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewPanelController;)V
    .locals 0
    .parameter

    .prologue
    .line 2106
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "view"
    .parameter "motionevent"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2109
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :goto_0
    move v5, v8

    .line 2212
    :cond_0
    :goto_1
    return v5

    .line 2111
    :pswitch_0
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$500(Lcom/lge/camera/controller/PreviewPanelController;)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mLastGalleryImage:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$600(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/ImageView;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$700(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$800(Lcom/lge/camera/controller/PreviewPanelController;)Lcom/lge/camera/components/RotateImageView;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    if-nez v9, :cond_2

    :cond_1
    move v5, v7

    .line 2114
    goto :goto_1

    .line 2117
    :cond_2
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-boolean v9, v9, Lcom/lge/camera/controller/PreviewPanelController;->mAutoReviewBlockTouch:Z

    if-eqz v9, :cond_4

    .line 2118
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;
    invoke-static {v8}, Lcom/lge/camera/controller/PreviewPanelController;->access$700(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    .line 2119
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;
    invoke-static {v8}, Lcom/lge/camera/controller/PreviewPanelController;->access$700(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    move v5, v7

    .line 2121
    goto :goto_1

    .line 2124
    :cond_4
    const/4 v9, 0x2

    new-array v6, v9, [I

    .line 2125
    .local v6, startPos:[I
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v9, v9, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v9, v6}, Lcom/lge/camera/components/RotateImageView;->getLocationOnScreen([I)V

    .line 2126
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v9, v9, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0a0043

    invoke-static {v9, v10}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    .line 2127
    .local v1, buttonWidth:I
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v9, v9, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0a0044

    invoke-static {v9, v10}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 2128
    .local v0, buttonHeight:I
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v9, v9, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0a0008

    invoke-static {v9, v10}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    .line 2129
    .local v4, lcdWidth:I
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v9, v9, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0a0009

    invoke-static {v9, v10}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    .line 2131
    .local v3, lcdHeight:I
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    aget v10, v6, v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v11, v11

    add-int/2addr v10, v11

    div-int/lit8 v11, v1, 0x2

    sub-int/2addr v10, v11

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2132
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    aget v10, v6, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    add-int/2addr v10, v11

    div-int/lit8 v11, v0, 0x2

    sub-int/2addr v10, v11

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2134
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gez v9, :cond_5

    .line 2135
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    iput v8, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2137
    :cond_5
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v9, v9, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2138
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v10, v4, v1

    if-le v9, v10, :cond_6

    .line 2139
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    sub-int v10, v4, v1

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2146
    :cond_6
    :goto_2
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-gez v9, :cond_7

    .line 2147
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    iput v8, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2149
    :cond_7
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v9, v9, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 2150
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v10, v3, v0

    if-le v9, v10, :cond_8

    .line 2151
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    sub-int v10, v3, v0

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2158
    :cond_8
    :goto_3
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$700(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v10}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2160
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$700(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_9

    .line 2161
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$700(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2164
    :cond_9
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    #calls: Lcom/lge/camera/controller/PreviewPanelController;->checkTrashLocation(FF)Z
    invoke-static {v9, v10, v11}, Lcom/lge/camera/controller/PreviewPanelController;->access$1000(Lcom/lge/camera/controller/PreviewPanelController;FF)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 2165
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$500(Lcom/lge/camera/controller/PreviewPanelController;)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 2166
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;
    invoke-static {v7}, Lcom/lge/camera/controller/PreviewPanelController;->access$500(Lcom/lge/camera/controller/PreviewPanelController;)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v7

    const v9, 0x7f0200e7

    invoke-virtual {v7, v9}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    .line 2167
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mLastGalleryImage:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/lge/camera/controller/PreviewPanelController;->access$600(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/ImageView;

    move-result-object v7

    const v9, 0x7f0200e5

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2142
    :cond_a
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v10, v3, v1

    if-le v9, v10, :cond_6

    .line 2143
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    sub-int v10, v3, v1

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_2

    .line 2154
    :cond_b
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v10, v4, v0

    if-le v9, v10, :cond_8

    .line 2155
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    sub-int v10, v4, v0

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_3

    .line 2169
    :cond_c
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;
    invoke-static {v7}, Lcom/lge/camera/controller/PreviewPanelController;->access$500(Lcom/lge/camera/controller/PreviewPanelController;)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 2170
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;
    invoke-static {v7}, Lcom/lge/camera/controller/PreviewPanelController;->access$500(Lcom/lge/camera/controller/PreviewPanelController;)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v7

    const v9, 0x7f0200e6

    invoke-virtual {v7, v9}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    .line 2171
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mLastGalleryImage:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/lge/camera/controller/PreviewPanelController;->access$600(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/ImageView;

    move-result-object v7

    const v9, 0x7f0200e4

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2176
    .end local v0           #buttonHeight:I
    .end local v1           #buttonWidth:I
    .end local v3           #lcdHeight:I
    .end local v4           #lcdWidth:I
    .end local v6           #startPos:[I
    :pswitch_1
    const-string v9, "CameraApp"

    const-string v10, "Gallery key touch up"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v9, v9, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "com.lge.camera.command.HidePIPResizeHandler"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 2179
    const/4 v5, 0x0

    .line 2180
    .local v5, result:Z
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v9, v9, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f09009d

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2181
    .local v2, galleryWindowViewImage:Landroid/view/View;
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-boolean v9, v9, Lcom/lge/camera/controller/PreviewPanelController;->mAutoReviewBlockTouch:Z

    if-nez v9, :cond_e

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_e

    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$1100(Lcom/lge/camera/controller/PreviewPanelController;)I

    move-result v9

    if-eqz v9, :cond_e

    .line 2186
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$000(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    #calls: Lcom/lge/camera/controller/PreviewPanelController;->checkTrashLocation(FF)Z
    invoke-static {v9, v10, v11}, Lcom/lge/camera/controller/PreviewPanelController;->access$1000(Lcom/lge/camera/controller/PreviewPanelController;FF)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 2188
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_d

    .line 2189
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v8, v8, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->showDialogPopup(I)V

    move v5, v7

    .line 2190
    goto/16 :goto_1

    .line 2192
    :cond_d
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v9, v8, v7}, Lcom/lge/camera/controller/PreviewPanelController;->showGalleryQuickViewAnimation(ZZ)V

    .line 2197
    :goto_4
    const/4 v5, 0x1

    .line 2199
    :cond_e
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v8}, Lcom/lge/camera/controller/PreviewPanelController;->reviewThumbnailTouchActionUp()V

    .line 2200
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v8, v8, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "key_camera_shot_mode"

    const-string v10, "shotmode_front_beauty"

    invoke-interface {v8, v9, v10}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_f

    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v8, v8, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "key_camera_shot_mode"

    const-string v10, "shotmode_main_beauty"

    invoke-interface {v8, v9, v10}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2207
    :cond_f
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v8, v8, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8, v7}, Lcom/lge/camera/ControllerFunction;->showBeautyShotBarForNewUx(Z)V

    goto/16 :goto_1

    .line 2195
    :cond_10
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v9, v8, v8}, Lcom/lge/camera/controller/PreviewPanelController;->showGalleryQuickViewAnimation(ZZ)V

    goto :goto_4

    .line 2109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
