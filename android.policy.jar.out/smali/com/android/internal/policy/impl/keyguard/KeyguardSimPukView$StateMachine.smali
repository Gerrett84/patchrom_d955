.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StateMachine"
.end annotation


# static fields
.field static final CONFIRM_PIN:I = 0x2

.field static final DONE:I = 0x3

.field static final ENTER_PIN:I = 0x1

.field static final ENTER_PUK:I


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method get_state()I
    .locals 3

    .prologue
    .line 142
    const-string v0, "KeyguardSimPukView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get_state()   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->state:I

    return v0
.end method

.method public next()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 92
    const/4 v2, 0x0

    .line 93
    .local v2, msg:I
    const/4 v0, 0x0

    .line 96
    .local v0, attemptsRemaining:I
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getIccPuk1RetryCount()I

    move-result v0

    .line 98
    const-string v3, "KeyguardSimPukView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next()   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    sget v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->state:I

    if-nez v3, :cond_3

    .line 104
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->checkPuk()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    sput v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->state:I

    .line 107
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VDF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->previousPuk1Remaining:I
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;I)I

    .line 110
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    sget v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->state:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->setUIStringByOperator(II)V
    invoke-static {v3, v4, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;II)V

    .line 131
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    return-void

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "KeyguardSimPukView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next() catch  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    sget v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->state:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->setUIStringByOperator(II)V
    invoke-static {v3, v4, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;II)V

    goto :goto_1

    .line 114
    :cond_3
    sget v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->state:I

    if-ne v3, v6, :cond_5

    .line 115
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->checkPin()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 116
    sput v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->state:I

    .line 117
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    sget v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->state:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->setUIStringByOperator(II)V
    invoke-static {v3, v4, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;II)V

    goto :goto_1

    .line 119
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    sget v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->state:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->setUIStringByOperator(II)V
    invoke-static {v3, v4, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;II)V

    goto :goto_1

    .line 121
    :cond_5
    sget v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->state:I

    if-ne v3, v7, :cond_1

    .line 122
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->confirmPin()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 123
    const/4 v3, 0x3

    sput v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->state:I

    .line 124
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->updateSim()V

    goto :goto_1

    .line 126
    :cond_6
    sput v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->state:I

    .line 127
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    sget v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->state:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->setUIStringByOperator(II)V
    invoke-static {v3, v4, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;II)V

    .line 128
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->setPopupStringByOperator(II)V
    invoke-static {v3, v6, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;II)V

    goto :goto_1
.end method

.method reset()V
    .locals 1

    .prologue
    .line 135
    const-string v0, ""

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    .line 136
    const-string v0, ""

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    .line 137
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->state:I

    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 139
    return-void
.end method
