.class Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$4;
.super Landroid/os/Handler;
.source "VibrateCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;
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
    .line 165
    iput-object p1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$4;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 167
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 195
    :goto_0
    return-void

    .line 169
    :pswitch_0
    const-string v1, "VibrateCreateActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Handler] MSG_UPDATE_IMAGE image number : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$4;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mStop_Save:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$1000(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$4;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    invoke-virtual {v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$4;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateView:Lcom/android/lgesettings/vibratecreation/VibrateView;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$1100(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Lcom/android/lgesettings/vibratecreation/VibrateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/vibratecreation/VibrateView;->setDefaultBackgroundColor()V

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$4;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateView:Lcom/android/lgesettings/vibratecreation/VibrateView;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$1100(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Lcom/android/lgesettings/vibratecreation/VibrateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/vibratecreation/VibrateView;->setDefaultBackgroundColor()V

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$4;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateView:Lcom/android/lgesettings/vibratecreation/VibrateView;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$1100(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Lcom/android/lgesettings/vibratecreation/VibrateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/vibratecreation/VibrateView;->setVibrateBackgroundColor()V

    goto :goto_0

    .line 182
    :pswitch_1
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$4;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mValueAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$1200(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 185
    :pswitch_2
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$4;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #setter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mProgress:I
    invoke-static {v1, v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$1302(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;I)I

    .line 186
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$4;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mTimeLine:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$1400(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$4;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mProgress:I
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$1300(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 187
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$4;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$4;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mProgress:I
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$1300(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)I

    move-result v1

    #setter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mCurMaxProgress:I
    invoke-static {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$1502(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;I)I

    goto/16 :goto_0

    .line 190
    :pswitch_3
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$4;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    #calls: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->setPreviewButtonEnabled(Z)V
    invoke-static {v1, v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$1600(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;Z)V

    goto/16 :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
