.class Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$3;
.super Ljava/lang/Object;
.source "NextiKeyguardSelectorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->setMissedCallCount(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 655
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$3;->val$count:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x32

    const/4 v1, 0x0

    .line 658
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$3;->val$count:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$3;->val$count:I

    if-ge v0, v2, :cond_2

    .line 662
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mIsBouncing:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$700(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$800(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$800(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$3;->val$count:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    :cond_1
    :goto_0
    return-void

    .line 668
    :cond_2
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$3;->val$count:I

    if-gt v2, v0, :cond_4

    .line 674
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mIsBouncing:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$700(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 675
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$800(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 678
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$800(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "50"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 680
    :cond_4
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$3;->val$count:I

    if-gtz v0, :cond_1

    .line 682
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$800(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
