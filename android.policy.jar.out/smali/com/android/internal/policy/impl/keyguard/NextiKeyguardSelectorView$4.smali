.class Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$4;
.super Ljava/lang/Object;
.source "NextiKeyguardSelectorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->setSPModeMailUnReadCount(I)V
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
    .line 694
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$4;->val$count:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x33

    const/4 v1, 0x0

    .line 697
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$4;->val$count:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$4;->val$count:I

    if-ge v0, v2, :cond_2

    .line 701
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mIsBouncing:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$700(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon3:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$900(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon3:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$900(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$4;->val$count:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    :cond_1
    :goto_0
    return-void

    .line 707
    :cond_2
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$4;->val$count:I

    if-gt v2, v0, :cond_4

    .line 711
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mIsBouncing:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$700(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 712
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon3:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$900(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 715
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon3:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$900(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "50+"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 717
    :cond_4
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$4;->val$count:I

    if-gtz v0, :cond_1

    .line 719
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon3:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$900(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
