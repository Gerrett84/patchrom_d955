.class Lcom/android/lgesettings/lge/HideNavigationAppSelect$1;
.super Landroid/content/BroadcastReceiver;
.source "HideNavigationAppSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/HideNavigationAppSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/HideNavigationAppSelect;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/HideNavigationAppSelect;)V
    .locals 0
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$1;->this$0:Lcom/android/lgesettings/lge/HideNavigationAppSelect;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 416
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, pkgName:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, action:Ljava/lang/String;
    const-string v2, "HideNavigationAppSelect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive package name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 420
    iget-object v2, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$1;->this$0:Lcom/android/lgesettings/lge/HideNavigationAppSelect;

    #calls: Lcom/android/lgesettings/lge/HideNavigationAppSelect;->deleteHideNavigationApp(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->access$700(Lcom/android/lgesettings/lge/HideNavigationAppSelect;Ljava/lang/String;)V

    .line 422
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$1;->this$0:Lcom/android/lgesettings/lge/HideNavigationAppSelect;

    #calls: Lcom/android/lgesettings/lge/HideNavigationAppSelect;->makingList()V
    invoke-static {v2}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->access$100(Lcom/android/lgesettings/lge/HideNavigationAppSelect;)V

    .line 423
    return-void
.end method
