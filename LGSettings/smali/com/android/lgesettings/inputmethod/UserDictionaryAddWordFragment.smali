.class public Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;
.super Landroid/app/Fragment;
.source "UserDictionaryAddWordFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;,
        Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;,
        Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$UserDictionaryButtonClickListner;
    }
.end annotation


# instance fields
.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mButtCancel:Landroid/widget/Button;

.field private mButtSave:Landroid/widget/Button;

.field private mButtonListner:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$UserDictionaryButtonClickListner;

.field private mContents:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;

.field private mListener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;

.field private mRootView:Landroid/view/View;

.field private mShortcutEditText:Landroid/widget/EditText;

.field private mShortcutListener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;

.field private mWordEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 770
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mWordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mShortcutEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private updateSpinner()V
    .locals 5

    .prologue
    .line 444
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->getLocalesList(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v2

    .line 446
    .local v2, localesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;>;"
    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f0a0358

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 448
    .local v1, localeSpinner:Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f040185

    invoke-direct {v0, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 450
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;>;"
    const v3, 0x7f040184

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 451
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 452
    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 453
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 201
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->setHasOptionsMenu(Z)V

    .line 202
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 509
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 510
    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 512
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 515
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const/4 v5, 0x0

    .line 207
    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 208
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 210
    const-string v4, "input_method"

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 212
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 213
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 215
    invoke-static {v1}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 216
    const/high16 v4, 0x7f03

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setIcon(I)V

    .line 224
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 225
    const v4, 0x7f04017c

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    .line 231
    :cond_1
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    if-nez v4, :cond_3

    move-object v4, v5

    .line 319
    :goto_1
    return-object v4

    .line 218
    .restart local v0       #actionBar:Landroid/app/ActionBar;
    :cond_2
    const v4, 0x7f02033e

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setIcon(I)V

    goto :goto_0

    .line 235
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_3
    new-instance v2, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;

    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    invoke-direct {v2, v4}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;-><init>(Landroid/view/View;)V

    .line 238
    .local v2, listener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;
    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mListener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;

    .line 239
    new-instance v3, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;

    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    invoke-direct {v3, v4}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;-><init>(Landroid/view/View;)V

    .line 241
    .local v3, shortListener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;
    iput-object v3, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mShortcutListener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;

    .line 244
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f0a0351

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mWordEditText:Landroid/widget/EditText;

    .line 246
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f0a0356

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mShortcutEditText:Landroid/widget/EditText;

    .line 249
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mListener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mWordEditText:Landroid/widget/EditText;

    if-eqz v4, :cond_4

    .line 250
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mWordEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mListener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 253
    :cond_4
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mShortcutListener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mShortcutEditText:Landroid/widget/EditText;

    if-eqz v4, :cond_5

    .line 254
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mShortcutEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mShortcutListener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 257
    :cond_5
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f0a0057

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mButtSave:Landroid/widget/Button;

    .line 258
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f0a0056

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mButtCancel:Landroid/widget/Button;

    .line 259
    new-instance v4, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$UserDictionaryButtonClickListner;

    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$UserDictionaryButtonClickListner;-><init>(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mButtonListner:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$UserDictionaryButtonClickListner;

    .line 260
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mButtonListner:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$UserDictionaryButtonClickListner;

    if-eqz v4, :cond_7

    .line 261
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mButtSave:Landroid/widget/Button;

    if-eqz v4, :cond_6

    .line 262
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mButtSave:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mButtonListner:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$UserDictionaryButtonClickListner;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    :cond_6
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mButtCancel:Landroid/widget/Button;

    if-eqz v4, :cond_7

    .line 265
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mButtCancel:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mButtonListner:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$UserDictionaryButtonClickListner;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    :cond_7
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;

    if-nez v4, :cond_8

    .line 316
    new-instance v4, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;

    iget-object v5, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;

    .line 319
    :cond_8
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 326
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 328
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 329
    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mWordEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mListener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mWordEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mListener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 335
    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mWordEditText:Landroid/widget/EditText;

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mListener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mListener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;

    invoke-virtual {v0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;->destroy()V

    .line 339
    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mListener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mShortcutEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mListener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryEventListener;

    if-eqz v0, :cond_3

    .line 342
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mShortcutEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mShortcutListener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 343
    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mShortcutEditText:Landroid/widget/EditText;

    .line 345
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mShortcutListener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;

    if-eqz v0, :cond_4

    .line 346
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mShortcutListener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;

    invoke-virtual {v0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;->destroy()V

    .line 347
    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mShortcutListener:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$AddToDictionaryShortcutEventListener;

    .line 349
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 350
    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    .line 352
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;

    if-eqz v0, :cond_6

    .line 353
    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;

    .line 355
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mButtonListner:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$UserDictionaryButtonClickListner;

    if-eqz v0, :cond_7

    .line 356
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mButtonListner:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$UserDictionaryButtonClickListner;

    invoke-virtual {v0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$UserDictionaryButtonClickListner;->clear()V

    .line 357
    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mButtonListner:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment$UserDictionaryButtonClickListner;

    .line 359
    :cond_7
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mButtSave:Landroid/widget/Button;

    if-eqz v0, :cond_8

    .line 360
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mButtSave:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mButtSave:Landroid/widget/Button;

    .line 363
    :cond_8
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mButtCancel:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 364
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mButtCancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iput-object v2, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mButtCancel:Landroid/widget/Button;

    .line 368
    :cond_9
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 472
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    .line 473
    .local v2, locale:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;
    invoke-virtual {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->isMoreLanguages()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 474
    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 475
    .local v3, preferenceActivity:Landroid/preference/PreferenceActivity;
    new-instance v4, Lcom/android/lgesettings/inputmethod/UserDictionaryLocalePicker;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryLocalePicker;-><init>(Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/preference/PreferenceActivity;->startPreferenceFragment(Landroid/app/Fragment;Z)V

    .line 477
    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 478
    .local v1, immActivity:Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 479
    const-string v4, "input_method"

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 481
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 490
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #immActivity:Landroid/app/Activity;
    .end local v3           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    iget-object v4, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->getLocaleString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 2
    .parameter "locale"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 504
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 495
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 496
    .local v0, args:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;

    const-string v2, "locale"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    .line 497
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mWordEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 460
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 467
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 429
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 431
    invoke-virtual {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 432
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 433
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 440
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/inputmethod/UserDictionaryAddWordFragment;->updateSpinner()V

    .line 441
    return-void
.end method
