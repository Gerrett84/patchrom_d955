.class Lcom/android/server/net/NetworkPolicyManagerService$12;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 688
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.extra.UID"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 690
    .local v1, uid:I
    const-string v2, "com.lge.net.policy.LG_DATA_ACTION_UID_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 693
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->removed_uid_lsit:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 694
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->removed_uid_lsit:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V
    invoke-static {v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$200(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 698
    :cond_0
    return-void
.end method
