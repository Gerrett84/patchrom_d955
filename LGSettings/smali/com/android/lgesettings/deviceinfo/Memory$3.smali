.class Lcom/android/lgesettings/deviceinfo/Memory$3;
.super Ljava/lang/Object;
.source "Memory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/deviceinfo/Memory;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/deviceinfo/Memory;)V
    .locals 0
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/Memory$3;->this$0:Lcom/android/lgesettings/deviceinfo/Memory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const v4, 0x7f08046d

    const/4 v3, 0x0

    .line 416
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Memory$3;->this$0:Lcom/android/lgesettings/deviceinfo/Memory;

    #getter for: Lcom/android/lgesettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/Memory;->access$300(Lcom/android/lgesettings/deviceinfo/Memory;)Landroid/os/storage/StorageManager;

    move-result-object v1

    invoke-static {}, Lcom/android/lgesettings/deviceinfo/Memory;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Memory$3;->this$0:Lcom/android/lgesettings/deviceinfo/Memory;

    #calls: Lcom/android/lgesettings/deviceinfo/Memory;->doUnmount()V
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/Memory;->access$400(Lcom/android/lgesettings/deviceinfo/Memory;)V

    .line 433
    :goto_0
    return-void

    .line 421
    :cond_1
    const-string v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "nofs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "unmountable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 423
    :cond_2
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/Memory;->access$500()Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 424
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/Memory;->access$500()Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Memory$3;->this$0:Lcom/android/lgesettings/deviceinfo/Memory;

    #getter for: Lcom/android/lgesettings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/Memory;->access$600(Lcom/android/lgesettings/deviceinfo/Memory;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 425
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/Memory;->access$500()Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Memory$3;->this$0:Lcom/android/lgesettings/deviceinfo/Memory;

    #getter for: Lcom/android/lgesettings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/Memory;->access$600(Lcom/android/lgesettings/deviceinfo/Memory;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080bff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 427
    :cond_3
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/Memory;->access$500()Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 428
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/Memory;->access$500()Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Memory$3;->this$0:Lcom/android/lgesettings/deviceinfo/Memory;

    #getter for: Lcom/android/lgesettings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/Memory;->access$600(Lcom/android/lgesettings/deviceinfo/Memory;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 429
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/Memory;->access$500()Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Memory$3;->this$0:Lcom/android/lgesettings/deviceinfo/Memory;

    #getter for: Lcom/android/lgesettings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/Memory;->access$600(Lcom/android/lgesettings/deviceinfo/Memory;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080c00

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
