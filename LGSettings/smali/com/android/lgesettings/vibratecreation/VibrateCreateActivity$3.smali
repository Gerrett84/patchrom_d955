.class Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$3;
.super Ljava/lang/Object;
.source "VibrateCreateActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 150
    iput-object p1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$3;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .parameter "animation"

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, animProgress:I
    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$3;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #setter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mCurRecTimeMs:I
    invoke-static {v1, v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$802(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;I)I

    .line 160
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$3;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$900(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$3;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$900(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$3;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mCurRecTimeMs:I
    invoke-static {v4}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$800(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 162
    return-void
.end method
