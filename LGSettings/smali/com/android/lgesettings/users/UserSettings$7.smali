.class Lcom/android/lgesettings/users/UserSettings$7;
.super Ljava/lang/Thread;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/users/UserSettings;->removeUserNow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/users/UserSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/lgesettings/users/UserSettings$7;->this$0:Lcom/android/lgesettings/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/lgesettings/users/UserSettings$7;->this$0:Lcom/android/lgesettings/users/UserSettings;

    #getter for: Lcom/android/lgesettings/users/UserSettings;->mUserLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/lgesettings/users/UserSettings;->access$1300(Lcom/android/lgesettings/users/UserSettings;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/users/UserSettings$7;->this$0:Lcom/android/lgesettings/users/UserSettings;

    #getter for: Lcom/android/lgesettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;
    invoke-static {v0}, Lcom/android/lgesettings/users/UserSettings;->access$600(Lcom/android/lgesettings/users/UserSettings;)Landroid/os/UserManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/lgesettings/users/UserSettings$7;->this$0:Lcom/android/lgesettings/users/UserSettings;

    #getter for: Lcom/android/lgesettings/users/UserSettings;->mRemovingUserId:I
    invoke-static {v2}, Lcom/android/lgesettings/users/UserSettings;->access$200(Lcom/android/lgesettings/users/UserSettings;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->removeUser(I)Z

    .line 433
    iget-object v0, p0, Lcom/android/lgesettings/users/UserSettings$7;->this$0:Lcom/android/lgesettings/users/UserSettings;

    #getter for: Lcom/android/lgesettings/users/UserSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/lgesettings/users/UserSettings;->access$400(Lcom/android/lgesettings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 434
    monitor-exit v1

    .line 435
    return-void

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
