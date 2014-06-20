.class Lcom/android/server/RegulatoryObserver$RegulatoryObserverBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RegulatoryObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RegulatoryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegulatoryObserverBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RegulatoryObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/RegulatoryObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/server/RegulatoryObserver$RegulatoryObserverBroadcastReceiver;->this$0:Lcom/android/server/RegulatoryObserver;

    .line 155
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 156
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 161
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-static {}, Lcom/android/server/RegulatoryObserver;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegulatoryObserverBroadcastReceiver() - ACTION_BOOT_COMPLETED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/android/server/RegulatoryObserver$RegulatoryObserverBroadcastReceiver;->this$0:Lcom/android/server/RegulatoryObserver;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/RegulatoryObserver;->mBootCompleted:Z
    invoke-static {v1, v2}, Lcom/android/server/RegulatoryObserver;->access$302(Lcom/android/server/RegulatoryObserver;Z)Z

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-static {}, Lcom/android/server/RegulatoryObserver;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegulatoryObserverBroadcastReceiver() - Unknown Action"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
