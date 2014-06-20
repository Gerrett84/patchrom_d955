.class public Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;
.super Landroid/app/Activity;
.source "QuietModeAutoReplyEditActivity.java"


# static fields
.field private static final DBG:Ljava/lang/Boolean;


# instance fields
.field firstEntryFlag:Z

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private len:I

.field private mButtonCancel:Landroid/widget/Button;

.field private mButtonSave:Landroid/widget/Button;

.field private mEditText:Landroid/widget/EditText;

.field private final mHandler:Landroid/os/Handler;

.field private mOriginalText:Ljava/lang/String;

.field private final mShowInputMethodTask:Ljava/lang/Runnable;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->firstEntryFlag:Z

    .line 163
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mHandler:Landroid/os/Handler;

    .line 164
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$5;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$5;-><init>(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mShowInputMethodTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->maxlengthToast()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->len:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->len:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mButtonSave:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->inputKeyboardRise(Landroid/view/View;)V

    return-void
.end method

.method private inputKeyboardDown(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 179
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 180
    .local v0, inputMethodMng:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 181
    return-void
.end method

.method private inputKeyboardRise(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 171
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 173
    .local v0, inputMethodMng:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 174
    const-string v1, "inputKeyboardRise()..."

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->log(Ljava/lang/String;)V

    .line 176
    .end local v0           #inputMethodMng:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private maxlengthToast()V
    .locals 2

    .prologue
    const v1, 0x7f080e08

    .line 188
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mToast:Landroid/widget/Toast;

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 195
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 184
    const-string v0, "QuietModeAutoReplyEditActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 160
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 161
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v2, 0x7f040126

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->setContentView(I)V

    .line 47
    const v2, 0x7f0a0057

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mButtonSave:Landroid/widget/Button;

    .line 48
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mButtonSave:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 50
    const v2, 0x7f0a028c

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mEditText:Landroid/widget/EditText;

    .line 52
    const v2, 0x7f0a0056

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mButtonCancel:Landroid/widget/Button;

    .line 53
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 55
    new-instance v1, Lcom/android/lgesettings/quietmode/ByteLengthFilter;

    const/16 v2, 0x50

    invoke-direct {v1, p0, v2}, Lcom/android/lgesettings/quietmode/ByteLengthFilter;-><init>(Landroid/content/Context;I)V

    .line 56
    .local v1, filter:Lcom/android/lgesettings/quietmode/ByteLengthFilter;
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v2, v3}, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->setInputProperty(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    .line 57
    new-instance v2, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$1;-><init>(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->setOnMaxLengthListener(Lcom/android/lgesettings/quietmode/ByteLengthFilter$OnMaxLengthListener;)V

    .line 63
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mEditText:Landroid/widget/EditText;

    new-array v3, v5, [Landroid/text/InputFilter;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 64
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$2;

    invoke-direct {v3, p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$2;-><init>(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;Lcom/android/lgesettings/quietmode/ByteLengthFilter;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 84
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mButtonSave:Landroid/widget/Button;

    new-instance v3, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$3;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$3;-><init>(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mButtonCancel:Landroid/widget/Button;

    new-instance v3, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$4;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$4;-><init>(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quietmode_auto_reply_message"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mOriginalText:Ljava/lang/String;

    .line 121
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mOriginalText:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080e07

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mOriginalText:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quietmode_auto_reply_message"

    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mOriginalText:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mOriginalText:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 127
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mOriginalText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 132
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 133
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 134
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 135
    const v2, 0x7f0201fb

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(I)V

    .line 136
    const v2, 0x7f080e05

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 138
    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 149
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 201
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->finish()V

    .line 203
    const/4 v0, 0x1

    .line 205
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 154
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mEditText:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->inputKeyboardDown(Landroid/view/View;)V

    .line 155
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 142
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mShowInputMethodTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    const-string v0, "onResume()..."

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->log(Ljava/lang/String;)V

    .line 144
    return-void
.end method
