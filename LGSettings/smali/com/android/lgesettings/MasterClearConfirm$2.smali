.class Lcom/android/lgesettings/MasterClearConfirm$2;
.super Landroid/os/storage/StorageEventListener;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/MasterClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/MasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/MasterClearConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/lgesettings/MasterClearConfirm$2;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/lgesettings/MasterClearConfirm$2;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    #getter for: Lcom/android/lgesettings/MasterClearConfirm;->mErasingSdCard:Z
    invoke-static {v0}, Lcom/android/lgesettings/MasterClearConfirm;->access$600(Lcom/android/lgesettings/MasterClearConfirm;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/lgesettings/MasterClearConfirm$2;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/lgesettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 514
    :cond_0
    return-void
.end method
