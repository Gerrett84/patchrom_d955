.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7$1;
.super Ljava/lang/Object;
.source "KeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;->onSimCheckResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 516
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7$1;->val$success:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 518
    const-string v6, "KeyguardSimPinView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LGE]  onSimCheckResponse mSimUnlockProgressDialog status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;

    iget-object v8, v8, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v8, v8, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v6, :cond_0

    .line 520
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 521
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iput-object v11, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 523
    :cond_0
    const-string v6, "KeyguardSimPinView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[UICC] onSimCheckResponse : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7$1;->val$success:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7$1;->val$success:Z

    if-eqz v6, :cond_2

    .line 527
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 529
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 530
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v6, 0x10900e3

    invoke-virtual {v1, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 533
    .local v2, layout:Landroid/view/View;
    const v6, 0x102000b

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 535
    .local v4, text:Landroid/widget/TextView;
    const v6, 0x20b0132

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 538
    new-instance v5, Landroid/widget/Toast;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 539
    .local v5, toast:Landroid/widget/Toast;
    invoke-virtual {v5, v10}, Landroid/widget/Toast;->setDuration(I)V

    .line 540
    const/16 v6, 0x10

    invoke-virtual {v5, v6, v9, v9}, Landroid/widget/Toast;->setGravity(III)V

    .line 541
    invoke-virtual {v5, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 542
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 546
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #layout:Landroid/view/View;
    .end local v4           #text:Landroid/widget/TextView;
    .end local v5           #toast:Landroid/widget/Toast;
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 547
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 566
    :goto_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v7, 0x0

    invoke-interface {v6, v7, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 567
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iput-boolean v9, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimCheckInProgress:Z

    .line 568
    return-void

    .line 549
    :cond_2
    const/4 v3, 0x0

    .line 553
    .local v3, pin1_retry_count:I
    :try_start_0
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/ITelephony;->getIccPin1RetryCount()I

    move-result v3

    .line 555
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    invoke-virtual {v6, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->setPopupStringByOperator(I)V

    .line 557
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    sget-object v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$PinLockState;->PIN_CHECKPIN:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$PinLockState;

    invoke-virtual {v6, v7, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->setUIStringByOperator(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$PinLockState;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mHeaderText:Landroid/widget/TextView;

    const v7, 0x1040558

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
