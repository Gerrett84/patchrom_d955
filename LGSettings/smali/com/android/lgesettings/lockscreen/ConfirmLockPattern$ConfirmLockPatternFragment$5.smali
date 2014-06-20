.class Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment$5;
.super Landroid/os/CountDownTimer;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I
    invoke-static {v0, v1}, Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment;->access$302(Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment;I)I

    .line 447
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$Stage;

    #calls: Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$Stage;)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment;->access$500(Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$Stage;)V

    .line 448
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .parameter "millisUntilFinished"

    .prologue
    .line 437
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment;

    #getter for: Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment;->access$700(Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f080552

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 438
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v0, v1

    .line 439
    .local v0, secondsCountdown:I
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment;

    #getter for: Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment;->access$800(Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment;

    const v3, 0x7f080553

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/lgesettings/lockscreen/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    return-void
.end method
