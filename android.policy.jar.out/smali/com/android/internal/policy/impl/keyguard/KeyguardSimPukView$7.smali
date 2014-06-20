.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$7;
.super Landroid/os/CountDownTimer;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->showPukDialogDCM(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;JJLandroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 567
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iput-object p6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$7;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$7;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 571
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter "millisUntilFinished"

    .prologue
    .line 568
    return-void
.end method
