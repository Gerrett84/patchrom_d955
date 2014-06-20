.class Lcom/android/lgesettings/TetherSettings$6;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/TetherSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TetherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1452
    iput-object p1, p0, Lcom/android/lgesettings/TetherSettings$6;->this$0:Lcom/android/lgesettings/TetherSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1455
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings$6;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/lgesettings/TetherSettings;->access$2200(Lcom/android/lgesettings/TetherSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1456
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings$6;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/lgesettings/TetherSettings;->access$2200(Lcom/android/lgesettings/TetherSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1459
    .local v0, mImm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings$6;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/lgesettings/TetherSettings;->access$1300(Lcom/android/lgesettings/TetherSettings;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1463
    .end local v0           #mImm:Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 1460
    :catch_0
    move-exception v1

    goto :goto_0
.end method
