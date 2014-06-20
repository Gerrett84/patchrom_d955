.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8$1;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;->onSimLockChangedResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8$1;->val$success:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 622
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 623
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->hide()V

    .line 625
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8$1;->val$success:Z

    if-eqz v3, :cond_1

    .line 627
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    const/4 v4, 0x3

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->setPopupStringByOperator(II)V
    invoke-static {v3, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;II)V

    .line 628
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 630
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 660
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    .line 661
    const-string v3, "KeyguardSimPukView"

    const-string v4, "[KYC] CheckSimPuk - mCallback.userActivity(0)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 664
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iput-boolean v6, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mCheckInProgress:Z

    .line 665
    return-void

    .line 635
    :cond_1
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getIccPuk1RetryCount()I

    move-result v0

    .line 637
    .local v0, attemptsRemaining:I
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VDF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 638
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->previousPuk1Remaining:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)I

    move-result v3

    if-ne v3, v0, :cond_2

    .line 639
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040303

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 640
    .local v2, message:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    const/4 v4, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->showPukDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 653
    .end local v0           #attemptsRemaining:I
    .end local v2           #message:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 654
    .local v1, ex:Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 655
    .restart local v0       #attemptsRemaining:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->setUIStringByOperator(II)V
    invoke-static {v3, v6, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;II)V

    goto :goto_0

    .line 643
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    const/4 v4, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->setUIStringByOperator(II)V
    invoke-static {v3, v4, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;II)V

    .line 644
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    const/4 v4, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->setPopupStringByOperator(II)V
    invoke-static {v3, v4, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;II)V

    goto :goto_0

    .line 648
    :cond_3
    const-string v3, "KeyguardSimPukView"

    const-string v4, "[FCMANIA18] CheckSimPuk"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    const/4 v4, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->setUIStringByOperator(II)V
    invoke-static {v3, v4, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;II)V

    .line 650
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    const/4 v4, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->setPopupStringByOperator(II)V
    invoke-static {v3, v4, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
