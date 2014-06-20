.class Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$4;
.super Landroid/text/InputFilter$LengthFilter;
.source "ExceptScanListEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->setInputFilter(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic this$1:Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;ILandroid/widget/EditText;)V
    .locals 2
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$4;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;

    iput-object p3, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$4;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 508
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$4;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$4;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const v4, 0x7f080e08

    const/4 v3, 0x0

    .line 512
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v1

    sub-int v2, p6, p5

    sub-int/2addr v1, v2

    rsub-int/lit8 v0, v1, 0x20

    .line 514
    .local v0, keep:I
    if-gtz v0, :cond_1

    .line 515
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$4;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$4;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 516
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$4;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->access$500(Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;)Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_0

    .line 517
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$4;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$4;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    #setter for: Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->access$502(Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 520
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$4;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->access$500(Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 521
    const-string v1, ""

    .line 531
    :goto_0
    return-object v1

    .line 522
    :cond_1
    sub-int v1, p3, p2

    if-lt v0, v1, :cond_2

    .line 523
    const/4 v1, 0x0

    goto :goto_0

    .line 525
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$4;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$4;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 526
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$4;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->access$500(Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;)Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_3

    .line 527
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$4;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$4;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    #setter for: Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->access$502(Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 530
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$4;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->access$500(Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 531
    add-int v1, p2, v0

    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method
