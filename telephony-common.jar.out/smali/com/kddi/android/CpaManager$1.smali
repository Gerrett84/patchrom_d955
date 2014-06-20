.class Lcom/kddi/android/CpaManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CpaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kddi/android/CpaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kddi/android/CpaManager;


# direct methods
.method constructor <init>(Lcom/kddi/android/CpaManager;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, action:Ljava/lang/String;
    const-string v7, "cpa_onSetupConnectionCompleted"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 66
    const-string v7, "RIL_Cpa"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "============= onReceive() Action cpa_onSetupConnectionCompleted - mCPAStatus="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mCPAStatus:I
    invoke-static {v9}, Lcom/kddi/android/CpaManager;->access$000(Lcom/kddi/android/CpaManager;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v7, "ril.btdun.send"

    const-string v8, "ture"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v7, "result"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 73
    .local v4, resultKey:Z
    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    const-string v8, "mFailCause"

    const/4 v9, -0x4

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    #setter for: Lcom/kddi/android/CpaManager;->mErrno:I
    invoke-static {v7, v8}, Lcom/kddi/android/CpaManager;->access$102(Lcom/kddi/android/CpaManager;I)I

    .line 74
    const/4 v2, 0x0

    .line 75
    .local v2, bsendIntent:Z
    const-string v7, "status"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, stat:Ljava/lang/String;
    if-eqz v4, :cond_9

    .line 86
    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mCPAStatus:I
    invoke-static {v7}, Lcom/kddi/android/CpaManager;->access$000(Lcom/kddi/android/CpaManager;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    .line 88
    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    const/4 v8, 0x2

    #setter for: Lcom/kddi/android/CpaManager;->mCPAStatus:I
    invoke-static {v7, v8}, Lcom/kddi/android/CpaManager;->access$002(Lcom/kddi/android/CpaManager;I)I

    .line 89
    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    const/4 v8, 0x0

    #setter for: Lcom/kddi/android/CpaManager;->mErrno:I
    invoke-static {v7, v8}, Lcom/kddi/android/CpaManager;->access$102(Lcom/kddi/android/CpaManager;I)I

    .line 91
    const-string v7, "addresses"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, addresses:[Ljava/lang/String;
    const-string v7, "dnses"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, dnses:[Ljava/lang/String;
    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;
    invoke-static {v7}, Lcom/kddi/android/CpaManager;->access$200(Lcom/kddi/android/CpaManager;)Lcom/kddi/android/CpaManager$ConnInfo;

    move-result-object v7

    if-nez v7, :cond_0

    .line 95
    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    new-instance v8, Lcom/kddi/android/CpaManager$ConnInfo;

    invoke-direct {v8}, Lcom/kddi/android/CpaManager$ConnInfo;-><init>()V

    #setter for: Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;
    invoke-static {v7, v8}, Lcom/kddi/android/CpaManager;->access$202(Lcom/kddi/android/CpaManager;Lcom/kddi/android/CpaManager$ConnInfo;)Lcom/kddi/android/CpaManager$ConnInfo;

    .line 96
    :cond_0
    if-eqz v1, :cond_3

    array-length v7, v1

    if-eqz v7, :cond_3

    .line 98
    const-string v7, "RIL_Cpa"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addresses.length="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " addresses[0]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v1, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v1, v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    aput-object v8, v1, v7

    .line 100
    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;
    invoke-static {v7}, Lcom/kddi/android/CpaManager;->access$200(Lcom/kddi/android/CpaManager;)Lcom/kddi/android/CpaManager$ConnInfo;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-static {v8}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    iput-object v8, v7, Lcom/kddi/android/CpaManager$ConnInfo;->localAddress:Ljava/net/InetAddress;

    .line 104
    :goto_0
    if-eqz v3, :cond_6

    array-length v7, v3

    if-eqz v7, :cond_6

    .line 106
    array-length v7, v3

    const/4 v8, 0x1

    if-le v7, v8, :cond_4

    .line 107
    const-string v7, "RIL_Cpa"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dnses.length="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " dnses[0]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " dnses[1]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_1
    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;
    invoke-static {v7}, Lcom/kddi/android/CpaManager;->access$200(Lcom/kddi/android/CpaManager;)Lcom/kddi/android/CpaManager$ConnInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-static {v9}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    aput-object v9, v7, v8

    .line 111
    array-length v7, v3

    const/4 v8, 0x1

    if-le v7, v8, :cond_5

    .line 112
    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;
    invoke-static {v7}, Lcom/kddi/android/CpaManager;->access$200(Lcom/kddi/android/CpaManager;)Lcom/kddi/android/CpaManager$ConnInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;

    const/4 v8, 0x1

    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-static {v9}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    aput-object v9, v7, v8

    .line 122
    :goto_2
    const/4 v2, 0x1

    .line 149
    .end local v1           #addresses:[Ljava/lang/String;
    .end local v3           #dnses:[Ljava/lang/String;
    :cond_1
    :goto_3
    if-eqz v2, :cond_2

    .line 151
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.kddi.android.cpa.CONNECTIVITY_CHANGE"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v5, sintent:Landroid/content/Intent;
    const-string v7, "connStatus"

    iget-object v8, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mCPAStatus:I
    invoke-static {v8}, Lcom/kddi/android/CpaManager;->access$000(Lcom/kddi/android/CpaManager;)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    const-string v7, "errno"

    iget-object v8, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mErrno:I
    invoke-static {v8}, Lcom/kddi/android/CpaManager;->access$100(Lcom/kddi/android/CpaManager;)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/kddi/android/CpaManager;->access$300(Lcom/kddi/android/CpaManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 156
    const-string v7, "RIL_Cpa"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "============= onReceive() send intent CONNECTIVITY_ACTION mCPAStatus="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mCPAStatus:I
    invoke-static {v9}, Lcom/kddi/android/CpaManager;->access$000(Lcom/kddi/android/CpaManager;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mErrno="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mErrno:I
    invoke-static {v9}, Lcom/kddi/android/CpaManager;->access$100(Lcom/kddi/android/CpaManager;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .end local v2           #bsendIntent:Z
    .end local v4           #resultKey:Z
    .end local v5           #sintent:Landroid/content/Intent;
    .end local v6           #stat:Ljava/lang/String;
    :cond_2
    return-void

    .line 103
    .restart local v1       #addresses:[Ljava/lang/String;
    .restart local v2       #bsendIntent:Z
    .restart local v3       #dnses:[Ljava/lang/String;
    .restart local v4       #resultKey:Z
    .restart local v6       #stat:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;
    invoke-static {v7}, Lcom/kddi/android/CpaManager;->access$200(Lcom/kddi/android/CpaManager;)Lcom/kddi/android/CpaManager$ConnInfo;

    move-result-object v7

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/kddi/android/CpaManager$ConnInfo;->localAddress:Ljava/net/InetAddress;

    goto/16 :goto_0

    .line 109
    :cond_4
    const-string v7, "RIL_Cpa"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dnses.length=1 dnses[0]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 114
    :cond_5
    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;
    invoke-static {v7}, Lcom/kddi/android/CpaManager;->access$200(Lcom/kddi/android/CpaManager;)Lcom/kddi/android/CpaManager$ConnInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-object v9, v7, v8

    goto/16 :goto_2

    .line 118
    :cond_6
    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;
    invoke-static {v7}, Lcom/kddi/android/CpaManager;->access$200(Lcom/kddi/android/CpaManager;)Lcom/kddi/android/CpaManager$ConnInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 119
    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;
    invoke-static {v7}, Lcom/kddi/android/CpaManager;->access$200(Lcom/kddi/android/CpaManager;)Lcom/kddi/android/CpaManager$ConnInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-object v9, v7, v8

    goto/16 :goto_2

    .line 125
    .end local v1           #addresses:[Ljava/lang/String;
    .end local v3           #dnses:[Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mCPAStatus:I
    invoke-static {v7}, Lcom/kddi/android/CpaManager;->access$000(Lcom/kddi/android/CpaManager;)I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_8

    const-string v7, "DISCONNECTED"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 127
    :cond_8
    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    const/4 v8, 0x4

    #setter for: Lcom/kddi/android/CpaManager;->mCPAStatus:I
    invoke-static {v7, v8}, Lcom/kddi/android/CpaManager;->access$002(Lcom/kddi/android/CpaManager;I)I

    .line 128
    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    const/4 v8, 0x0

    #setter for: Lcom/kddi/android/CpaManager;->mErrno:I
    invoke-static {v7, v8}, Lcom/kddi/android/CpaManager;->access$102(Lcom/kddi/android/CpaManager;I)I

    .line 131
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 136
    :cond_9
    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    #getter for: Lcom/kddi/android/CpaManager;->mErrno:I
    invoke-static {v7}, Lcom/kddi/android/CpaManager;->access$100(Lcom/kddi/android/CpaManager;)I

    move-result v7

    if-gez v7, :cond_a

    .line 138
    const-string v7, "RIL_Cpa"

    const-string v8, "============= onReceive() mErrno is valid, so bsendIntent set true"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    const/4 v8, 0x4

    #setter for: Lcom/kddi/android/CpaManager;->mCPAStatus:I
    invoke-static {v7, v8}, Lcom/kddi/android/CpaManager;->access$002(Lcom/kddi/android/CpaManager;I)I

    .line 140
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 145
    :cond_a
    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    const/4 v8, 0x4

    #setter for: Lcom/kddi/android/CpaManager;->mCPAStatus:I
    invoke-static {v7, v8}, Lcom/kddi/android/CpaManager;->access$002(Lcom/kddi/android/CpaManager;I)I

    .line 146
    iget-object v7, p0, Lcom/kddi/android/CpaManager$1;->this$0:Lcom/kddi/android/CpaManager;

    const-string v8, "mFailCause"

    const/4 v9, -0x4

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    #setter for: Lcom/kddi/android/CpaManager;->mErrno:I
    invoke-static {v7, v8}, Lcom/kddi/android/CpaManager;->access$102(Lcom/kddi/android/CpaManager;I)I

    goto/16 :goto_3
.end method
