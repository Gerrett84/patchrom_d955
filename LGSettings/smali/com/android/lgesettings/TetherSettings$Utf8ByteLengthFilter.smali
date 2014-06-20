.class Lcom/android/lgesettings/TetherSettings$Utf8ByteLengthFilter;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Utf8ByteLengthFilter"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mMaxBytes:I

.field private mToast:Landroid/widget/Toast;

.field final synthetic this$0:Lcom/android/lgesettings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TetherSettings;I)V
    .locals 2
    .parameter
    .parameter "maxBytes"

    .prologue
    .line 2210
    iput-object p1, p0, Lcom/android/lgesettings/TetherSettings$Utf8ByteLengthFilter;->this$0:Lcom/android/lgesettings/TetherSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings$Utf8ByteLengthFilter;->mToast:Landroid/widget/Toast;

    .line 2206
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings$Utf8ByteLengthFilter;->this$0:Lcom/android/lgesettings/TetherSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings$Utf8ByteLengthFilter;->mActivity:Landroid/app/Activity;

    .line 2207
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings$Utf8ByteLengthFilter;->mActivity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings$Utf8ByteLengthFilter;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 2211
    iput p2, p0, Lcom/android/lgesettings/TetherSettings$Utf8ByteLengthFilter;->mMaxBytes:I

    .line 2212
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 2216
    const/4 v5, 0x0

    .line 2218
    .local v5, srcByteCount:I
    move v3, p2

    .local v3, i:I
    :goto_0
    if-ge v3, p3, :cond_2

    .line 2219
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 2220
    .local v0, c:C
    const/16 v6, 0x80

    if-ge v0, v6, :cond_0

    const/4 v6, 0x1

    :goto_1
    add-int/2addr v5, v6

    .line 2218
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2220
    :cond_0
    const/16 v6, 0x800

    if-ge v0, v6, :cond_1

    const/4 v6, 0x2

    goto :goto_1

    :cond_1
    const/4 v6, 0x3

    goto :goto_1

    .line 2222
    .end local v0           #c:C
    :cond_2
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    .line 2223
    .local v2, destLen:I
    const/4 v1, 0x0

    .line 2225
    .local v1, destByteCount:I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_7

    .line 2226
    if-lt v3, p5, :cond_3

    if-lt v3, p6, :cond_4

    .line 2227
    :cond_3
    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 2228
    .restart local v0       #c:C
    const/16 v6, 0x80

    if-ge v0, v6, :cond_5

    const/4 v6, 0x1

    :goto_3
    add-int/2addr v1, v6

    .line 2225
    .end local v0           #c:C
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2228
    .restart local v0       #c:C
    :cond_5
    const/16 v6, 0x800

    if-ge v0, v6, :cond_6

    const/4 v6, 0x2

    goto :goto_3

    :cond_6
    const/4 v6, 0x3

    goto :goto_3

    .line 2231
    .end local v0           #c:C
    :cond_7
    iget v6, p0, Lcom/android/lgesettings/TetherSettings$Utf8ByteLengthFilter;->mMaxBytes:I

    sub-int v4, v6, v1

    .line 2232
    .local v4, keepBytes:I
    if-gtz v4, :cond_a

    .line 2233
    iget-object v6, p0, Lcom/android/lgesettings/TetherSettings$Utf8ByteLengthFilter;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/lgesettings/TetherSettings$Utf8ByteLengthFilter;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/android/lgesettings/TetherSettings;->access$1300(Lcom/android/lgesettings/TetherSettings;)Landroid/widget/EditText;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 2234
    iget-object v6, p0, Lcom/android/lgesettings/TetherSettings$Utf8ByteLengthFilter;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Lcom/android/lgesettings/TetherSettings$Utf8ByteLengthFilter;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/lgesettings/TetherSettings;->access$1300(Lcom/android/lgesettings/TetherSettings;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 2237
    :cond_8
    iget-object v6, p0, Lcom/android/lgesettings/TetherSettings$Utf8ByteLengthFilter;->mToast:Landroid/widget/Toast;

    if-nez v6, :cond_9

    .line 2238
    iget-object v6, p0, Lcom/android/lgesettings/TetherSettings$Utf8ByteLengthFilter;->mActivity:Landroid/app/Activity;

    const v7, 0x7f080e08

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/TetherSettings$Utf8ByteLengthFilter;->mToast:Landroid/widget/Toast;

    .line 2241
    :cond_9
    iget-object v6, p0, Lcom/android/lgesettings/TetherSettings$Utf8ByteLengthFilter;->mToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 2242
    const-string v6, ""

    .line 2266
    :goto_4
    return-object v6

    .line 2243
    :cond_a
    if-lt v4, v5, :cond_b

    .line 2244
    const/4 v6, 0x0

    goto :goto_4

    .line 2247
    :cond_b
    move v3, p2

    :goto_5
    if-ge v3, p3, :cond_11

    .line 2248
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 2249
    .restart local v0       #c:C
    const/16 v6, 0x80

    if-ge v0, v6, :cond_e

    const/4 v6, 0x1

    :goto_6
    sub-int/2addr v4, v6

    .line 2250
    if-gez v4, :cond_10

    .line 2251
    iget-object v6, p0, Lcom/android/lgesettings/TetherSettings$Utf8ByteLengthFilter;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/lgesettings/TetherSettings$Utf8ByteLengthFilter;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/android/lgesettings/TetherSettings;->access$1300(Lcom/android/lgesettings/TetherSettings;)Landroid/widget/EditText;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 2252
    iget-object v6, p0, Lcom/android/lgesettings/TetherSettings$Utf8ByteLengthFilter;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Lcom/android/lgesettings/TetherSettings$Utf8ByteLengthFilter;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/lgesettings/TetherSettings;->access$1300(Lcom/android/lgesettings/TetherSettings;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 2254
    :cond_c
    iget-object v6, p0, Lcom/android/lgesettings/TetherSettings$Utf8ByteLengthFilter;->mToast:Landroid/widget/Toast;

    if-nez v6, :cond_d

    .line 2255
    iget-object v6, p0, Lcom/android/lgesettings/TetherSettings$Utf8ByteLengthFilter;->mActivity:Landroid/app/Activity;

    const v7, 0x7f080e08

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/TetherSettings$Utf8ByteLengthFilter;->mToast:Landroid/widget/Toast;

    .line 2259
    :cond_d
    iget-object v6, p0, Lcom/android/lgesettings/TetherSettings$Utf8ByteLengthFilter;->mToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 2260
    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_4

    .line 2249
    :cond_e
    const/16 v6, 0x800

    if-ge v0, v6, :cond_f

    const/4 v6, 0x2

    goto :goto_6

    :cond_f
    const/4 v6, 0x3

    goto :goto_6

    .line 2247
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2266
    .end local v0           #c:C
    :cond_11
    const/4 v6, 0x0

    goto :goto_4
.end method
