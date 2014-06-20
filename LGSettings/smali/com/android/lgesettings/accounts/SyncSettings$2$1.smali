.class Lcom/android/lgesettings/accounts/SyncSettings$2$1;
.super Ljava/lang/Object;
.source "SyncSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/accounts/SyncSettings$2;->onStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/accounts/SyncSettings$2;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/accounts/SyncSettings$2;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/lgesettings/accounts/SyncSettings$2$1;->this$1:Lcom/android/lgesettings/accounts/SyncSettings$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/lgesettings/accounts/SyncSettings$2$1;->this$1:Lcom/android/lgesettings/accounts/SyncSettings$2;

    iget-object v0, v0, Lcom/android/lgesettings/accounts/SyncSettings$2;->this$0:Lcom/android/lgesettings/accounts/SyncSettings;

    #getter for: Lcom/android/lgesettings/accounts/SyncSettings;->mAutoSyncPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/accounts/SyncSettings;->access$000(Lcom/android/lgesettings/accounts/SyncSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    const-string v0, "hsmodel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAccountSyncPreference : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/android/lgesettings/accounts/SyncSettings$2$1;->this$1:Lcom/android/lgesettings/accounts/SyncSettings$2;

    iget-object v0, v0, Lcom/android/lgesettings/accounts/SyncSettings$2;->this$0:Lcom/android/lgesettings/accounts/SyncSettings;

    #getter for: Lcom/android/lgesettings/accounts/SyncSettings;->mAutoSyncPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/accounts/SyncSettings;->access$000(Lcom/android/lgesettings/accounts/SyncSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 277
    :cond_0
    return-void
.end method
