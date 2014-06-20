.class Lcom/android/lgesettings/wifi/WifiApDialog$RestartInputByteLengthFilter;
.super Lcom/android/lgesettings/wifi/ByteLengthFilter;
.source "WifiApDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/WifiApDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestartInputByteLengthFilter"
.end annotation


# instance fields
.field private mToast:Landroid/widget/Toast;

.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiApDialog;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/wifi/WifiApDialog;Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "max"
    .parameter "encode"

    .prologue
    .line 856
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiApDialog$RestartInputByteLengthFilter;->this$0:Lcom/android/lgesettings/wifi/WifiApDialog;

    .line 857
    invoke-direct {p0, p2, p3, p4}, Lcom/android/lgesettings/wifi/ByteLengthFilter;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 854
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiApDialog$RestartInputByteLengthFilter;->mToast:Landroid/widget/Toast;

    .line 858
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 861
    invoke-super/range {p0 .. p6}, Lcom/android/lgesettings/wifi/ByteLengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 863
    .local v0, cs:Ljava/lang/CharSequence;
    const-string v3, ""

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_3

    .line 865
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApDialog$RestartInputByteLengthFilter;->this$0:Lcom/android/lgesettings/wifi/WifiApDialog;

    invoke-virtual {v3}, Lcom/android/lgesettings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 866
    .local v2, iMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApDialog$RestartInputByteLengthFilter;->this$0:Lcom/android/lgesettings/wifi/WifiApDialog;

    invoke-virtual {v3}, Lcom/android/lgesettings/wifi/WifiApDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 867
    .local v1, editorView:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 868
    invoke-virtual {v2, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 872
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApDialog$RestartInputByteLengthFilter;->mToast:Landroid/widget/Toast;

    if-nez v3, :cond_2

    .line 873
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApDialog$RestartInputByteLengthFilter;->this$0:Lcom/android/lgesettings/wifi/WifiApDialog;

    invoke-virtual {v3}, Lcom/android/lgesettings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080e08

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/wifi/WifiApDialog$RestartInputByteLengthFilter;->mToast:Landroid/widget/Toast;

    .line 876
    :cond_2
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApDialog$RestartInputByteLengthFilter;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 879
    .end local v1           #editorView:Landroid/view/View;
    .end local v2           #iMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    return-object v0
.end method
