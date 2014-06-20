.class public final Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;
.super Landroid/app/DialogFragment;
.source "ExceptScanListEdit.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/ExceptScanListEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExceptScanDialogFragment"
.end annotation


# instance fields
.field private currentCursorPositionEnd:I

.field private currentCursorPositionStart:I

.field private mDeviceNameEdited:Z

.field private mDeviceNameUpdated:Z

.field mDeviceNameView:Landroid/widget/EditText;

.field private mOkButton:Landroid/widget/Button;

.field private mToast:Landroid/widget/Toast;

.field final synthetic this$0:Lcom/android/lgesettings/wifi/ExceptScanListEdit;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/wifi/ExceptScanListEdit;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 364
    iput-object p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListEdit;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 348
    iput v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->currentCursorPositionStart:I

    .line 349
    iput v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->currentCursorPositionEnd:I

    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mToast:Landroid/widget/Toast;

    .line 366
    return-void
.end method

.method static synthetic access$300(Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->setDeviceName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method private createDialogView(Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .parameter "deviceName"

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 428
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040074

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 429
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0a0102

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    .line 431
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 432
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListEdit;

    iget-object v3, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    #setter for: Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mEditTextExceptScan:Landroid/widget/EditText;
    invoke-static {v2, v3}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->access$402(Lcom/android/lgesettings/wifi/ExceptScanListEdit;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 434
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->setInputFilter(Landroid/widget/EditText;)V

    .line 436
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaintFlags()I

    move-result v3

    or-int/lit8 v3, v3, 0x20

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setPaintFlags(I)V

    .line 438
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->setSingleLine()V

    .line 439
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    const v3, 0x80001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 440
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    .line 441
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 444
    :cond_0
    if-eqz p1, :cond_1

    .line 445
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->currentCursorPositionEnd:I

    .line 448
    :cond_1
    return-object v1
.end method

.method private setDeviceName(Ljava/lang/String;)V
    .locals 3
    .parameter "deviceName"

    .prologue
    .line 415
    const-string v0, "ExceptScanDialogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting device name to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListEdit;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    #setter for: Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mEditTextExceptScan:Landroid/widget/EditText;
    invoke-static {v0, v1}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->access$402(Lcom/android/lgesettings/wifi/ExceptScanListEdit;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 417
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .parameter "s"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 486
    iget-boolean v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mDeviceNameUpdated:Z

    if-eqz v2, :cond_1

    .line 487
    iput-boolean v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mDeviceNameUpdated:Z

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mDeviceNameEdited:Z

    .line 490
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mOkButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 491
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mOkButton:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 498
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 370
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListEdit;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mOriginalSSID:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->access$200(Lcom/android/lgesettings/wifi/ExceptScanListEdit;)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, deviceName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListEdit;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f081605

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->createDialogView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0804ac

    new-instance v4, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$2;-><init>(Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$1;-><init>(Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    #setter for: Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->access$002(Lcom/android/lgesettings/wifi/ExceptScanListEdit;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 397
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListEdit;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->access$000(Lcom/android/lgesettings/wifi/ExceptScanListEdit;)Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$3;-><init>(Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 408
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListEdit;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->access$000(Lcom/android/lgesettings/wifi/ExceptScanListEdit;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 411
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListEdit;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->access$000(Lcom/android/lgesettings/wifi/ExceptScanListEdit;)Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 453
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 454
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListEdit;

    #setter for: Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->access$002(Lcom/android/lgesettings/wifi/ExceptScanListEdit;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 455
    iput-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    .line 456
    iput-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mOkButton:Landroid/widget/Button;

    .line 458
    iput v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->currentCursorPositionStart:I

    .line 459
    iput v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->currentCursorPositionEnd:I

    .line 460
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 475
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 477
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->currentCursorPositionStart:I

    .line 478
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->currentCursorPositionEnd:I

    .line 479
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 464
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 465
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mOkButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListEdit;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->access$000(Lcom/android/lgesettings/wifi/ExceptScanListEdit;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mOkButton:Landroid/widget/Button;

    .line 467
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mOkButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    iget v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->currentCursorPositionStart:I

    iget v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->currentCursorPositionEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 471
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 421
    const-string v0, "device_name"

    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v0, "device_name_edited"

    iget-boolean v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mDeviceNameEdited:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 423
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 502
    return-void
.end method

.method public setInputFilter(Landroid/widget/EditText;)V
    .locals 3
    .parameter "editText"

    .prologue
    .line 506
    new-instance v0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$4;

    const/16 v1, 0x20

    invoke-direct {v0, p0, v1, p1}, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$4;-><init>(Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;ILandroid/widget/EditText;)V

    .line 535
    .local v0, filterLength:Landroid/text/InputFilter$LengthFilter;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 536
    return-void
.end method
