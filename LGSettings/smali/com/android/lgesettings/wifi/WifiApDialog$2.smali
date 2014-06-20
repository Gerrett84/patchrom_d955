.class Lcom/android/lgesettings/wifi/WifiApDialog$2;
.super Ljava/lang/Object;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiApDialog;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiApDialog;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiApDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 702
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiApDialog$2;->this$0:Lcom/android/lgesettings/wifi/WifiApDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 706
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 707
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog$2;->this$0:Lcom/android/lgesettings/wifi/WifiApDialog;

    #setter for: Lcom/android/lgesettings/wifi/WifiApDialog;->mDoNotShowAgain:Z
    invoke-static {v2, v5}, Lcom/android/lgesettings/wifi/WifiApDialog;->access$102(Lcom/android/lgesettings/wifi/WifiApDialog;Z)Z

    .line 708
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog$2;->this$0:Lcom/android/lgesettings/wifi/WifiApDialog;

    #getter for: Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiApDialog;->access$200(Lcom/android/lgesettings/wifi/WifiApDialog;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "NOT_SHOW"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 709
    .local v1, pref_ns:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 710
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "not_show"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 711
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 719
    :goto_0
    const-string v2, "WifiApDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "## onCheckedChanged(),  mDoNotShowAgain = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApDialog$2;->this$0:Lcom/android/lgesettings/wifi/WifiApDialog;

    #getter for: Lcom/android/lgesettings/wifi/WifiApDialog;->mDoNotShowAgain:Z
    invoke-static {v4}, Lcom/android/lgesettings/wifi/WifiApDialog;->access$100(Lcom/android/lgesettings/wifi/WifiApDialog;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-void

    .line 713
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref_ns:Landroid/content/SharedPreferences;
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog$2;->this$0:Lcom/android/lgesettings/wifi/WifiApDialog;

    #setter for: Lcom/android/lgesettings/wifi/WifiApDialog;->mDoNotShowAgain:Z
    invoke-static {v2, v4}, Lcom/android/lgesettings/wifi/WifiApDialog;->access$102(Lcom/android/lgesettings/wifi/WifiApDialog;Z)Z

    .line 714
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog$2;->this$0:Lcom/android/lgesettings/wifi/WifiApDialog;

    #getter for: Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiApDialog;->access$200(Lcom/android/lgesettings/wifi/WifiApDialog;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "NOT_SHOW"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 715
    .restart local v1       #pref_ns:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 716
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "not_show"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 717
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
