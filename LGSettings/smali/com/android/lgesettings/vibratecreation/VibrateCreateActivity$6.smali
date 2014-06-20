.class Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;
.super Ljava/lang/Object;
.source "VibrateCreateActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->setSeekbarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 370
    const-string v0, "VibrateCreateActivity"

    const-string v1, "onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 11
    .parameter "animation"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    .line 313
    const-string v2, "VibrateCreateActivity"

    const-string v3, "onAnimationEnd"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6$1;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6$1;-><init>(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 329
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mStop_Save:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$1000(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f0804ac

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 330
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mTabHere:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$1700(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    invoke-virtual {v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mHaptic_value:I
    invoke-static {v4}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$1800(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 332
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #calls: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->enableRotation()V
    invoke-static {v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$1900(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)V

    .line 334
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSwitchImageThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$500(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Ljava/lang/Thread;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSwitchImageThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$500(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSwitchImageThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$500(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 338
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateView:Lcom/android/lgesettings/vibratecreation/VibrateView;
    invoke-static {v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$1100(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Lcom/android/lgesettings/vibratecreation/VibrateView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/vibratecreation/VibrateView;->setDefaultBackgroundColor()V

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 340
    .local v0, lastTime:J
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mRecodeFlag:Z
    invoke-static {v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$2000(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Z

    move-result v2

    if-ne v8, v2, :cond_2

    .line 341
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$2100(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Landroid/os/Vibrator;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 342
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$2100(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Landroid/os/Vibrator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    .line 343
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #setter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mTouchEvent_Finish:Z
    invoke-static {v2, v8}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$2202(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;Z)Z

    .line 344
    const-string v2, "VibrateCreateActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTouchEvent_Finish : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mTouchEvent_Finish:Z
    invoke-static {v4}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$2200(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mIsTouch:Z
    invoke-static {v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$2300(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Z

    move-result v2

    if-ne v8, v2, :cond_3

    .line 347
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #setter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateEnd:J
    invoke-static {v2, v0, v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$2402(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;J)J

    .line 348
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateEnd:J
    invoke-static {v3}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$2400(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)J

    move-result-wide v3

    #setter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSilentStart:J
    invoke-static {v2, v3, v4}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$402(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;J)J

    .line 349
    const-string v2, "VibrateCreateActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsTouch ==true : last array - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateEnd:J
    invoke-static {v4}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$2400(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateStart:J
    invoke-static {v6}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$2500(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSilentStart:J
    invoke-static {v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$400(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)J

    move-result-wide v2

    cmp-long v2, v9, v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mIsPreview:Z
    invoke-static {v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$2600(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 351
    const-string v2, "VibrateCreateActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mISPreview : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mIsPreview:Z
    invoke-static {v4}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$2600(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mPattern:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$2700(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateEnd:J
    invoke-static {v3}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$2400(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateStart:J
    invoke-static {v5}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$2500(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #setter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mBePlayThreadStop:Z
    invoke-static {v2, v8}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$602(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;Z)Z

    .line 365
    return-void

    .line 355
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #setter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateStart:J
    invoke-static {v2, v0, v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$2502(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;J)J

    .line 356
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateStart:J
    invoke-static {v3}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$2500(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)J

    move-result-wide v3

    #setter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSilentEnd:J
    invoke-static {v2, v3, v4}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$2802(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;J)J

    .line 357
    const-string v2, "VibrateCreateActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsTouch ==false : last array - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSilentEnd:J
    invoke-static {v4}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$2800(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSilentStart:J
    invoke-static {v6}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$400(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSilentStart:J
    invoke-static {v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$400(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)J

    move-result-wide v2

    cmp-long v2, v9, v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mIsPreview:Z
    invoke-static {v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$2600(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 359
    const-string v2, "VibrateCreateActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mISPreview : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mIsPreview:Z
    invoke-static {v4}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$2600(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mPattern:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$2700(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSilentEnd:J
    invoke-static {v3}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$2800(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSilentStart:J
    invoke-static {v5}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$400(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 307
    const-string v0, "VibrateCreateActivity"

    const-string v1, "onAnimationRepeat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 301
    const-string v0, "VibrateCreateActivity"

    const-string v1, "onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void
.end method
