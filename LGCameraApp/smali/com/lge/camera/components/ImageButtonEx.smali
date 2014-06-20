.class public Lcom/lge/camera/components/ImageButtonEx;
.super Landroid/widget/ImageButton;
.source "ImageButtonEx.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;,
        Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;
    }
.end annotation


# static fields
.field public static final BUTTON_STATE_LONG_PRESSED:I = 0x2

.field public static final BUTTON_STATE_NOT_PRESSED:I = 0x0

.field public static final BUTTON_STATE_PRESSED:I = 0x1

.field public static final BUTTON_STATE_RELEASED:I = 0x3

.field public static final IBE_BUTTON_MIN:I = 0x0

.field public static final IBE_BUTTON_PLUS:I = 0x1

.field private static final LONG_PRESS_EVENT_DELAY:J = 0xc8L

.field private static final LONG_PRESS_JUDGE_TIMEOUT:J = 0x3e8L


# instance fields
.field private mButtonCheckTimer:Ljava/util/Timer;

.field private mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

.field private mButtonStatus:I

.field public mContext:Landroid/content/Context;

.field private mReleaseArea:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mContext:Landroid/content/Context;

    .line 57
    iput-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    .line 53
    iput-object p1, p0, Lcom/lge/camera/components/ImageButtonEx;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput-object v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mContext:Landroid/content/Context;

    .line 57
    iput-object v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    .line 73
    iput v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    .line 45
    iput-object p1, p0, Lcom/lge/camera/components/ImageButtonEx;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p0, p0}, Lcom/lge/camera/components/ImageButtonEx;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/ImageButtonEx;->setFocusable(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/lge/camera/components/ImageButtonEx;->initReleaseArea()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    iput-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mContext:Landroid/content/Context;

    .line 57
    iput-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    .line 40
    iput-object p1, p0, Lcom/lge/camera/components/ImageButtonEx;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/components/ImageButtonEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    return v0
.end method

.method static synthetic access$002(Lcom/lge/camera/components/ImageButtonEx;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/lge/camera/components/ImageButtonEx;)Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    return-object v0
.end method

.method private checkOutRange(Landroid/view/View;IFF)Z
    .locals 3
    .parameter "v"
    .parameter "index"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    .line 102
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mReleaseArea:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;

    iget v0, v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;->mTop:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mReleaseArea:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;

    iget v0, v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;->mBottom:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_1

    :cond_0
    move v0, v1

    .line 108
    :goto_0
    return v0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mReleaseArea:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;

    iget v0, v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;->mLeft:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mReleaseArea:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;

    iget v0, v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;->mRight:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_3

    :cond_2
    move v0, v1

    .line 106
    goto :goto_0

    .line 108
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doTouchActionDown(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 152
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    .line 154
    new-instance v1, Lcom/lge/camera/components/ImageButtonEx$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/components/ImageButtonEx$1;-><init>(Lcom/lge/camera/components/ImageButtonEx;)V

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0xc8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/components/ImageButtonEx;->startTimerTask(Ljava/util/TimerTask;JJ)V

    .line 174
    return-void
.end method

.method private doTouchActionMove(Landroid/view/View;FF)V
    .locals 2
    .parameter "v"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 142
    iget v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 143
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/lge/camera/components/ImageButtonEx;->checkOutRange(Landroid/view/View;IFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    .line 145
    invoke-direct {p0}, Lcom/lge/camera/components/ImageButtonEx;->stopTimerTask()V

    .line 146
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;->onChange(I)V

    .line 149
    :cond_0
    return-void
.end method

.method private doTouchActionUp(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 133
    iget v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    .line 136
    invoke-direct {p0}, Lcom/lge/camera/components/ImageButtonEx;->stopTimerTask()V

    .line 137
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;->onChange(I)V

    .line 139
    :cond_0
    return-void
.end method

.method private startTimerTask(Ljava/util/TimerTask;JJ)V
    .locals 6
    .parameter "t"
    .parameter "judge"
    .parameter "interval"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonCheckTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/util/Timer;

    const-string v1, "timer_long_press_check"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonCheckTimer:Ljava/util/Timer;

    .line 87
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonCheckTimer:Ljava/util/Timer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 89
    :cond_0
    return-void
.end method

.method private stopTimerTask()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonCheckTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonCheckTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 94
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonCheckTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonCheckTimer:Ljava/util/Timer;

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public initReleaseArea()V
    .locals 6

    .prologue
    const/16 v2, 0xa

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mReleaseArea:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;-><init>(Lcom/lge/camera/components/ImageButtonEx;IIII)V

    .line 79
    .local v0, ra:Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;
    iget-object v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mReleaseArea:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 80
    new-instance v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;

    .end local v0           #ra:Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;
    move-object v1, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;-><init>(Lcom/lge/camera/components/ImageButtonEx;IIII)V

    .line 81
    .restart local v0       #ra:Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;
    iget-object v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mReleaseArea:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 82
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 112
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 113
    .local v0, x:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 114
    .local v1, y:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 129
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 116
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/lge/camera/components/ImageButtonEx;->doTouchActionDown(Landroid/view/View;)V

    .line 117
    const/4 v2, 0x1

    goto :goto_1

    .line 120
    :pswitch_1
    invoke-direct {p0, p1, v0, v1}, Lcom/lge/camera/components/ImageButtonEx;->doTouchActionMove(Landroid/view/View;FF)V

    goto :goto_0

    .line 125
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/lge/camera/components/ImageButtonEx;->doTouchActionUp(Landroid/view/View;)V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setImageButtonExStatusListener(Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    .line 178
    return-void
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-direct {p0}, Lcom/lge/camera/components/ImageButtonEx;->stopTimerTask()V

    .line 186
    iput-object v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    .line 187
    invoke-virtual {p0}, Lcom/lge/camera/components/ImageButtonEx;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 188
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/ImageButtonEx;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    invoke-virtual {p0}, Lcom/lge/camera/components/ImageButtonEx;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 190
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/ImageButtonEx;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 191
    return-void
.end method
