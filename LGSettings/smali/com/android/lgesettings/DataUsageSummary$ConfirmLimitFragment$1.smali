.class Lcom/android/lgesettings/DataUsageSummary$ConfirmLimitFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/DataUsageSummary$ConfirmLimitFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DataUsageSummary$ConfirmLimitFragment;

.field final synthetic val$limitBytes:J


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DataUsageSummary$ConfirmLimitFragment;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2359
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageSummary$ConfirmLimitFragment$1;->this$0:Lcom/android/lgesettings/DataUsageSummary$ConfirmLimitFragment;

    iput-wide p2, p0, Lcom/android/lgesettings/DataUsageSummary$ConfirmLimitFragment$1;->val$limitBytes:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x1

    .line 2362
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageSummary$ConfirmLimitFragment$1;->this$0:Lcom/android/lgesettings/DataUsageSummary$ConfirmLimitFragment;

    invoke-virtual {v5}, Lcom/android/lgesettings/DataUsageSummary$ConfirmLimitFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/DataUsageSummary;

    .line 2363
    .local v1, target:Lcom/android/lgesettings/DataUsageSummary;
    if-eqz v1, :cond_1

    .line 2364
    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mPolicyEditor:Lcom/android/lgesettings/net/NetworkPolicyEditor;
    invoke-static {v1}, Lcom/android/lgesettings/DataUsageSummary;->access$1500(Lcom/android/lgesettings/DataUsageSummary;)Lcom/android/lgesettings/net/NetworkPolicyEditor;

    move-result-object v0

    .line 2365
    .local v0, editor:Lcom/android/lgesettings/net/NetworkPolicyEditor;
    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {v1}, Lcom/android/lgesettings/DataUsageSummary;->access$1400(Lcom/android/lgesettings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 2366
    .local v2, template:Landroid/net/NetworkTemplate;
    invoke-virtual {v0, v2}, Lcom/android/lgesettings/net/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v3

    .line 2368
    .local v3, warningBytes:J
    const-string v5, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v7, v5, :cond_0

    const-wide/16 v5, -0x1

    cmp-long v5, v5, v3

    if-nez v5, :cond_0

    .line 2369
    const-wide v3, 0x80000000L

    .line 2373
    :cond_0
    iget-wide v5, p0, Lcom/android/lgesettings/DataUsageSummary$ConfirmLimitFragment$1;->val$limitBytes:J

    #calls: Lcom/android/lgesettings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v1, v5, v6}, Lcom/android/lgesettings/DataUsageSummary;->access$1700(Lcom/android/lgesettings/DataUsageSummary;J)V

    .line 2375
    const-string v5, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v7, v5, :cond_1

    .line 2376
    #calls: Lcom/android/lgesettings/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v1, v3, v4}, Lcom/android/lgesettings/DataUsageSummary;->access$1800(Lcom/android/lgesettings/DataUsageSummary;J)V

    .line 2379
    .end local v0           #editor:Lcom/android/lgesettings/net/NetworkPolicyEditor;
    .end local v2           #template:Landroid/net/NetworkTemplate;
    .end local v3           #warningBytes:J
    :cond_1
    return-void
.end method
