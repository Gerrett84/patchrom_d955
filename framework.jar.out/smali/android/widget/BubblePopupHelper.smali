.class public Landroid/widget/BubblePopupHelper;
.super Ljava/lang/Object;
.source "BubblePopupHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BubblePopupHelper"

.field private static final TARGET_OPERATOR:Ljava/lang/String;

.field private static sHelper:Landroid/widget/BubblePopupHelper;


# instance fields
.field mIsShowingBubblePopup:Z

.field mView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/BubblePopupHelper;->TARGET_OPERATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Landroid/widget/BubblePopupHelper;->mView:Landroid/widget/TextView;

    .line 29
    return-void
.end method

.method private checkParentVisibility(Landroid/view/View;)Z
    .locals 6
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x10202aa

    if-ne v4, v5, :cond_2

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 113
    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 117
    .local v0, parent:Landroid/view/ViewParent;
    const/4 v1, 0x0

    .line 118
    .local v1, target:Landroid/view/View;
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_3

    move-object v1, v0

    .line 119
    check-cast v1, Landroid/view/View;

    .line 121
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Landroid/widget/BubblePopupHelper;->checkParentVisibility(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method private isFloatingWindow()Z
    .locals 5

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, isFloatingWindow:Z
    iget-object v3, p0, Landroid/widget/BubblePopupHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 127
    .local v2, rootView:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 128
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_0

    .line 129
    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d2

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FrameView"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShowingAnyBubblePopup()Z
    .locals 2

    .prologue
    .line 44
    sget-object v0, Landroid/widget/BubblePopupHelper;->sHelper:Landroid/widget/BubblePopupHelper;

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Landroid/widget/BubblePopupHelper;->sHelper:Landroid/widget/BubblePopupHelper;

    iget-boolean v0, v0, Landroid/widget/BubblePopupHelper;->mIsShowingBubblePopup:Z

    .line 48
    :goto_0
    return v0

    .line 47
    :cond_0
    const-string v0, "BubblePopupHelper"

    const-string v1, "BubblePopupHelper has no instance. we don\'t ready to call isShowingBubblePopup and just return false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setShowingAnyBubblePopup(Z)V
    .locals 3
    .parameter "showing"

    .prologue
    .line 36
    sget-object v0, Landroid/widget/BubblePopupHelper;->sHelper:Landroid/widget/BubblePopupHelper;

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Landroid/widget/BubblePopupHelper;->sHelper:Landroid/widget/BubblePopupHelper;

    invoke-virtual {v0, p0}, Landroid/widget/BubblePopupHelper;->setShowingBubblePopup(Z)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    const-string v0, "BubblePopupHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BubblePopupHelper has no instance. Hence we cannot call setShowingBubblePopup : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public checkIsPossibleHideBubblePopup()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0}, Landroid/widget/BubblePopupHelper;->isShowingBubblePopup()Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    iget-object v1, p0, Landroid/widget/BubblePopupHelper;->mView:Landroid/widget/TextView;

    instance-of v1, v1, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/BubblePopupHelper;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkIsPossibleShowBubblePopup()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 68
    iget-object v1, p0, Landroid/widget/BubblePopupHelper;->mView:Landroid/widget/TextView;

    instance-of v1, v1, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/BubblePopupHelper;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    iget-object v1, p0, Landroid/widget/BubblePopupHelper;->mView:Landroid/widget/TextView;

    instance-of v1, v1, Landroid/inputmethodservice/ExtractEditText;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/BubblePopupHelper;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    :cond_2
    invoke-virtual {p0}, Landroid/widget/BubblePopupHelper;->isShowingBubblePopup()Z

    move-result v0

    goto :goto_0
.end method

.method public isFullscreenMode()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 74
    iget-object v6, p0, Landroid/widget/BubblePopupHelper;->mView:Landroid/widget/TextView;

    instance-of v6, v6, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v6, :cond_1

    .line 76
    iget-object v5, p0, Landroid/widget/BubblePopupHelper;->mView:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Landroid/widget/BubblePopupHelper;->checkParentVisibility(Landroid/view/View;)Z

    move-result v5

    .line 107
    :cond_0
    :goto_0
    return v5

    .line 78
    :cond_1
    invoke-direct {p0}, Landroid/widget/BubblePopupHelper;->isFloatingWindow()Z

    move-result v6

    if-nez v6, :cond_0

    .line 81
    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/BubblePopupHelper;->mView:Landroid/widget/TextView;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->isWindowSplit(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 84
    :cond_2
    iget-object v6, p0, Landroid/widget/BubblePopupHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 85
    .local v0, config:Landroid/content/res/Configuration;
    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 86
    iget-object v6, p0, Landroid/widget/BubblePopupHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getImeOptions()I

    move-result v6

    const/high16 v7, 0x200

    and-int/2addr v6, v7

    if-nez v6, :cond_0

    .line 87
    iget-object v6, p0, Landroid/widget/BubblePopupHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getImeOptions()I

    move-result v6

    const/high16 v7, 0x1000

    and-int/2addr v6, v7

    if-nez v6, :cond_0

    .line 90
    iget-object v6, p0, Landroid/widget/BubblePopupHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/widget/BubblePopupHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 92
    :cond_3
    sget-object v6, Landroid/widget/BubblePopupHelper;->TARGET_OPERATOR:Ljava/lang/String;

    const-string v7, "DCM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 93
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 94
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 98
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    const/4 v2, 0x0

    .line 99
    .local v2, mContext:Landroid/content/Context;
    iget-object v6, p0, Landroid/widget/BubblePopupHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 100
    if-eqz v2, :cond_5

    instance-of v6, v2, Landroid/app/Activity;

    if-eqz v6, :cond_5

    move-object v3, v2

    .line 102
    check-cast v3, Landroid/app/Activity;

    .line 103
    .local v3, mHost:Landroid/app/Activity;
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 104
    .local v4, windowSoftInputMode:I
    const/4 v6, 0x3

    if-eq v4, v6, :cond_0

    .line 107
    .end local v3           #mHost:Landroid/app/Activity;
    .end local v4           #windowSoftInputMode:I
    :cond_5
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public isShowingBubblePopup()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Landroid/widget/BubblePopupHelper;->mIsShowingBubblePopup:Z

    return v0
.end method

.method public setShowingBubblePopup(Z)V
    .locals 0
    .parameter "showing"

    .prologue
    .line 53
    iput-boolean p1, p0, Landroid/widget/BubblePopupHelper;->mIsShowingBubblePopup:Z

    .line 54
    return-void
.end method

.method public setTargetHelper()V
    .locals 0

    .prologue
    .line 32
    sput-object p0, Landroid/widget/BubblePopupHelper;->sHelper:Landroid/widget/BubblePopupHelper;

    .line 33
    return-void
.end method
