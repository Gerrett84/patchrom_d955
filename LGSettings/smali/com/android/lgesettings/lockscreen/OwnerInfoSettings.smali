.class public Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private checkValue:I

.field private dbValue:I

.field private mCancelButton:Landroid/widget/Button;

.field private mEditText:Landroid/widget/EditText;

.field private mSaveButton:Landroid/widget/Button;

.field private mToast:Landroid/widget/Toast;

.field private mView:Landroid/view/View;

.field private scroll:Landroid/widget/ScrollView;

.field textWatcherInput:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->checkValue:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->mToast:Landroid/widget/Toast;

    .line 237
    new-instance v0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$4;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$4;-><init>(Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->textWatcherInput:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->showMaxCharExceededToast()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->checkValue:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;)Landroid/widget/ScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->scroll:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 99
    .local v2, res:Landroid/content/ContentResolver;
    const-string v3, "lock_screen_owner_info"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, info:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->mView:Landroid/view/View;

    const v4, 0x7f0a004f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->scroll:Landroid/widget/ScrollView;

    .line 106
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->mView:Landroid/view/View;

    const v4, 0x7f0a01c6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    .line 109
    const v3, 0x7f0a006d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->mCancelButton:Landroid/widget/Button;

    .line 110
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v3, 0x7f0a01c7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->mSaveButton:Landroid/widget/Button;

    .line 112
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    if-eqz v1, :cond_0

    .line 115
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->selectAll()V

    .line 141
    :cond_0
    new-instance v0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$2;

    const/16 v3, 0x32

    invoke-direct {v0, p0, v3}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$2;-><init>(Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;I)V

    .line 179
    .local v0, filterLength:Landroid/text/InputFilter$LengthFilter;
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 182
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->textWatcherInput:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 184
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    new-instance v4, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$3;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$3;-><init>(Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 200
    return-void
.end method

.method private showMaxCharExceededToast()V
    .locals 3

    .prologue
    const v2, 0x7f080cbf

    .line 263
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->mToast:Landroid/widget/Toast;

    .line 270
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 271
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 217
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 219
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 234
    :goto_0
    return-void

    .line 222
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->saveToDb()V

    .line 223
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0802cc

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 224
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->finish()V

    goto :goto_0

    .line 228
    :sswitch_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->dbValue:I

    .line 229
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->finish()V

    goto :goto_0

    .line 220
    :sswitch_data_0
    .sparse-switch
        0x7f0a006d -> :sswitch_1
        0x7f0a01c7 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080b03

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    :cond_0
    :goto_0
    const v0, 0x7f0400d4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->mView:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->initView(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->mView:Landroid/view/View;

    return-object v0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08089c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 204
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 206
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 89
    .local v0, mHandler:Landroid/os/Handler;
    new-instance v1, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$1;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$1;-><init>(Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    return-void
.end method

.method saveToDb()V
    .locals 3

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 210
    .local v1, res:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, info:Ljava/lang/String;
    const-string v2, "lock_screen_owner_info"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 212
    return-void
.end method
