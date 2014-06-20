.class public Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;
.super Landroid/view/InputEventReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LgeInputEventMonitor"
.end annotation


# instance fields
.field final TILT:I

.field mPalmCover:Lcom/lge/gesture/LgeGesture;

.field mPalmSwipe:Lcom/lge/gesture/LgeGesture;

.field mSlideAside:Lcom/lge/gesture/LgeGesture;

.field mToolType:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter "inputChannel"
    .parameter "looper"

    .prologue
    const/4 v1, 0x0

    .line 612
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 613
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 606
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;->mToolType:I

    .line 607
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;->TILT:I

    .line 608
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;->mSlideAside:Lcom/lge/gesture/LgeGesture;

    .line 609
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;->mPalmCover:Lcom/lge/gesture/LgeGesture;

    .line 610
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;->mPalmSwipe:Lcom/lge/gesture/LgeGesture;

    .line 614
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 14
    .parameter "event"

    .prologue
    const/4 v13, 0x1

    .line 627
    const/4 v2, 0x0

    .line 628
    .local v2, handled:Z
    const/4 v10, 0x0

    .line 629
    .local v10, pointerCount:I
    const/4 v4, 0x0

    .line 630
    .local v4, hasPalm:Z
    const/4 v5, 0x0

    .line 631
    .local v5, hasPalmCover:Z
    const/4 v6, 0x0

    .line 632
    .local v6, hasTilt:Z
    const/4 v3, 0x0

    .line 634
    .local v3, hasFinger:Z
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v11

    if-nez v11, :cond_a

    instance-of v11, p1, Landroid/view/MotionEvent;

    if-eqz v11, :cond_a

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v11

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_a

    .line 636
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v9, v0

    .line 637
    .local v9, motionEvent:Landroid/view/MotionEvent;
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    .line 638
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v10, :cond_4

    .line 639
    if-nez v3, :cond_1

    invoke-virtual {v9, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    if-ne v11, v13, :cond_1

    const/4 v3, 0x1

    .line 638
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 640
    :cond_1
    invoke-virtual {v9, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    .line 641
    :cond_2
    invoke-virtual {v9, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    .line 642
    :cond_3
    invoke-virtual {v9, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    .line 645
    :cond_4
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mSlideAsideMode:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$000(Lcom/android/internal/policy/impl/PhoneWindowManager;)I

    move-result v11

    if-ne v11, v13, :cond_5

    if-eqz v3, :cond_5

    .line 646
    const-string v11, "kids"

    const-string v12, "service.plushome.currenthome"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 647
    .local v8, kidsModeOn:Z
    if-nez v8, :cond_5

    .line 648
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;->mSlideAside:Lcom/lge/gesture/LgeGesture;

    invoke-interface {v11, p1}, Lcom/lge/gesture/LgeGesture;->PlayWithInputEvent(Landroid/view/InputEvent;)V

    .line 651
    .end local v8           #kidsModeOn:Z
    :cond_5
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mTakeScreenshotMode:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$100(Lcom/android/internal/policy/impl/PhoneWindowManager;)I

    move-result v11

    if-ne v11, v13, :cond_7

    if-nez v3, :cond_6

    if-eqz v4, :cond_7

    .line 652
    :cond_6
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;->mPalmSwipe:Lcom/lge/gesture/LgeGesture;

    invoke-interface {v11, p1}, Lcom/lge/gesture/LgeGesture;->PlayWithInputEvent(Landroid/view/InputEvent;)V

    .line 654
    :cond_7
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideDisplayMode:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$200(Lcom/android/internal/policy/impl/PhoneWindowManager;)I

    move-result v11

    if-ne v11, v13, :cond_9

    if-nez v3, :cond_8

    if-nez v4, :cond_8

    if-eqz v5, :cond_9

    .line 655
    :cond_8
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;->mPalmCover:Lcom/lge/gesture/LgeGesture;

    invoke-interface {v11, p1}, Lcom/lge/gesture/LgeGesture;->PlayWithInputEvent(Landroid/view/InputEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    :cond_9
    const/4 v2, 0x1

    .line 662
    .end local v7           #i:I
    .end local v9           #motionEvent:Landroid/view/MotionEvent;
    :cond_a
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    if-eqz v11, :cond_b

    .line 664
    :try_start_1
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;->finishInputEvent(Landroid/view/InputEvent;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 672
    :goto_2
    return-void

    .line 665
    :catch_0
    move-exception v1

    .line 666
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v11, "WindowManager"

    const-string v12, "failed finishInputEvent "

    invoke-static {v11, v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 670
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_b
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_2

    .line 662
    :catchall_0
    move-exception v11

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v12, v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    if-eqz v12, :cond_c

    .line 664
    :try_start_2
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;->finishInputEvent(Landroid/view/InputEvent;Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 670
    :goto_3
    throw v11

    .line 665
    :catch_1
    move-exception v1

    .line 666
    .restart local v1       #e:Ljava/lang/RuntimeException;
    const-string v12, "WindowManager"

    const-string v13, "failed finishInputEvent "

    invoke-static {v12, v13, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 670
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_c
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_3
.end method

.method setLgeGesture(Lcom/lge/gesture/LgeGestureFactory$GestureType;Z)V
    .locals 3
    .parameter "type"
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .line 617
    sget-object v0, Lcom/lge/gesture/LgeGestureFactory$GestureType;->SLIDEASIDE:Lcom/lge/gesture/LgeGestureFactory$GestureType;

    if-ne p1, v0, :cond_0

    .line 618
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/lge/gesture/LgeGestureFactory;->SLIDEASIDE:Lcom/lge/gesture/LgeGestureFactory$GestureType;

    invoke-static {v0, v2}, Lcom/lge/gesture/LgeGestureFactory;->getInstance(Landroid/content/Context;Lcom/lge/gesture/LgeGestureFactory$GestureType;)Lcom/lge/gesture/LgeGesture;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;->mSlideAside:Lcom/lge/gesture/LgeGesture;

    .line 619
    :cond_0
    sget-object v0, Lcom/lge/gesture/LgeGestureFactory$GestureType;->PALMCOVER:Lcom/lge/gesture/LgeGestureFactory$GestureType;

    if-ne p1, v0, :cond_1

    .line 620
    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/lge/gesture/LgeGestureFactory;->PALMCOVER:Lcom/lge/gesture/LgeGestureFactory$GestureType;

    invoke-static {v0, v2}, Lcom/lge/gesture/LgeGestureFactory;->getInstance(Landroid/content/Context;Lcom/lge/gesture/LgeGestureFactory$GestureType;)Lcom/lge/gesture/LgeGesture;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;->mPalmCover:Lcom/lge/gesture/LgeGesture;

    .line 621
    :cond_1
    sget-object v0, Lcom/lge/gesture/LgeGestureFactory$GestureType;->PALMSWIPE:Lcom/lge/gesture/LgeGestureFactory$GestureType;

    if-ne p1, v0, :cond_3

    .line 622
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/lge/gesture/LgeGestureFactory;->PALMSWIPE:Lcom/lge/gesture/LgeGestureFactory$GestureType;

    invoke-static {v0, v1}, Lcom/lge/gesture/LgeGestureFactory;->getInstance(Landroid/content/Context;Lcom/lge/gesture/LgeGestureFactory$GestureType;)Lcom/lge/gesture/LgeGesture;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;->mPalmSwipe:Lcom/lge/gesture/LgeGesture;

    .line 623
    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    .line 618
    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 620
    goto :goto_1
.end method
