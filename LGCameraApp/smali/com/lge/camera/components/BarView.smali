.class public abstract Lcom/lge/camera/components/BarView;
.super Landroid/widget/RelativeLayout;
.source "BarView.java"


# static fields
.field public static CURSOR_MIN_STEP:I = 0x0

.field public static CURSOR_ONE_STEP_MINUS:I = 0x0

.field public static final CURSOR_ONE_STEP_MINUS_BUTTON:I = -0x1

.field public static CURSOR_ONE_STEP_PLUS:I = 0x0

.field public static final CURSOR_ONE_STEP_PLUS_BUTTON:I = 0x1

.field public static final NONE_SETTING_KEY:Ljava/lang/String; = "none"

.field public static final TYPE_3D_DEPTH_BAR:I = 0x3

.field public static final TYPE_BEAUTYSHOT_BAR:I = 0x2

.field public static final TYPE_BRIGHTNESS_BAR:I = 0x1

.field public static final TYPE_MANUAL_FOCUS_BAR:I = 0x8

.field public static final TYPE_SETTING_3D_DEPTH_BAR:I = 0x7

.field public static final TYPE_SETTING_BEAUTYSHOT_BAR:I = 0x6

.field public static final TYPE_SETTING_BRIGHTNESS_BAR:I = 0x5

.field public static final TYPE_SETTING_BRIGHTNESS_BAR_EXPAND:I = 0x9

.field public static final TYPE_SETTING_ZOOM_BAR:I = 0x4

.field public static final TYPE_ZOOM_BAR:I


# instance fields
.field protected CURSOR_HEIGHT:F

.field protected CURSOR_HEIGHT_PORT:F

.field protected CURSOR_POS_HEIGHT:I

.field protected CURSOR_POS_HEIGHT_PORT:I

.field protected CURSOR_POS_WIDTH:I

.field protected CURSOR_WIDTH:F

.field protected LONG_PRESS_EVENT_DELAY:J

.field protected LONG_PRESS_JUDGE_TIMEOUT:J

.field protected MAX_CURSOR_POS:I

.field protected MAX_CURSOR_POS_PORT:I

.field protected MIN_CURSOR_POS:I

.field protected RELEASE_EXPAND_BOTTOM:I

.field protected RELEASE_EXPAND_LEFT:I

.field protected RELEASE_EXPAND_RIGHT:I

.field protected RELEASE_EXPAND_TOP:I

.field protected barSettingCommand:Ljava/lang/String;

.field protected barSettingKey:Ljava/lang/String;

.field protected cursorBGResId:I

.field protected cursorResId:I

.field protected mBarAction:Lcom/lge/camera/components/BarAction;

.field public mBarType:I

.field protected mButtonCheckTimer:Ljava/util/Timer;

.field protected mCursorMaxStep:I

.field protected mInitial:Z

.field public mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

.field public mOnLineTouchListener:Landroid/view/View$OnTouchListener;

.field protected mValue:I

.field protected minusButtonResId:I

.field protected minusButtonViewResId:I

.field protected plusButtonResId:I

