.class public Lcom/android/lgesettings/wifi/ExceptScanListEdit;
.super Landroid/app/Activity;
.source "ExceptScanListEdit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;
    }
.end annotation


# static fields
.field private static DBG:Z

.field public static INTENT_EXTRA_CONTENT_ID:Ljava/lang/String;

.field public static INTENT_EXTRA_MATCH_CONDITION:Ljava/lang/String;

.field public static INTENT_EXTRA_SECURITY:Ljava/lang/String;

.field public static INTENT_EXTRA_SSID:Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private PROJECTION:[Ljava/lang/String;

.field private isEditmode:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContentID:I

.field private mEditTextExceptScan:Landroid/widget/EditText;

.field private mIntent:Landroid/content/Intent;

.field private mIsNewExceptSSID:Z

.field private mMatchOption:I

.field private mOriginalMatchOption:I

.field private mOriginalSSID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "ExceptScanListEdit"

    sput-object v0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->LOG_TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->DBG:Z

    .line 48
    const-string v0, "ssid"

    sput-object v0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->INTENT_EXTRA_SSID:Ljava/lang/String;

    .line 49
    const-string v0, "name"

    sput-object v0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->INTENT_EXTRA_SECURITY:Ljava/lang/String;

    .line 50
    const-string v0, "match_condition"

    sput-object v0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->INTENT_EXTRA_MATCH_CONDITION:Ljava/lang/String;

    .line 51
    const-string v0, "content_id"

    sput-object v0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->INTENT_EXTRA_CONTENT_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mEditTextExceptScan:Landroid/widget/EditText;

    .line 61
    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mOriginalSSID:Ljava/lang/String;

    .line 62
    iput v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mMatchOption:I

    .line 64
    iput-boolean v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->isEditmode:Z

    .line 67
    iput v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mOriginalMatchOption:I

    .line 91
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "ssid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "security"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "match_condition"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->PROJECTION:[Ljava/lang/String;

    .line 343
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/wifi/ExceptScanListEdit;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/lgesettings/wifi/ExceptScanListEdit;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/lgesettings/wifi/ExceptScanListEdit;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/wifi/ExceptScanListEdit;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mOriginalSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/lgesettings/wifi/ExceptScanListEdit;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mEditTextExceptScan:Landroid/widget/EditText;

    return-object p1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 297
    sget-object v0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void
.end method


# virtual methods
.method protected checkSave()Z
    .locals 3

    .prologue
    .line 114
    const/4 v0, 0x1

    .line 115
    .local v0, result:Z
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mEditTextExceptScan:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, ssid:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->showDialog(I)V

    .line 119
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->restoreEditTextToOrgTextAndSelect()V

    .line 120
    const/4 v0, 0x0

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mOriginalSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 122
    iget-boolean v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->isEditmode:Z

    if-eqz v2, :cond_2

    .line 123
    const/4 v0, 0x1

    goto :goto_0

    .line 125
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->showDialog(I)V

    .line 126
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->restoreEditTextToOrgTextAndSelect()V

    .line 127
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->isExistExceptScan(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->showDialog(I)V

    .line 132
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mEditTextExceptScan:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    .line 133
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->restoreEditTextToOrgTextAndSelect()V

    .line 134
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected doSave()Z
    .locals 4

    .prologue
    .line 141
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mEditTextExceptScan:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, ssid:Ljava/lang/String;
    const-string v2, "doSave()..."

    invoke-direct {p0, v2}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->log(Ljava/lang/String;)V

    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 146
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->INTENT_EXTRA_CONTENT_ID:Ljava/lang/String;

    iget v3, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mContentID:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    sget-object v2, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->INTENT_EXTRA_SSID:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    sget-object v2, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->INTENT_EXTRA_MATCH_CONDITION:Ljava/lang/String;

    iget v3, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mMatchOption:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->setResult(ILandroid/content/Intent;)V

    .line 151
    const/4 v2, 0x1

    return v2
.end method

.method public isExistExceptScan(Ljava/lang/String;)Z
    .locals 8
    .parameter "ssid"

    .prologue
    const/4 v4, 0x0

    .line 99
    const/4 v7, 0x0

    .line 100
    .local v7, result:Z
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/wifi/ExceptScanProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ssid=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 103
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 104
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 105
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const/4 v7, 0x1

    .line 108
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_1
    return v7
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mIntent:Landroid/content/Intent;

    .line 75
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mIntent:Landroid/content/Intent;

    sget-object v1, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->INTENT_EXTRA_CONTENT_ID:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mContentID:I

    .line 76
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mIntent:Landroid/content/Intent;

    const-string v1, "isNew"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mIsNewExceptSSID:Z

    .line 77
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mIntent:Landroid/content/Intent;

    sget-object v1, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->INTENT_EXTRA_SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mOriginalSSID:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mIntent:Landroid/content/Intent;

    sget-object v1, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->INTENT_EXTRA_MATCH_CONDITION:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mMatchOption:I

    .line 79
    iget v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mMatchOption:I

    iput v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mOriginalMatchOption:I

    .line 81
    new-instance v0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;-><init>(Lcom/android/lgesettings/wifi/ExceptScanListEdit;)V

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "rename device"

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const v5, 0x7f081613

    const v4, 0x7f081612

    const v3, 0x7f081611

    const v1, 0x1010355

    const/4 v2, 0x1

    .line 233
    packed-switch p1, :pswitch_data_0

    .line 279
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 235
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 245
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 255
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/lgesettings/wifi/ExceptScanListEdit$1;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/wifi/ExceptScanListEdit$1;-><init>(Lcom/android/lgesettings/wifi/ExceptScanListEdit;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 283
    packed-switch p1, :pswitch_data_0

    .line 293
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 294
    :pswitch_0
    return-void

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected restoreEditTextToOrgTextAndSelect()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mEditTextExceptScan:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mOriginalSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mEditTextExceptScan:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 89
    return-void
.end method
