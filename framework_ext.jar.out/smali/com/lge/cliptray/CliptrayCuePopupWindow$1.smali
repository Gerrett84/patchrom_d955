.class Lcom/lge/cliptray/CliptrayCuePopupWindow$1;
.super Ljava/lang/Object;
.source "CliptrayCuePopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/cliptray/CliptrayCuePopupWindow;-><init>(Landroid/content/Context;Lcom/lge/loader/cliptray/ICliptrayManagerLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/cliptray/CliptrayCuePopupWindow;


# direct methods
.method constructor <init>(Lcom/lge/cliptray/CliptrayCuePopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow$1;->this$0:Lcom/lge/cliptray/CliptrayCuePopupWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 45
    iget-object v1, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow$1;->this$0:Lcom/lge/cliptray/CliptrayCuePopupWindow;

    #getter for: Lcom/lge/cliptray/CliptrayCuePopupWindow;->mClipManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;
    invoke-static {v1}, Lcom/lge/cliptray/CliptrayCuePopupWindow;->access$000(Lcom/lge/cliptray/CliptrayCuePopupWindow;)Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow$1;->this$0:Lcom/lge/cliptray/CliptrayCuePopupWindow;

    #getter for: Lcom/lge/cliptray/CliptrayCuePopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lge/cliptray/CliptrayCuePopupWindow;->access$100(Lcom/lge/cliptray/CliptrayCuePopupWindow;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow$1;->this$0:Lcom/lge/cliptray/CliptrayCuePopupWindow;

    #getter for: Lcom/lge/cliptray/CliptrayCuePopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lge/cliptray/CliptrayCuePopupWindow;->access$100(Lcom/lge/cliptray/CliptrayCuePopupWindow;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow$1;->this$0:Lcom/lge/cliptray/CliptrayCuePopupWindow;

    #getter for: Lcom/lge/cliptray/CliptrayCuePopupWindow;->mShowSoftInputOnFocus:Z
    invoke-static {v1}, Lcom/lge/cliptray/CliptrayCuePopupWindow;->access$200(Lcom/lge/cliptray/CliptrayCuePopupWindow;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow$1;->this$0:Lcom/lge/cliptray/CliptrayCuePopupWindow;

    #getter for: Lcom/lge/cliptray/CliptrayCuePopupWindow;->mIsEditableText:Z
    invoke-static {v1}, Lcom/lge/cliptray/CliptrayCuePopupWindow;->access$300(Lcom/lge/cliptray/CliptrayCuePopupWindow;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 49
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 50
    iget-object v1, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow$1;->this$0:Lcom/lge/cliptray/CliptrayCuePopupWindow;

    #getter for: Lcom/lge/cliptray/CliptrayCuePopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lge/cliptray/CliptrayCuePopupWindow;->access$100(Lcom/lge/cliptray/CliptrayCuePopupWindow;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 54
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v1, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow$1;->this$0:Lcom/lge/cliptray/CliptrayCuePopupWindow;

    #getter for: Lcom/lge/cliptray/CliptrayCuePopupWindow;->mCuePopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lge/cliptray/CliptrayCuePopupWindow;->access$400(Lcom/lge/cliptray/CliptrayCuePopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 55
    iget-object v1, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow$1;->this$0:Lcom/lge/cliptray/CliptrayCuePopupWindow;

    #getter for: Lcom/lge/cliptray/CliptrayCuePopupWindow;->mClipManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;
    invoke-static {v1}, Lcom/lge/cliptray/CliptrayCuePopupWindow;->access$000(Lcom/lge/cliptray/CliptrayCuePopupWindow;)Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/loader/cliptray/ICliptrayManagerLoader;->showCliptraycueClose()V

    .line 57
    :cond_1
    return-void
.end method
