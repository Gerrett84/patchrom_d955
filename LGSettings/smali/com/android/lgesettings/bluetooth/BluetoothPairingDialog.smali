.class public final Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothPairingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mOkButton:Landroid/widget/Button;

.field private mPairingKey:Ljava/lang/String;

.field private mPairingView:Landroid/widget/EditText;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mType:I

.field private mUserConfirmed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 89
    new-instance v0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog$1;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mUserConfirmed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method private createConfirmationDialog(Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 2
    .parameter "deviceManager"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 373
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f081531

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 374
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->createView(Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 375
    const v1, 0x7f08019d

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 376
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 377
    const v1, 0x7f08019e

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 378
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 379
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 380
    return-void
.end method

.method private createConsentDialog(Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 2
    .parameter "deviceManager"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 387
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f081531

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 388
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->createView(Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 389
    const v1, 0x7f08019d

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 390
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 391
    const v1, 0x7f08019e

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 392
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 393
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 394
    return-void
.end method

.method private createDisplayPasskeyOrPinDialog(Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 4
    .parameter "deviceManager"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 402
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x7f081531

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 403
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->createView(Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 404
    const/high16 v2, 0x104

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 405
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 406
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 410
    iget v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 411
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 413
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 414
    .local v1, pinBytes:[B
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0
.end method

.method private createPinEntryView(Ljava/lang/String;)Landroid/view/View;
    .locals 13
    .parameter "deviceName"

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 274
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v10, 0x7f040022

    invoke-virtual {v8, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 275
    .local v7, view:Landroid/view/View;
    const v8, 0x7f0a0031

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 276
    .local v5, messageView:Landroid/widget/TextView;
    const v8, 0x7f0a0047

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 277
    .local v6, messageView2:Landroid/widget/TextView;
    const v8, 0x7f0a0046

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 278
    .local v0, alphanumericPin:Landroid/widget/CheckBox;
    const v8, 0x7f0a0044

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    .line 279
    iget-object v8, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 280
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 282
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget v8, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v8, :pswitch_data_0

    .line 305
    const-string v8, "BluetoothPairingDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incorrect pairing type for createPinEntryView: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v9

    .line 326
    .end local v7           #view:Landroid/view/View;
    :goto_0
    return-object v7

    .line 290
    .restart local v7       #view:Landroid/view/View;
    :pswitch_0
    const v2, 0x7f080194

    .line 291
    .local v2, messageId1:I
    const v3, 0x7f080198

    .line 293
    .local v3, messageId2:I
    const/16 v1, 0x10

    .line 312
    .local v1, maxLength:I
    :goto_1
    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {p0, v2, v8}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, messageText:Ljava/lang/String;
    const/4 v8, 0x5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 317
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    .line 321
    iget-object v8, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/16 v9, 0x12

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 323
    iget-object v8, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    new-array v9, v12, [Landroid/text/InputFilter;

    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v10, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v10, v9, v11

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 297
    .end local v1           #maxLength:I
    .end local v2           #messageId1:I
    .end local v3           #messageId2:I
    .end local v4           #messageText:Ljava/lang/String;
    :pswitch_1
    const v2, 0x7f080195

    .line 298
    .restart local v2       #messageId1:I
    const v3, 0x7f080199

    .line 300
    .restart local v3       #messageId2:I
    const/4 v1, 0x6

    .line 301
    .restart local v1       #maxLength:I
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createUserEntryDialog(Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 3
    .parameter "deviceManager"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 253
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f081531

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 254
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v1}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->createPinEntryView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 255
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 256
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 257
    const/high16 v1, 0x104

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 258
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 259
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 262
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 266
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    .line 267
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    if-nez v1, :cond_0

    .line 271
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private createView(Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;)Landroid/view/View;
    .locals 10
    .parameter "deviceManager"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 330
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040021

    invoke-virtual {v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 331
    .local v3, view:Landroid/view/View;
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v5}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, name:Ljava/lang/String;
    const v5, 0x7f0a0031

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 337
    .local v1, messageView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 340
    iget v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v5, :pswitch_data_0

    .line 358
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "Incorrect pairing type received, not creating view"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 365
    .end local v3           #view:Landroid/view/View;
    :goto_0
    return-object v3

    .line 342
    .restart local v3       #view:Landroid/view/View;
    :pswitch_0
    const v4, 0x7f08019a

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v7

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, messageText:Ljava/lang/String;
    :goto_1
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 364
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 348
    .end local v0           #messageText:Ljava/lang/String;
    :pswitch_1
    const v4, 0x7f08019b

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .restart local v0       #messageText:Ljava/lang/String;
    goto :goto_1

    .line 353
    .end local v0           #messageText:Ljava/lang/String;
    :pswitch_2
    const v4, 0x7f08019c

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v7

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .restart local v0       #messageText:Ljava/lang/String;
    goto :goto_1

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onCancel()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 497
    iget-boolean v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mUserConfirmed:Z

    if-ne v0, v1, :cond_0

    .line 506
    :goto_0
    return-void

    .line 500
    :cond_0
    iput-boolean v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mUserConfirmed:Z

    .line 503
    const-string v0, "service.btui.gap.pairByLocal"

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->BtUiPropertySet(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->cancelPairingUserInput()Z

    goto :goto_0
.end method

.method private onPair(Ljava/lang/String;)V
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    .line 457
    iget-boolean v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mUserConfirmed:Z

    if-ne v2, v3, :cond_1

    .line 493
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 460
    :cond_1
    iput-boolean v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mUserConfirmed:Z

    .line 462
    iget v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 491
    const-string v2, "BluetoothPairingDialog"

    const-string v3, "Incorrect pairing type received"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 464
    :pswitch_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 465
    .local v1, pinBytes:[B
    if-eqz v1, :cond_0

    .line 468
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0

    .line 472
    .end local v1           #pinBytes:[B
    :pswitch_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 473
    .local v0, passkey:I
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothDevice;->setPasskey(I)Z

    goto :goto_0

    .line 478
    .end local v0           #passkey:I
    :pswitch_3
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto :goto_0

    .line 487
    :pswitch_4
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->setRemoteOutOfBandData()Z

    goto :goto_0

    .line 462
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 451
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 453
    :cond_0
    return-void

    .line 451
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 534
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 542
    if-eqz p2, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 553
    :goto_0
    return-void

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 516
    packed-switch p2, :pswitch_data_0

    .line 527
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->onCancel()V

    .line 530
    :goto_0
    return-void

    .line 518
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->onPair(Ljava/lang/String;)V

    goto :goto_0

    .line 521
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->onPair(Ljava/lang/String;)V

    goto :goto_0

    .line 516
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 567
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, -0x8000

    .line 117
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 120
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 122
    :cond_0
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "Error: this activity may be started only with intent android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->finish()V

    .line 206
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-static {p0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    .line 129
    .local v2, manager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;
    if-nez v2, :cond_2

    .line 130
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "Error: BluetoothAdapter not supported by system"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->finish()V

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {v2}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    .line 136
    .local v0, deviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    iput-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 137
    const-string v5, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mType:I

    .line 139
    iget v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v5, :pswitch_data_0

    .line 197
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "Incorrect pairing type received, not showing any dialog"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_1
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 205
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 142
    :pswitch_0
    iget v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mType:I

    if-nez v5, :cond_3

    .line 143
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "[BTUI] [1] PAIRING_VARIANT_PIN"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->createUserEntryDialog(Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;)V

    goto :goto_1

    .line 146
    :cond_3
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "[BTUI] [2] PAIRING_VARIANT_PASSKEY"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 152
    :pswitch_1
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "[BTUI] [3] PAIRING_VARIANT_PASSKEY_CONFIRMATION"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v5, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 155
    .local v4, passkey:I
    if-ne v4, v7, :cond_4

    .line 156
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "Invalid Confirmation Passkey received, not showing any dialog"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    :cond_4
    const-string v5, "%06d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    .line 160
    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->createConfirmationDialog(Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;)V

    goto :goto_1

    .line 165
    .end local v4           #passkey:I
    :pswitch_2
    iget v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    .line 166
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "[BTUI] [4] PAIRING_VARIANT_CONSENT"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->createConsentDialog(Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;)V

    goto :goto_1

    .line 169
    :cond_5
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "[BTUI] [5] PAIRING_VARIANT_OOB_CONSENT"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 176
    :pswitch_3
    iget v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mType:I

    if-ne v5, v10, :cond_6

    .line 177
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "[BTUI] [6] PAIRING_VARIANT_DISPLAY_PASSKEY"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_4
    const-string v5, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 184
    .local v3, pairingKey:I
    if-ne v3, v7, :cond_7

    .line 185
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "Invalid Confirmation Passkey or PIN received, not showing any dialog"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 180
    .end local v3           #pairingKey:I
    :cond_6
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "[BTUI] [7] PAIRING_VARIANT_DISPLAY_PIN"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 188
    .restart local v3       #pairingKey:I
    :cond_7
    iget v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mType:I

    if-ne v5, v10, :cond_8

    .line 189
    const-string v5, "%06d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    .line 193
    :goto_5
    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->createDisplayPasskeyOrPinDialog(Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;)V

    goto/16 :goto_1

    .line 191
    :cond_8
    const-string v5, "%04d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    goto :goto_5

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->onCancel()V

    .line 423
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_0
    const-string v1, "LGBT_CNDTL_SCENARIO_VZW_BT_TUTORIAL"

    invoke-static {v1}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->isHelpAppValueONandShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    const-string v1, "BluetoothPairingDialog"

    const-string v2, "onDestroy(), call dismissPopup() for \'Confirm to pair\' "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    sget v1, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupWindowType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 440
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->dismissPopup()V

    .line 447
    :cond_0
    return-void

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothPairingDialog"

    const-string v2, "[BTUI] onDestroy() : exception handled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 509
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 510
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->onCancel()V

    .line 512
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 538
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .prologue
    .line 558
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onUserLeaveHint()V

    .line 559
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->onCancel()V

    .line 560
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->dismiss()V

    .line 561
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 9
    .parameter "hasFocus"

    .prologue
    const/4 v8, 0x3

    .line 212
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onWindowFocusChanged(Z)V

    .line 214
    const-string v5, "LGBT_CNDTL_SCENARIO_VZW_BT_TUTORIAL"

    invoke-static {v5}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 215
    const/4 v5, 0x1

    if-ne p1, v5, :cond_1

    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->isHelpAppValueONandShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 216
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "onWindowFocusChanged, hasFocus is true "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/bluetooth/BluetoothPairingDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 221
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 223
    .local v3, taskList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 224
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, topClassName:Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, baseClassName:Ljava/lang/String;
    const-string v5, "BluetoothPairingDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getClassName] base = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", top = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v5, "com.android.lgesettings.SubSettings"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.android.lgesettings.Settings$BluetoothSettingsActivity"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 232
    :cond_0
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "PopupWindow is only displayed in BluetoothSettings."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-static {p0, v8}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->showTutorialPopup(Landroid/content/Context;I)V

    .line 244
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #baseClassName:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #taskList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v4           #topClassName:Ljava/lang/String;
    :cond_1
    return-void

    .line 223
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v1       #baseClassName:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #taskList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v4       #topClassName:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
