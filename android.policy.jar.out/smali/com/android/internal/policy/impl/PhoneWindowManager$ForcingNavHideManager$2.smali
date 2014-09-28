.class Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$2;
.super Landroid/database/ContentObserver;
.source "PhoneWindowManager.java"


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
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 5374
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 5377
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mHideAppListSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 5378
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->readDB()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->access$3700(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;)V

    .line 5379
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mIsReadDB:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->access$3802(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;Z)Z

    .line 5380
    return-void
.end method
