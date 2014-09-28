.class Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;)V
    .locals 0
    .parameter

    .prologue
    .line 5319
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5321
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5322
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->hideNavIfNeeded()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->access$3500(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;)V

    .line 5323
    monitor-exit v1

    .line 5324
    return-void

    .line 5323
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