.field protected plusButtonViewResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput v0, Lcom/lge/camera/components/BarView;->CURSOR_MIN_STEP:I

    .line 45
    const/4 v0, -0x1

    sput v0, Lcom/lge/camera/components/BarView;->CURSOR_ONE_STEP_MINUS:I

    .line 46
    const/4 v0, 0x1

    sput v0, Lcom/lge/camera/components/BarView;->CURSOR_ONE_STEP_PLUS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 38
    iput v2, p0, Lcom/lge/camera/components/BarView;->mBarType:I

    .line 40
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/lge/camera/components/BarView;->LONG_PRESS_JUDGE_TIMEOUT:J

    .line 41
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/lge/camera/components/BarView;->LONG_PRESS_EVENT_DELAY:J

    .line 43
    const/16 v0, 0xc

    iput v0, p0, Lcom/lge/camera/components/BarView;->mCursorMaxStep:I

    .line 61
    iput v2, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_LEFT:I

    .line 62
    iput v2, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_TOP:I

    .line 63
    iput v2, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_RIGHT:I

    .line 64
    iput v2, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_BOTTOM:I

    .line 66
    const v0, 0x7f09002e

    iput v0, p0, Lcom/lge/camera/components/BarView;->cursorResId:I

    .line 67
    const v0, 0x7f09002c

    iput v0, p0, Lcom/lge/camera/components/BarView;->cursorBGResId:I

    .line 68
    const v0, 0x7f090030

    iput v0, p0, Lcom/lge/camera/components/BarView;->minusButtonResId:I

    .line 69
    const v0, 0x7f09002f

    iput v0, p0, Lcom/lge/camera/components/BarView;->minusButtonViewResId:I

    .line 70
    const v0, 0x7f09002a

    iput v0, p0, Lcom/lge/camera/components/BarView;->plusButtonResId:I

    .line 71
    const v0, 0x7f090029

    iput v0, p0, Lcom/lge/camera/components/BarView;->plusButtonViewResId:I

    .line 74
    const-string v0, "key_brightness"

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->barSettingKey:Ljava/lang/String;

    .line 75
    const-string v0, "com.lge.camera.command.setting.SetBrightness"

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->barSettingCommand:Ljava/lang/String;

    .line 79
    iput-boolean v2, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    .line 447
    new-instance v0, Lcom/lge/camera/components/BarView$5;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/BarView$5;-><init>(Lcom/lge/camera/components/BarView;)V

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    .line 522
    new-instance v0, Lcom/lge/camera/components/BarView$6;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/BarView$6;-><init>(Lcom/lge/camera/components/BarView;)V

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput v2, p0, Lcom/lge/camera/components/BarView;->mBarType:I

    .line 40
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/lge/camera/components/BarView;->LONG_PRESS_JUDGE_TIMEOUT:J

    .line 41
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/lge/camera/components/BarView;->LONG_PRESS_EVENT_DELAY:J

    .line 43
    const/16 v0, 0xc

    iput v0, p0, Lcom/lge/camera/components/BarView;->mCursorMaxStep:I

    .line 61
    iput v2, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_LEFT:I

    .line 62
    iput v2, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_TOP:I

    .line 63
    iput v2, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_RIGHT:I

    .line 64
    iput v2, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_BOTTOM:I

    .line 66
    const v0, 0x7f09002e

    iput v0, p0, Lcom/lge/camera/components/BarView;->cursorResId:I

    .line 67
    const v0, 0x7f09002c

    iput v0, p0, Lcom/lge/camera/components/BarView;->cursorBGResId:I

    .line 68
    const v0, 0x7f090030

    iput v0, p0, Lcom/lge/camera/components/BarView;->minusButtonResId:I

    .line 69
    const v0, 0x7f09002f

    iput v0, p0, Lcom/lge/camera/components/BarView;->minusButtonViewResId:I

    .line 70
    const v0, 0x7f09002a

    iput v0, p0, Lcom/lge/camera/components/BarView;->plusButtonResId:I

    .line 71
    const v0, 0x7f090029

    iput v0, p0, Lcom/lge/camera/components/BarView;->plusButtonViewResId:I

    .line 74
    const-string v0, "key_brightness"

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->barSettingKey:Ljava/lang/String;

    .line 75
    const-string v0, "com.lge.camera.command.setting.SetBrightness"

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->barSettingCommand:Ljava/lang/String;

    .line 79
    iput-boolean v2, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    .line 447
    new-instance v0, Lcom/lge/camera/components/BarView$5;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/BarView$5;-><init>(Lcom/lge/camera/components/BarView;)V

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    .line 522
    new-instance v0, Lcom/lge/camera/components/BarView$6;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/BarView$6;-><init>(Lcom/lge/camera/components/BarView;)V

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput v2, p0, Lcom/lge/camera/components/BarView;->mBarType:I

    .line 40
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/lge/camera/components/BarView;->LONG_PRESS_JUDGE_TIMEOUT:J

    .line 41
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/lge/camera/components/BarView;->LONG_PRESS_EVENT_DELAY:J

    .line 43
    const/16 v0, 0xc

    iput v0, p0, Lcom/lge/camera/components/BarView;->mCursorMaxStep:I

    .line 61
    iput v2, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_LEFT:I

    .line 62
    iput v2, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_TOP:I

    .line 63
    iput v2, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_RIGHT:I

    .line 64
    iput v2, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_BOTTOM:I

    .line 66
    const v0, 0x7f09002e

    iput v0, p0, Lcom/lge/camera/components/BarView;->cursorResId:I

    .line 67
    const v0, 0x7f09002c

    iput v0, p0, Lcom/lge/camera/components/BarView;->cursorBGResId:I

    .line 68
    const v0, 0x7f090030

    iput v0, p0, Lcom/lge/camera/components/BarView;->minusButtonResId:I

    .line 69
    const v0, 0x7f09002f

    iput v0, p0, Lcom/lge/camera/components/BarView;->minusButtonViewResId:I

    .line 70
    const v0, 0x7f09002a

    iput v0, p0, Lcom/lge/camera/components/BarView;->plusButtonResId:I

    .line 71
    const v0, 0x7f090029

    iput v0, p0, Lcom/lge/camera/components/BarView;->plusButtonViewResId:I

    .line 74
    const-string v0, "key_brightness"

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->barSettingKey:Ljava/lang/String;

    .line 75
    const-string v0, "com.lge.camera.command.setting.SetBrightness"

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->barSettingCommand:Ljava/lang/String;

    .line 79
    iput-boolean v2, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    .line 447
    new-instance v0, Lcom/lge/camera/components/BarView$5;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/BarView$5;-><init>(Lcom/lge/camera/components/BarView;)V

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    .line 522
    new-instance v0, Lcom/lge/camera/components/BarView$6;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/BarView$6;-><init>(Lcom/lge/camera/components/BarView;)V

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 92
    return-void
