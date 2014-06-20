.class Lcom/android/lgesettings/DataUsageSummary$9;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1627
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageSummary$9;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x1

    .line 1630
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary$9;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mPolicyEditor:Lcom/android/lgesettings/net/NetworkPolicyEditor;
    invoke-static {v2}, Lcom/android/lgesettings/DataUsageSummary;->access$1500(Lcom/android/lgesettings/DataUsageSummary;)Lcom/android/lgesettings/net/NetworkPolicyEditor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary$9;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {v3}, Lcom/android/lgesettings/DataUsageSummary;->access$1400(Lcom/android/lgesettings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1646
    :cond_0
    :goto_0
    return-void

    .line 1634
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary$9;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/lgesettings/DataUsageSummary;->access$1600(Lcom/android/lgesettings/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 1635
    .local v0, disableAtLimit:Z
    :goto_1
    if-eqz v0, :cond_3

    .line 1638
    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary$9;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/lgesettings/DataUsageSummary$ConfirmLimitFragment;->show(Lcom/android/lgesettings/DataUsageSummary;)V

    goto :goto_0

    .line 1634
    .end local v0           #disableAtLimit:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1640
    .restart local v0       #disableAtLimit:Z
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary$9;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #calls: Lcom/android/lgesettings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v2, v4, v5}, Lcom/android/lgesettings/DataUsageSummary;->access$1700(Lcom/android/lgesettings/DataUsageSummary;J)V

    .line 1642
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1643
    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary$9;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #calls: Lcom/android/lgesettings/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v1, v4, v5}, Lcom/android/lgesettings/DataUsageSummary;->access$1800(Lcom/android/lgesettings/DataUsageSummary;J)V

    goto :goto_0
.end method
