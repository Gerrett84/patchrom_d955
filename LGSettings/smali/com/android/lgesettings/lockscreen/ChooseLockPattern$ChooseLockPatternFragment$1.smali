.class Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private patternInProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 283
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f080540

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 284
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    #getter for: Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->access$300(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 286
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    #getter for: Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->access$400(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 287
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
    .line 280
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    #getter for: Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->access$000(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 219
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 8
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
    .line 222
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    #getter for: Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    invoke-static {v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->access$100(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    #getter for: Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    invoke-static {v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->access$100(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_3

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "null chosen pattern in stage \'need to confirm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 276
    :goto_0
    return-void

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 230
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    #getter for: Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    invoke-static {v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->access$100(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    #getter for: Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    invoke-static {v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->access$100(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    #getter for: Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    invoke-static {v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->access$100(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->AlreadyExisting:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_9

    .line 231
    :cond_4
    const-string v0, "false"

    .line 232
    const-string v1, "false"

    .line 235
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    #getter for: Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->access$200(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "savedPatternKidsModeExists"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 236
    if-eqz v2, :cond_5

    .line 237
    const-string v3, "ChooseLockPattern"

    const-string v4, "SavedPatternKidsModeExists is not null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    #getter for: Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->access$200(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    const-string v2, "ChooseLockPattern"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v2, v0

    .line 249
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    #getter for: Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->access$200(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "checkPatternKidsMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/util/List;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_6

    .line 251
    const-string v3, "ChooseLockPattern"

    const-string v4, "CheckPatternKidsMode is not null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    #getter for: Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->access$200(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 253
    :try_start_2
    const-string v1, "ChooseLockPattern"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 262
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x4

    if-ge v1, v3, :cond_7

    .line 263
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto/16 :goto_0

    .line 241
    :cond_5
    :try_start_3
    const-string v2, "ChooseLockPattern"

    const-string v3, "SavedPatternKidsModeExists is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 243
    :catch_0
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    .line 244
    const-string v3, "ChooseLockPattern"

    const-string v4, "SavedPatternKidsModeExists exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 255
    :cond_6
    :try_start_4
    const-string v0, "ChooseLockPattern"

    const-string v3, "CheckPatternKidsMode is null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    goto :goto_3

    .line 257
    :catch_1
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 258
    :goto_4
    const-string v3, "ChooseLockPattern"

    const-string v4, "CheckPatternKidsMode exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 265
    :cond_7
    const-string v1, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 266
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->AlreadyExisting:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto/16 :goto_0

    .line 269
    :cond_8
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 270
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto/16 :goto_0

    .line 273
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    #getter for: Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    invoke-static {v2}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->access$100(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

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

    .line 257
    :catch_2
    move-exception v1

    goto :goto_4
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    #getter for: Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->access$000(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 214
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;->patternInProgress()V

    .line 215
    return-void
.end method