.end method


# virtual methods
.method protected convertDegree(I)I
    .locals 1
    .parameter "degree"

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/Util;->convertDegree(Landroid/content/res/Resources;I)I

    move-result v0

    return v0
.end method

.method protected convertLayoutDegree(I)I
    .locals 1
    .parameter "degree"

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/Util;->convertLayoutDegree(Landroid/content/res/Resources;I)I

    move-result v0

    return v0
.end method

.method protected disallowTouchInParentView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 593
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 181
    invoke-virtual {p0, p0}, Lcom/lge/camera/components/BarView;->disallowTouchInParentView(Landroid/view/View;)V

    .line 182
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected abstract getBarLayout()Lcom/lge/camera/components/RotateLayout;
.end method

.method protected abstract getBarParentLayout()Landroid/view/View;
.end method

.method public abstract getBarSettingValue()V
.end method

.method public getCursorMaxStep()I
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lcom/lge/camera/components/BarView;->mCursorMaxStep:I

    return v0
.end method

.method public getCursorValue()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/lge/camera/components/BarView;->mValue:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/lge/camera/components/BarView;->mValue:I

    return v0
.end method

.method public initBar(Lcom/lge/camera/components/BarAction;)V
    .locals 4
    .parameter "barAction"

    .prologue
    const/4 v3, 0x0

    .line 139
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/BarView;->setVisibility(I)V

    .line 140
    iput-object p1, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    .line 141
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->setLayoutDimension()V

    .line 142
    iget v1, p0, Lcom/lge/camera/components/BarView;->cursorResId:I

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/BarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 143
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->getBarSettingValue()V

    .line 144
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    .line 146
    iget-object v1, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v1}, Lcom/lge/camera/components/BarAction;->getDegreeInBarAction()I

    move-result v0

    .line 147
    .local v0, degree:I
    iget-object v1, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget v2, p0, Lcom/lge/camera/components/BarView;->minusButtonResId:I

    invoke-interface {v1, v2, v0, v3}, Lcom/lge/camera/components/BarAction;->setDegreeInBarAction(IIZ)V

    .line 148
    iget-object v1, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget v2, p0, Lcom/lge/camera/components/BarView;->plusButtonResId:I

    invoke-interface {v1, v2, v0, v3}, Lcom/lge/camera/components/BarAction;->setDegreeInBarAction(IIZ)V

    .line 149
    invoke-virtual {p0, v0, v3}, Lcom/lge/camera/components/BarView;->startRotation(IZ)V

    .line 150
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->updateAllBars()V

    .line 151
    return-void
