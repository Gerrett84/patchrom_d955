.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 169
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.nttdocomo.android.mascot.KEYGUARD_UPDATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyguardViewManager.BroadcastReceiver.onReceive(): message receive com.nttdocomo.android.mascot.KEYGUARD_UPDATE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    const-string v3, "RemoteViews"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    iput-object v3, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 175
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mRemoteViews:Landroid/widget/RemoteViews;

    if-nez v3, :cond_1

    .line 176
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyguardViewManager.BroadcastReceiver.onReceive(): mascot is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.nttdocomo.android.mascot.KEYGUARD_UPDATE_LOCAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v2, screenIntent:Landroid/content/Intent;
    const-string v3, "RemoteViews"

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 185
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 187
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mIsWaitingForBootComplete:Z
    invoke-static {v3, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$202(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Z)Z

    .line 219
    .end local v2           #screenIntent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 180
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyguardViewManager.BroadcastReceiver.onReceive(): mascot is exist"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    :cond_2
    const-string v3, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.android.internal.policy.impl.CARRIERMAIL_COUNT_UPDATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 192
    :cond_3
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyguardViewManager.BroadcastReceiver.onReceive(): message receive bindService IScreenLockService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .restart local v2       #screenIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v3, v2, v4, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 197
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyguardViewManager.BroadcastReceiver.onReceive(): can\'t connect IScreenLockService"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_4
    const-string v3, "com.android.internal.policy.impl.CARRIERMAIL_COUNT_UPDATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.nttdocomo.android.mascot.KEYGUARD_UPDATE_LOCAL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v1, charaIntent:Landroid/content/Intent;
    const-string v3, "RemoteViews"

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 204
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 208
    .end local v1           #charaIntent:Landroid/content/Intent;
    .end local v2           #screenIntent:Landroid/content/Intent;
    :cond_5
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mIsBootCompleted:Z
    invoke-static {v3, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$402(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Z)Z

    .line 211
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mIsWaitingForBootComplete:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.nttdocomo.android.mascot.KEYGUARD_UPDATE_LOCAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .restart local v2       #screenIntent:Landroid/content/Intent;
    const-string v3, "RemoteViews"

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 214
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 216
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mIsWaitingForBootComplete:Z
    invoke-static {v3, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$202(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Z)Z

    goto/16 :goto_1
.end method
