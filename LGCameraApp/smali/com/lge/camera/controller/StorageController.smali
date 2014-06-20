.class public abstract Lcom/lge/camera/controller/StorageController;
.super Lcom/lge/camera/controller/Controller;
.source "StorageController.java"


# static fields
.field private static mMntSvc:Landroid/os/storage/IMountService;


# instance fields
.field public EXTERNAL_STORAGE_DIR:Ljava/lang/String;

.field public INTERNAL_STORAGE_DIR:Ljava/lang/String;

.field protected mCurrentStorage:I

.field private mCurrentStorageDCFDirectory:Ljava/lang/String;

.field private mCurrentStorageDirectory:Ljava/lang/String;

.field private mCurrentStorageState:Ljava/lang/String;

.field private mMediaScanning:Z

.field protected mStorageState:I

.field private mToast:Landroid/widget/Toast;

.field private messageId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/camera/controller/StorageController;->mMntSvc:Landroid/os/storage/IMountService;

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 4
    .parameter "function"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 33
    iput v2, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorage:I

    .line 35
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/StorageController;->GetStoragePath(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    .line 36
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/StorageController;->GetStoragePath(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->INTERNAL_STORAGE_DIR:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/camera/properties/ProjectVariables;->NORMAL_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDirectory:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->INTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/camera/properties/ProjectVariables;->DCF_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDCFDirectory:Ljava/lang/String;

    .line 40
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageState:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mToast:Landroid/widget/Toast;

    .line 217
    iput-boolean v2, p0, Lcom/lge/camera/controller/StorageController;->mMediaScanning:Z

    .line 529
    iput v3, p0, Lcom/lge/camera/controller/StorageController;->messageId:I

    .line 46
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isExternalMemoryOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/StorageController;->setCurrentStorage(I)V

    .line 49
    :cond_0
    return-void
.end method

.method private getExternalAddtionalStorageState()Ljava/lang/String;
    .locals 4

    .prologue
    .line 383
    const-string v1, "removed"

    .line 386
    .local v1, state:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/lge/camera/controller/StorageController;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v2, :cond_0

    .line 387
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    sput-object v2, Lcom/lge/camera/controller/StorageController;->mMntSvc:Landroid/os/storage/IMountService;

    .line 390
    :cond_0
    sget-object v2, Lcom/lge/camera/controller/StorageController;->mMntSvc:Landroid/os/storage/IMountService;

    if-eqz v2, :cond_1

    .line 391
    sget-object v2, Lcom/lge/camera/controller/StorageController;->mMntSvc:Landroid/os/storage/IMountService;

    iget-object v3, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 398
    :cond_1
    :goto_0
    return-object v1

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, rex:Ljava/lang/Exception;
    const-string v1, "removed"

    .line 395
    const-string v2, "CameraApp"

    const-string v3, "Exception : "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getMessageType1(II)Ljava/lang/String;
    .locals 2
    .parameter "currentStorage"
    .parameter "anotherStorage"

    .prologue
    .line 575
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 576
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->getEmmcName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "internal memory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0b0063

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 582
    :goto_0
    return-object v0

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0b0064

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0b0065

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getMessageType2(II)Ljava/lang/String;
    .locals 2
    .parameter "currentStorage"
    .parameter "anotherStorage"

    .prologue
    .line 587
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 588
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->getEmmcName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "internal memory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0b0066

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 597
    :goto_0
    return-object v0

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0b0067

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 594
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->getEmmcName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "internal memory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 595
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0b0068

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 597
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0b0069

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showStorageHintForAvailable()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 136
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->storageToasthide(Z)V

    .line 137
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isStorageToastShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorage:I

    packed-switch v0, :pswitch_data_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 140
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0b006e

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3, v4}, Lcom/lge/camera/ControllerFunction;->storageToastShow(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 144
    :pswitch_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0b006d

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3, v4}, Lcom/lge/camera/ControllerFunction;->storageToastShow(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showStorageHintForFull()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 161
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->storageToasthide(Z)V

    .line 162
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->deleteProgressDialog()V

    .line 164
    invoke-static {}, Lcom/lge/camera/util/Common;->isSmartCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0055

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mToast:Landroid/widget/Toast;

    .line 172
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mToast:Landroid/widget/Toast;

    const/16 v1, 0x31

    const v2, 0x7f0a0019

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/StorageController;->getPixelFromDimens(I)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 175
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 181
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    .line 182
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->showDialogPopup(I)V

    goto :goto_0
.end method

.method private showStorageHintForNotFound(I)V
    .locals 5
    .parameter "oldStorageState"

    .prologue
    const/16 v4, 0x11

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 186
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isStorageToastShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->storageToasthide(Z)V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090148

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 197
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isStorageToastShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 198
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 200
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getDialogID()I

    move-result v0

    if-eq v0, v4, :cond_2

    .line 201
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCurrentDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCurrentDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->showDialogPopup(I)V

    .line 215
    :cond_2
    :goto_1
    return-void

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    goto :goto_0

    .line 208
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/StorageController;->isStorageReadOnly(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 209
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0b023b

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3, v3}, Lcom/lge/camera/ControllerFunction;->storageToastShow(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 212
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0b0047

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3, v3}, Lcom/lge/camera/ControllerFunction;->storageToastShow(Ljava/lang/String;ZZ)V

    goto :goto_1
.end method

.method private showStorageHintForScanning()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->storageToasthide(Z)V

    .line 155
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isStorageToastShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0b0049

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3, v3}, Lcom/lge/camera/ControllerFunction;->storageToastShow(Ljava/lang/String;ZZ)V

    .line 158
    :cond_0
    return-void
.end method


# virtual methods
.method public GetStoragePath(Z)Ljava/lang/String;
    .locals 7
    .parameter "storagetype"

    .prologue
    const/4 v1, 0x0

    .line 497
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->checkMediator()Z

    move-result v4

    if-nez v4, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-object v1

    .line 500
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "storage"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 501
    .local v2, mStorage:Landroid/os/storage/StorageManager;
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 503
    .local v3, volumeList:[Landroid/os/storage/StorageVolume;
    if-eqz v3, :cond_4

    .line 504
    array-length v4, v3

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    .line 505
    const-string v1, "/mnt/sdcard"

    goto :goto_0

    .line 508
    :cond_2
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, mPath:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isAllMemorySupported()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 514
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 515
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Storage info : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " R :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    if-ne v4, p1, :cond_3

    .line 517
    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 518
    goto :goto_0

    .line 514
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 525
    .end local v0           #i:I
    .end local v1           #mPath:Ljava/lang/String;
    :cond_4
    const-string v4, "CameraApp"

    const-string v5, "Storage Path is Null"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkFsWritable()Z
    .locals 5

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 268
    .local v1, storageRoot:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, directory:Ljava/io/File;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkFsWritable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    return v2
.end method

.method public checkFsWritable(I)Z
    .locals 5
    .parameter "storageType"

    .prologue
    .line 274
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/StorageController;->getTargetStorageDirectory(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 275
    .local v1, storageRoot:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, directory:Ljava/io/File;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkFsWritable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " storageType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    return v2
.end method

.method public checkStorage()V
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.UpdateThumbnailButton"

    const-wide/16 v2, 0xc8

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 60
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/StorageController;->checkStorage(Z)V

    .line 61
    return-void
.end method

.method public abstract checkStorage(Z)V
.end method

.method public getAvailablePictureCount()J
    .locals 2

    .prologue
    .line 51
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getBucketId()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 434
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseDCFRule()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDCFDirectory:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDCFDirectory:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, bucket:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 437
    .end local v0           #bucket:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDirectory:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDirectory:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #bucket:Ljava/lang/String;
    goto :goto_0
.end method

.method public getBucketId(I)Ljava/lang/String;
    .locals 6
    .parameter "storageType"

    .prologue
    const/4 v5, 0x0

    .line 446
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isExternalMemoryOnly()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 447
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, storageDirectory:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, storageDcfDirectory:Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseDCFRule()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 462
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, bucket:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 451
    .end local v0           #bucket:Ljava/lang/String;
    .end local v1           #storageDcfDirectory:Ljava/lang/String;
    .end local v2           #storageDirectory:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 452
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/controller/StorageController;->INTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 453
    .restart local v2       #storageDirectory:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/controller/StorageController;->INTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #storageDcfDirectory:Ljava/lang/String;
    goto :goto_0

    .line 456
    .end local v1           #storageDcfDirectory:Ljava/lang/String;
    .end local v2           #storageDirectory:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 457
    .restart local v2       #storageDirectory:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #storageDcfDirectory:Ljava/lang/String;
    goto :goto_0

    .line 464
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #bucket:Ljava/lang/String;
    goto :goto_1
.end method

.method public getCurrentStorage()I
    .locals 1

    .prologue
    .line 373
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isExternalMemoryOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    const/4 v0, 0x0

    .line 377
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorage:I

    goto :goto_0
.end method

.method public getCurrentStorageDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 328
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isAllMemorySupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseDCFRule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDCFDirectory:Ljava/lang/String;

    .line 337
    :goto_0
    return-object v0

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDirectory:Ljava/lang/String;

    goto :goto_0

    .line 336
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDirectory:Ljava/lang/String;

    .line 337
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDirectory:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCurrentStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isAllMemorySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageState:Ljava/lang/String;

    .line 428
    :goto_0
    return-object v0

    .line 427
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageState:Ljava/lang/String;

    .line 428
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageState:Ljava/lang/String;

    goto :goto_0
.end method

.method public getExternalStorageDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    return-object v0
.end method

.method public getFreeSpace()J
    .locals 2

    .prologue
    .line 228
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/StorageController;->getFreeSpace(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFreeSpace(I)J
    .locals 10
    .parameter "storageType"

    .prologue
    .line 232
    const-wide/16 v2, 0x0

    .line 235
    .local v2, freeSpace:J
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/StorageController;->getTargetStorageDirectory(I)Ljava/lang/String;

    move-result-object v5

    .line 236
    .local v5, strStorageDirectory:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 239
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 241
    :cond_0
    const/4 v1, 0x0

    .line 243
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 244
    .local v4, stat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v8, v8

    mul-long v2, v6, v8

    .line 245
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorage()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isInternalMemoryOnly()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    .line 246
    :cond_1
    const-wide/32 v6, 0x1400000

    sub-long/2addr v2, v6

    .line 247
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    const-wide/16 v2, 0x0

    :cond_2
    move-wide v6, v2

    .line 252
    .end local v1           #file:Ljava/io/File;
    .end local v4           #stat:Landroid/os/StatFs;
    .end local v5           #strStorageDirectory:Ljava/lang/String;
    :goto_0
    return-wide v6

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " error :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-wide/16 v6, -0x2

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 534
    const-string v3, "CameraApp"

    const-string v4, "getMessage"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isAllMemorySupported()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 537
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorage()I

    move-result v2

    .line 538
    .local v2, currentStorage:I
    const/4 v0, 0x1

    .line 539
    .local v0, anotherStorage:I
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMessage currentStorage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    if-ne v2, v6, :cond_0

    .line 542
    const/4 v0, 0x0

    .line 548
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/StorageController;->getStorageState(I)Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, anotherStorageStat:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/StorageController;->isStorageReady(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 550
    iput v6, p0, Lcom/lge/camera/controller/StorageController;->messageId:I

    .line 551
    invoke-direct {p0, v2, v0}, Lcom/lge/camera/controller/StorageController;->getMessageType1(II)Ljava/lang/String;

    move-result-object v3

    .line 570
    .end local v0           #anotherStorage:I
    .end local v1           #anotherStorageStat:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 544
    .restart local v0       #anotherStorage:I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 556
    .restart local v1       #anotherStorageStat:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/StorageController;->isEnoughWorkingStorage(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 557
    const/4 v3, 0x3

    iput v3, p0, Lcom/lge/camera/controller/StorageController;->messageId:I

    .line 558
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0b0061

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 563
    :cond_2
    const/4 v3, 0x2

    iput v3, p0, Lcom/lge/camera/controller/StorageController;->messageId:I

    .line 564
    invoke-direct {p0, v2, v0}, Lcom/lge/camera/controller/StorageController;->getMessageType2(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 568
    .end local v0           #anotherStorage:I
    .end local v1           #anotherStorageStat:Ljava/lang/String;
    .end local v2           #currentStorage:I
    :cond_3
    iput v6, p0, Lcom/lge/camera/controller/StorageController;->messageId:I

    .line 569
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorage()I

    move-result v2

    .line 570
    .restart local v2       #currentStorage:I
    const/4 v3, -0x1

    invoke-direct {p0, v2, v3}, Lcom/lge/camera/controller/StorageController;->getMessageType1(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->messageId:I

    return v0
.end method

.method public getStorageState()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    return v0
.end method

.method public getStorageState(I)Ljava/lang/String;
    .locals 1
    .parameter "storageType"

    .prologue
    .line 68
    packed-switch p1, :pswitch_data_0

    .line 77
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageState()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 70
    :pswitch_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :pswitch_1
    invoke-direct {p0}, Lcom/lge/camera/controller/StorageController;->getExternalAddtionalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTargetStorageDirectory(I)Ljava/lang/String;
    .locals 2
    .parameter "storageType"

    .prologue
    .line 354
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isAllMemorySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    packed-switch p1, :pswitch_data_0

    .line 364
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v0

    .line 368
    :goto_0
    return-object v0

    .line 357
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->INTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 360
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTimeMachineStorageDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 342
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isAllMemorySupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->INTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/camera/properties/ProjectVariables;->TIMEMACHINE_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    :goto_0
    return-object v0

    .line 346
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/camera/properties/ProjectVariables;->TIMEMACHINE_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 349
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/camera/properties/ProjectVariables;->TIMEMACHINE_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract initController()V
.end method

.method public abstract isEnoughWorkingStorage(I)Z
.end method

.method public isExternalStorageRemoved()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 285
    const-string v0, "removed"

    .line 287
    .local v0, state:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isAllMemorySupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/lge/camera/controller/StorageController;->getExternalAddtionalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 294
    :goto_0
    const-string v3, "CameraApp"

    const-string v4, "SD card state:%s"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v3, "mounted"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 300
    :goto_1
    return v1

    .line 291
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 300
    goto :goto_1
.end method

.method public isMediaScanning()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/lge/camera/controller/StorageController;->mMediaScanning:Z

    return v0
.end method

.method public isStorageAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/StorageController;->checkStorage(Z)V

    .line 306
    iget v1, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    if-nez v1, :cond_0

    .line 307
    const/4 v0, 0x1

    .line 309
    :cond_0
    return v0
.end method

.method public isStorageFull()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 313
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/StorageController;->checkStorage(Z)V

    .line 314
    iget v1, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 315
    const/4 v0, 0x1

    .line 317
    :cond_0
    return v0
.end method

.method public isStorageFull(I)Z
    .locals 2
    .parameter "storageType"

    .prologue
    .line 321
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 322
    const/4 v0, 0x1

    .line 324
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStorageReadOnly(Ljava/lang/String;)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 471
    const-string v0, "mounted_ro"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mounted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->checkFsWritable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStorageReady(Ljava/lang/String;)Z
    .locals 1
    .parameter "storageState"

    .prologue
    .line 82
    const-string v0, "bad_removal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "removed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "checking"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useMediaScanning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "unmounted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "shared"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "unmountable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mounted_ro"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "eject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    :cond_1
    const/4 v0, 0x0

    .line 92
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCurrentStorage(I)V
    .locals 2
    .parameter "storageType"

    .prologue
    .line 402
    iput p1, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorage:I

    .line 403
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isAllMemorySupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->INTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDirectory:Ljava/lang/String;

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->INTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDCFDirectory:Ljava/lang/String;

    .line 407
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageState:Ljava/lang/String;

    .line 421
    :goto_0
    return-void

    .line 410
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDirectory:Ljava/lang/String;

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDCFDirectory:Ljava/lang/String;

    .line 412
    invoke-direct {p0}, Lcom/lge/camera/controller/StorageController;->getExternalAddtionalStorageState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageState:Ljava/lang/String;

    goto :goto_0

    .line 417
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDirectory:Ljava/lang/String;

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDCFDirectory:Ljava/lang/String;

    .line 419
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageState:Ljava/lang/String;

    goto :goto_0
.end method

.method public setMediaScanning(Z)V
    .locals 0
    .parameter "scanning"

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/lge/camera/controller/StorageController;->mMediaScanning:Z

    .line 225
    return-void
.end method

.method public setMenuEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_storage"

    invoke-interface {v0, v1, p1}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Z)V

    .line 282
    return-void
.end method

.method public setStorageInitForFileNamingHelper()Ljava/lang/String;
    .locals 4

    .prologue
    .line 476
    const/4 v0, 0x0

    .line 477
    .local v0, mStorage:I
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isAllMemorySupported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->isExternalStorageRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    const/4 v0, 0x1

    .line 487
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/StorageController;->setCurrentStorage(I)V

    .line 488
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 480
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->getEmmcName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_storage"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isInternalMemoryOnly()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 482
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 484
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showStorageHint(I)V
    .locals 5
    .parameter "storageState"

    .prologue
    const/4 v4, 0x1

    .line 97
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**showStorageHint"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    .line 100
    .local v0, oldStorageState:I
    iput p1, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    .line 101
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCurrentDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getDialogID()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 103
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCurrentDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 106
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 129
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0b006e

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->storageToastShow(Ljava/lang/String;ZZ)V

    .line 130
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->setMainButtonEnable()V

    .line 133
    :goto_0
    return-void

    .line 108
    :pswitch_0
    const-string v1, "CameraApp"

    const-string v2, "***** storage not found"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, v0}, Lcom/lge/camera/controller/StorageController;->showStorageHintForNotFound(I)V

    goto :goto_0

    .line 114
    :pswitch_1
    const-string v1, "CameraApp"

    const-string v2, "***** storage full"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/lge/camera/controller/StorageController;->showStorageHintForFull()V

    goto :goto_0

    .line 119
    :pswitch_2
    const-string v1, "CameraApp"

    const-string v2, "***** storage scanning"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-direct {p0}, Lcom/lge/camera/controller/StorageController;->showStorageHintForScanning()V

    goto :goto_0

    .line 124
    :pswitch_3
    const-string v1, "CameraApp"

    const-string v2, "***** storage available"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lcom/lge/camera/controller/StorageController;->showStorageHintForAvailable()V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
