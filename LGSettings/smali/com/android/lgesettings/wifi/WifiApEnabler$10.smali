.class Lcom/android/lgesettings/wifi/WifiApEnabler$10;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiApEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$10;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1145
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$10;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$1500(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1146
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$10;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$1500(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1149
    .local v0, mImm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$10;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$1200(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    .end local v0           #mImm:Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 1150
    :catch_0
    move-exception v1

    goto :goto_0
.end method
