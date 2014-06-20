.class Lcom/android/lgesettings/accounts/SyncSettings$2;
.super Ljava/lang/Object;
.source "SyncSettings.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/accounts/SyncSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/accounts/SyncSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/accounts/SyncSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/lgesettings/accounts/SyncSettings$2;->this$0:Lcom/android/lgesettings/accounts/SyncSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 2
    .parameter "which"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/lgesettings/accounts/SyncSettings$2;->this$0:Lcom/android/lgesettings/accounts/SyncSettings;

    #getter for: Lcom/android/lgesettings/accounts/SyncSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/lgesettings/accounts/SyncSettings;->access$100(Lcom/android/lgesettings/accounts/SyncSettings;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/lgesettings/accounts/SyncSettings$2$1;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/accounts/SyncSettings$2$1;-><init>(Lcom/android/lgesettings/accounts/SyncSettings$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    return-void
.end method
