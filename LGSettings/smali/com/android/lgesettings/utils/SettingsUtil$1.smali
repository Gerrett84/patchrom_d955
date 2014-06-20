.class Lcom/android/lgesettings/utils/SettingsUtil$1;
.super Ljava/lang/Object;
.source "SettingsUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/utils/SettingsUtil;->patchDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/utils/SettingsUtil;

.field final synthetic val$isTabView:Z


# direct methods
.method constructor <init>(Lcom/android/lgesettings/utils/SettingsUtil;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/lgesettings/utils/SettingsUtil$1;->this$0:Lcom/android/lgesettings/utils/SettingsUtil;

    iput-boolean p2, p0, Lcom/android/lgesettings/utils/SettingsUtil$1;->val$isTabView:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "touchItem"

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v0, i:Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/android/lgesettings/utils/SettingsUtil$1;->val$isTabView:Z

    if-nez v1, :cond_0

    .line 94
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.lgesettings"

    const-string v3, "com.android.lgesettings.utils.CheckPatchInfo"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 100
    :goto_0
    const-string v1, "item"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/android/lgesettings/utils/SettingsUtil$1;->this$0:Lcom/android/lgesettings/utils/SettingsUtil;

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/utils/SettingsUtil;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void

    .line 97
    :cond_0
    const-string v1, "com.lge.settings.CHECK_PATCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
