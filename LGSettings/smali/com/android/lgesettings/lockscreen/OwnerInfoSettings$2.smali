.class Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$2;
.super Landroid/text/InputFilter$LengthFilter;
.source "OwnerInfoSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mImm:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic this$0:Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;I)V
    .locals 2
    .parameter
    .parameter "x0"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$2;->this$0:Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 143
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$2;->this$0:Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$2;->mImm:Landroid/view/inputmethod/InputMethodManager;

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
    .line 148
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 149
    .local v0, buffertextlength:I
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    sub-int v4, p6, p5

    sub-int/2addr v3, v4

    rsub-int/lit8 v1, v3, 0x32

    .line 151
    .local v1, keep:I
    if-gtz v1, :cond_0

    .line 153
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$2;->this$0:Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;

    #calls: Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->showMaxCharExceededToast()V
    invoke-static {v3}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->access$100(Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;)V

    .line 155
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$2;->this$0:Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;

    const/4 v4, 0x1

    #setter for: Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->checkValue:I
    invoke-static {v3, v4}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->access$202(Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;I)I

    .line 156
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$2;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$2;->this$0:Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;

    #getter for: Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->access$000(Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 157
    const-string v3, ""

    .line 173
    :goto_0
    return-object v3

    .line 158
    :cond_0
    sub-int v3, p3, p2

    if-le v1, v3, :cond_1

    .line 159
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$2;->this$0:Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;

    const/4 v4, 0x0

    #setter for: Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->checkValue:I
    invoke-static {v3, v4}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->access$202(Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;I)I

    .line 160
    const/4 v3, 0x0

    goto :goto_0

    .line 162
    :cond_1
    if-le v0, v1, :cond_2

    .line 163
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$2;->this$0:Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;

    #calls: Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->showMaxCharExceededToast()V
    invoke-static {v3}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->access$100(Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;)V

    .line 165
    :cond_2
    add-int v2, v1, p2

    .line 166
    .local v2, keepStart:I
    add-int/lit8 v3, v2, -0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 167
    add-int/lit8 v2, v2, -0x1

    .line 168
    if-ne v2, p2, :cond_3

    .line 169
    const-string v3, ""

    goto :goto_0

    .line 172
    :cond_3
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$2;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$2;->this$0:Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;

    #getter for: Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->access$000(Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 173
    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0
.end method