.end method

.method public isBarVisible()Z
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isEqualsDegree(II)Z
    .locals 1
    .parameter "current"
    .parameter "input"

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v0

    return v0
.end method

.method public isLandscape()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 604
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v2}, Lcom/lge/camera/components/BarAction;->getOrientation()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v2}, Lcom/lge/camera/components/BarAction;->getOrientation()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 611
    :cond_1
    :goto_0
    return v0

    .line 607
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v2}, Lcom/lge/camera/components/BarAction;->getOrientation()I

    move-result v2

    if-eq v2, v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v1}, Lcom/lge/camera/components/BarAction;->getOrientation()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method

.method protected isPlusButton(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 579
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/lge/camera/components/BarView;->plusButtonViewResId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchUpAreaOfButton(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 583
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_LEFT:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_RIGHT:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_TOP:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_BOTTOM:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 587
    const/4 v0, 0x1

    .line 589
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onButtonTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 530
    iget-boolean v0, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    :cond_0
    :goto_0
    return v4

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v0}, Lcom/lge/camera/components/BarAction;->isSettingViewRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 574
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->resetDisplayTimeout()V

    move v4, v2

    .line 575
    goto :goto_0

    .line 540
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/BarView;->disallowTouchInParentView(Landroid/view/View;)V

    .line 541
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 542
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/components/BarView;->isTouchUpAreaOfButton(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 543
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 544
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->stopTimerTask()V

    goto :goto_1

    .line 547
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 548
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/BarView;->isPlusButton(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, v4

    move v6, v4

    .line 549
    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/components/BarView;->updateBarWithTimer(Landroid/view/View;ILandroid/view/MotionEvent;ZZZ)V

    goto :goto_1

    .line 551
    :cond_4
    const/4 v7, -0x1

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move v9, v4

    move v10, v4

    move v11, v4

    invoke-virtual/range {v5 .. v11}, Lcom/lge/camera/components/BarView;->updateBarWithTimer(Landroid/view/View;ILandroid/view/MotionEvent;ZZZ)V

    goto :goto_1

    .line 555
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/components/BarView;->isTouchUpAreaOfButton(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 556
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 557
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->stopTimerTask()V

    goto :goto_1

    .line 563
    :pswitch_2
    invoke-virtual {p1, v4}, Landroid/view/View;->playSoundEffect(I)V

    .line 564
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 565
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->stopTimerTask()V

    .line 567
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 568
    invoke-virtual {p0, v4, v4, v2, v2}, Lcom/lge/camera/components/BarView;->updateBar(IZZZ)V

    goto :goto_1

    :cond_5
    move-object v5, p0

    move-object v6, p1

    move v7, v4

    move-object v8, p2

    move v9, v4

    move v10, v4

    move v11, v2

    .line 570
    invoke-virtual/range {v5 .. v11}, Lcom/lge/camera/components/BarView;->updateBarWithTimer(Landroid/view/View;ILandroid/view/MotionEvent;ZZZ)V

    goto :goto_1

    .line 538
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public refreshBar()V
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/lge/camera/components/BarView;->mValue:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BarView;->setCursor(I)V

    .line 370
    return-void
.end method

.method public abstract releaseBar()V
.end method

.method public resetCursor(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 435
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/BarView;->setCursor(I)V

    .line 436
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->updateAllBars()V

    .line 437
    return-void
.end method

.method public resetDisplayTimeout()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v0}, Lcom/lge/camera/components/BarAction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const-string v1, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->setDisplayTimeout()V

    .line 361
    :cond_0
    return-void
.end method

.method public resetValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 440
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/BarView;->setCursorValue(I)V

    .line 441
    return-void
.end method

.method public setBarResources(IIIIIII)V
    .locals 0
    .parameter "barType"
    .parameter "cursor"
    .parameter "cursorBG"
    .parameter "minus"
    .parameter "minusView"
    .parameter "plus"
    .parameter "plusView"

    .prologue
    .line 121
    iput p1, p0, Lcom/lge/camera/components/BarView;->mBarType:I

    .line 123
    iput p2, p0, Lcom/lge/camera/components/BarView;->cursorResId:I

    .line 124
    iput p3, p0, Lcom/lge/camera/components/BarView;->cursorBGResId:I

    .line 126
    iput p4, p0, Lcom/lge/camera/components/BarView;->minusButtonResId:I

    .line 127
    iput p5, p0, Lcom/lge/camera/components/BarView;->minusButtonViewResId:I

    .line 129
    iput p6, p0, Lcom/lge/camera/components/BarView;->plusButtonResId:I

    .line 130
    iput p7, p0, Lcom/lge/camera/components/BarView;->plusButtonViewResId:I

    .line 131
    return-void
.end method

.method public setBarSettingCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "command"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/lge/camera/components/BarView;->barSettingKey:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Lcom/lge/camera/components/BarView;->barSettingCommand:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setBarSettingValue(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 615
    const-string v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/lge/camera/components/BarAction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 618
    :cond_0
    return-void
.end method

.method public setBarValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/BarView;->setCursorValue(I)V

    .line 365
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->refreshBar()V

    .line 366
    return-void
.end method

.method public setBarValueInitialization(JJIIII)V
    .locals 0
    .parameter "longPressTime"
    .parameter "longPressDelay"
    .parameter "maxStep"
    .parameter "minStep"
    .parameter "onStepMinus"
    .parameter "oneStepPlus"

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/lge/camera/components/BarView;->LONG_PRESS_JUDGE_TIMEOUT:J

    .line 112
    iput-wide p3, p0, Lcom/lge/camera/components/BarView;->LONG_PRESS_EVENT_DELAY:J

    .line 113
    iput p5, p0, Lcom/lge/camera/components/BarView;->mCursorMaxStep:I

    .line 114
    sput p6, Lcom/lge/camera/components/BarView;->CURSOR_MIN_STEP:I

    .line 115
    sput p7, Lcom/lge/camera/components/BarView;->CURSOR_ONE_STEP_MINUS:I

    .line 116
    sput p8, Lcom/lge/camera/components/BarView;->CURSOR_ONE_STEP_PLUS:I

    .line 117
    return-void
.end method

.method public setCursor(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    if-nez v0, :cond_0

    .line 432
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    new-instance v1, Lcom/lge/camera/components/BarView$4;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/components/BarView$4;-><init>(Lcom/lge/camera/components/BarView;I)V

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setCursorMaxStep(I)V
    .locals 0
    .parameter "maxStep"

    .prologue
    .line 596
    iput p1, p0, Lcom/lge/camera/components/BarView;->mCursorMaxStep:I

    .line 597
    return-void
.end method

.method public setCursorValue(I)V
    .locals 0
    .parameter "mValue"

    .prologue
    .line 87
    iput p1, p0, Lcom/lge/camera/components/BarView;->mValue:I

    .line 88
    return-void
.end method

.method public setDisplayTimeout()V
    .locals 3

    .prologue
    .line 346
    iget-boolean v1, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    if-nez v1, :cond_0

    .line 354
    :goto_0
    return-void

    .line 350
    :cond_0
    iget v1, p0, Lcom/lge/camera/components/BarView;->mBarType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const/16 v0, 0x1388

    .line 353
    .local v0, duration:I
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const-string v2, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-interface {v1, v2, v0}, Lcom/lge/camera/components/BarAction;->doCommandDelayed(Ljava/lang/String;I)V

    goto :goto_0

    .line 350
    .end local v0           #duration:I
    :cond_1
    const/16 v0, 0xbb8

    goto :goto_1
.end method

.method public abstract setLayoutDimension()V
.end method

.method public setListener(Z)V
    .locals 3
    .parameter "set"

    .prologue
    const/16 v2, 0x9

    const/4 v1, 0x0

    .line 154
    iget-boolean v0, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 157
    :cond_0
    if-eqz p1, :cond_2

    .line 158
    iget v0, p0, Lcom/lge/camera/components/BarView;->mBarType:I

    if-ne v0, v2, :cond_1

    .line 159
    iget v0, p0, Lcom/lge/camera/components/BarView;->plusButtonViewResId:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/components/BarView;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 160
    iget v0, p0, Lcom/lge/camera/components/BarView;->minusButtonViewResId:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/components/BarView;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 162
    :cond_1
    iget v0, p0, Lcom/lge/camera/components/BarView;->cursorBGResId:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/components/BarView;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 164
    :cond_2
    iget v0, p0, Lcom/lge/camera/components/BarView;->mBarType:I

    if-ne v0, v2, :cond_3

    .line 165
    iget v0, p0, Lcom/lge/camera/components/BarView;->plusButtonViewResId:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 166
    iget v0, p0, Lcom/lge/camera/components/BarView;->minusButtonViewResId:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 168
    :cond_3
    iget v0, p0, Lcom/lge/camera/components/BarView;->cursorBGResId:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public showControl(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/4 v0, 0x0

    .line 322
    iget-boolean v1, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    if-nez v1, :cond_0

    .line 339
    :goto_0
    return-void

    .line 326
    :cond_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BarView-showControl:mValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/components/BarView;->mValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " visible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    if-eqz p1, :cond_2

    .line 328
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->setDisplayTimeout()V

    .line 338
    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BarView;->setVisibility(I)V

    goto :goto_0

    .line 330
    :cond_2
    iget v1, p0, Lcom/lge/camera/components/BarView;->cursorResId:I

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/BarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 331
    iget v1, p0, Lcom/lge/camera/components/BarView;->plusButtonViewResId:I

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/BarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 332
    iget v1, p0, Lcom/lge/camera/components/BarView;->minusButtonViewResId:I

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/BarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 333
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->stopTimerTask()V

    .line 334
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->releaseBar()V

    goto :goto_1

    .line 338
    :cond_3
    const/16 v0, 0x8

    goto :goto_2
.end method

.method public startRotation(IZ)V
    .locals 6
    .parameter "degree"
    .parameter "animation"

    .prologue
    const v4, 0x7f0a00c4

    const/4 v5, 0x0

    .line 636
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->getBarLayout()Lcom/lge/camera/components/RotateLayout;

    move-result-object v2

    .line 637
    .local v2, rl:Lcom/lge/camera/components/RotateLayout;
    if-nez v2, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    invoke-virtual {v2, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 642
    invoke-virtual {v2}, Lcom/lge/camera/components/RotateLayout;->requestLayout()V

    .line 643
    invoke-virtual {v2}, Lcom/lge/camera/components/RotateLayout;->invalidate()V

    .line 645
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->getBarParentLayout()Landroid/view/View;

    move-result-object v1

    .line 647
    .local v1, parent:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 648
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 649
    .local v0, param:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, p1, v5}, Lcom/lge/camera/components/BarView;->isEqualsDegree(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 650
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 651
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 652
    iget-object v3, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v4, 0x7f0a00c1

    invoke-interface {v3, v4}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 653
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 670
    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 654
    :cond_3
    const/16 v3, 0x5a

    invoke-virtual {p0, p1, v3}, Lcom/lge/camera/components/BarView;->isEqualsDegree(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 655
    iget-object v3, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v3, v4}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 656
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 657
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 658
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 659
    :cond_4
    const/16 v3, 0xb4

    invoke-virtual {p0, p1, v3}, Lcom/lge/camera/components/BarView;->isEqualsDegree(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 660
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 661
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 662
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 663
    iget-object v3, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v4, 0x7f0a00c0

    invoke-interface {v3, v4}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 664
    :cond_5
    const/16 v3, 0x10e

    invoke-virtual {p0, p1, v3}, Lcom/lge/camera/components/BarView;->isEqualsDegree(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 665
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 666
    iget-object v3, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v3, v4}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 667
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 668
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1
.end method

.method public startTimerTask(Ljava/util/TimerTask;JJLandroid/view/View;)V
    .locals 6
    .parameter "t"
    .parameter "judge"
    .parameter "interval"
    .parameter "v"

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    if-nez v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mButtonCheckTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 304
    if-eqz p6, :cond_2

    invoke-virtual {p6}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    :cond_2
    new-instance v0, Ljava/util/Timer;

    const-string v1, "timer_long_press_check"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->mButtonCheckTimer:Ljava/util/Timer;

    .line 308
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mButtonCheckTimer:Ljava/util/Timer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public stopTimerTask()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mButtonCheckTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mButtonCheckTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 316
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mButtonCheckTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->mButtonCheckTimer:Ljava/util/Timer;

    .line 319
    :cond_0
    return-void
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    iput-object v1, p0, Lcom/lge/camera/components/BarView;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 104
    iput-object v1, p0, Lcom/lge/camera/components/BarView;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BarView;->setListener(Z)V

    .line 106
    iput-object v1, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    .line 107
    return-void
.end method

.method public updateAllBars()V
    .locals 3

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    if-nez v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget v1, p0, Lcom/lge/camera/components/BarView;->mBarType:I

    iget v2, p0, Lcom/lge/camera/components/BarView;->mValue:I

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/components/BarAction;->updateAllBars(II)V

    goto :goto_0
.end method

.method public updateBar(IZZZ)V
    .locals 4
    .parameter "step"
    .parameter "others"
    .parameter "isLongTouch"
    .parameter "actionEnd"

    .prologue
    .line 186
    iget v0, p0, Lcom/lge/camera/components/BarView;->mValue:I

    .line 187
    .local v0, lValue:I
    iget-boolean v2, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    if-nez p4, :cond_0

    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    if-nez v2, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v2}, Lcom/lge/camera/components/BarAction;->isPreviewing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    add-int v1, v0, p1

    .line 196
    .local v1, updatedValue:I
    iget v2, p0, Lcom/lge/camera/components/BarView;->mCursorMaxStep:I

    if-le v1, v2, :cond_2

    .line 197
    iget v1, p0, Lcom/lge/camera/components/BarView;->mCursorMaxStep:I

    .line 200
    :cond_2
    if-gez v1, :cond_3

    .line 201
    const/4 v1, 0x0

    .line 204
    :cond_3
    if-eq v1, v0, :cond_0

    .line 206
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/BarView;->setCursorValue(I)V

    .line 208
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    new-instance v3, Lcom/lge/camera/components/BarView$1;

    invoke-direct {v3, p0}, Lcom/lge/camera/components/BarView$1;-><init>(Lcom/lge/camera/components/BarView;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/components/BarAction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 214
    if-eqz p3, :cond_5

    .line 215
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->barSettingKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/lge/camera/components/BarView;->setBarSettingValue(Ljava/lang/String;I)V

    .line 216
    iget v2, p0, Lcom/lge/camera/components/BarView;->mBarType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 217
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v3, p0, Lcom/lge/camera/components/BarView;->barSettingCommand:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/lge/camera/components/BarAction;->doCommandNoneParameter(Ljava/lang/String;)V

    .line 235
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->resetDisplayTimeout()V

    .line 236
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->updateAllBars()V

    goto :goto_0

    .line 219
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v3, p0, Lcom/lge/camera/components/BarView;->barSettingCommand:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/lge/camera/components/BarAction;->doCommand(Ljava/lang/String;)V

    goto :goto_1

    .line 222
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    new-instance v3, Lcom/lge/camera/components/BarView$2;

    invoke-direct {v3, p0}, Lcom/lge/camera/components/BarView$2;-><init>(Lcom/lge/camera/components/BarView;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/components/BarAction;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public updateBarWithTimer(Landroid/view/View;ILandroid/view/MotionEvent;ZZZ)V
    .locals 8
    .parameter "v"
    .parameter "step"
    .parameter "event"
    .parameter "others"
    .parameter "isLongTouch"
    .parameter "actionEnd"

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    if-nez v0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    invoke-virtual {p0, p2, p4, p5, p6}, Lcom/lge/camera/components/BarView;->updateBar(IZZZ)V

    .line 289
    if-nez p5, :cond_0

    if-nez p6, :cond_0

    .line 290
    new-instance v0, Lcom/lge/camera/components/BarView$3;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/components/BarView$3;-><init>(Lcom/lge/camera/components/BarView;Landroid/view/View;ILandroid/view/MotionEvent;ZZ)V

    iget-wide v3, p0, Lcom/lge/camera/components/BarView;->LONG_PRESS_JUDGE_TIMEOUT:J

    iget-wide v5, p0, Lcom/lge/camera/components/BarView;->LONG_PRESS_EVENT_DELAY:J

    move-object v1, p0

    move-object v2, v0

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/lge/camera/components/BarView;->startTimerTask(Ljava/util/TimerTask;JJLandroid/view/View;)V

    goto :goto_0
.end method

.method public updateBarWithValue(IZ)V
    .locals 5
    .parameter "value"
    .parameter "actionEnd"

    .prologue
    .line 241
    iget v1, p0, Lcom/lge/camera/components/BarView;->mValue:I

    .line 242
    .local v1, lValue:I
    iget-boolean v2, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v2}, Lcom/lge/camera/components/BarAction;->isPreviewing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    if-eqz p2, :cond_2

    .line 247
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->barSettingKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/lge/camera/components/BarView;->setBarSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 251
    :cond_2
    move v1, p1

    .line 253
    iget v2, p0, Lcom/lge/camera/components/BarView;->mCursorMaxStep:I

    if-le v1, v2, :cond_3

    .line 254
    iget v1, p0, Lcom/lge/camera/components/BarView;->mCursorMaxStep:I

    .line 256
    :cond_3
    sget v2, Lcom/lge/camera/components/BarView;->CURSOR_MIN_STEP:I

    if-ge v1, v2, :cond_4

    .line 257
    sget v1, Lcom/lge/camera/components/BarView;->CURSOR_MIN_STEP:I

    .line 260
    :cond_4
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/BarView;->setCursor(I)V

    .line 261
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/BarView;->setCursorValue(I)V

    .line 263
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 264
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "mValue"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 266
    iget v2, p0, Lcom/lge/camera/components/BarView;->mBarType:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_5

    if-nez v1, :cond_5

    .line 268
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->barSettingKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/lge/camera/components/BarView;->setBarSettingValue(Ljava/lang/String;I)V

    .line 271
    :cond_5
    iget v2, p0, Lcom/lge/camera/components/BarView;->mBarType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    .line 272
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v3, p0, Lcom/lge/camera/components/BarView;->barSettingCommand:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/lge/camera/components/BarAction;->doCommandNoneParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->resetDisplayTimeout()V

    .line 278
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->updateAllBars()V

    goto :goto_0

    .line 274
    :cond_6
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v3, p0, Lcom/lge/camera/components/BarView;->barSettingCommand:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v0}, Lcom/lge/camera/components/BarAction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method
