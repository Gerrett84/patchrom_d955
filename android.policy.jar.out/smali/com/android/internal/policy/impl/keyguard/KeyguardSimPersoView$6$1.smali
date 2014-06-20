.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;
.super Ljava/lang/Object;
.source "KeyguardSimPersoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->onUsimPersoCheckResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->val$success:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 341
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 344
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->val$success:Z

    if-eqz v1, :cond_1

    .line 347
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_UNLOCKED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, simUnlockIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 355
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->reportUSIMPersoFinish()V

    .line 356
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 383
    .end local v0           #simUnlockIntent:Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 384
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    iput-boolean v6, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mUsimPersoUnlockProgress:Z

    .line 385
    return-void

    .line 358
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mHeaderTextString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mNetworkOpeator:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;->TELECOM_SKT:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;

    if-ne v1, v2, :cond_2

    .line 361
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mStrTitleWrongPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mPopupMsg:Ljava/lang/String;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->showUsimPersoDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mHeaderTextString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mNetworkOpeator:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;->TELECOM_SKT:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$NetworkOpeator;

    if-ne v1, v2, :cond_4

    .line 376
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mRetryText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mRetryTextString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    :goto_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 363
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->access$510()I

    .line 365
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->access$500()I

    move-result v1

    if-nez v1, :cond_3

    .line 366
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20b02e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mPopupMsg:Ljava/lang/String;

    .line 370
    :goto_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mStrTitleWrongPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mPopupMsg:Ljava/lang/String;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->showUsimPersoDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 368
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x20b02e1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->access$500()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mPopupMsg:Ljava/lang/String;

    goto :goto_3

    .line 378
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mRetryText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mRetryTextString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->access$500()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method
