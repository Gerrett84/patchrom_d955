.class Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;
.super Ljava/lang/Object;
.source "ChooseLockPatternKidsMode.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private patternInProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 230
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f080540

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 231
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mFooterText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;

    #getter for: Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mFooterLeftButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->access$400(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 233
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;

    #getter for: Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mFooterRightButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->access$500(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 234
    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;

    #getter for: Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->access$100(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 199
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;

    #getter for: Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;
    invoke-static {v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->access$200(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;)Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;

    #getter for: Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;
    invoke-static {v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->access$200(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;)Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->ConfirmWrong:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    if-ne v0, v1, :cond_3

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mChosenPattern:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "null chosen pattern in stage \'need to confirm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mChosenPattern:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->ChoiceConfirmed:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;)V

    .line 223
    :goto_0
    return-void

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->ConfirmWrong:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;)V

    goto :goto_0

    .line 210
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;

    #getter for: Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;
    invoke-static {v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->access$200(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;)Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;

    #getter for: Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;
    invoke-static {v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->access$200(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;)Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->ChoiceTooShort:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;

    #getter for: Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;
    invoke-static {v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->access$200(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;)Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->AlreadyExisting:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    if-ne v0, v1, :cond_7

    .line 211
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    .line 212
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->ChoiceTooShort:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;)V

    goto :goto_0

    .line 213
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;

    #getter for: Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->access$300(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;

    #getter for: Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->access$300(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 214
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->AlreadyExisting:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;)V

    goto :goto_0

    .line 216
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mChosenPattern:Ljava/util/List;

    .line 217
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->FirstChoiceValid:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;)V

    goto :goto_0

    .line 220
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;

    #getter for: Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;
    invoke-static {v2}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->access$200(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;)Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "entering the pattern."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;

    #getter for: Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->access$100(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 194
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;->patternInProgress()V

    .line 195
    return-void
.end method
