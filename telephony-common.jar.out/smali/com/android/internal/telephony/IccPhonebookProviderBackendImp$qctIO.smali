.class Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;
.super Lcom/android/internal/telephony/uicc/IUsimInfoCallback$Stub;
.source "IccPhonebookProviderBackendImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "qctIO"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;,
        Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$Result;
    }
.end annotation


# instance fields
.field private final mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer",
            "<",
            "Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;",
            ">;"
        }
    .end annotation
.end field

.field private mUsimService:Lcom/android/internal/telephony/uicc/UsimService;

.field final synthetic this$0:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 162
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->this$0:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IUsimInfoCallback$Stub;-><init>()V

    .line 203
    new-instance v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    iget-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->this$0:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;-><init>(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    .line 204
    iput-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mUsimService:Lcom/android/internal/telephony/uicc/UsimService;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;-><init>(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Landroid/content/Context;ILandroid/content/ContentValues;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 162
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->updateGroup(Landroid/content/Context;ILandroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Landroid/content/Context;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->deleteGroup(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Landroid/content/Context;I)Lcom/android/internal/telephony/uicc/LGE_PBM_Records;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->read(Landroid/content/Context;I)Lcom/android/internal/telephony/uicc/LGE_PBM_Records;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Lcom/android/internal/telephony/uicc/LGE_PBM_Records;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->newQueryEntryCursor(Lcom/android/internal/telephony/uicc/LGE_PBM_Records;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Landroid/content/Context;ILandroid/content/ContentValues;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 162
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->insert(Landroid/content/Context;ILandroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Landroid/content/Context;ILandroid/content/ContentValues;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 162
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->update(Landroid/content/Context;ILandroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Landroid/content/Context;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->delete(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Landroid/content/Context;I)Lcom/android/internal/telephony/uicc/LGE_PBM_Records;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->readGroup(Landroid/content/Context;I)Lcom/android/internal/telephony/uicc/LGE_PBM_Records;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Lcom/android/internal/telephony/uicc/LGE_PBM_Records;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->newQueryGroupCursor(Lcom/android/internal/telephony/uicc/LGE_PBM_Records;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Landroid/content/Context;Landroid/content/ContentValues;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->insertGroup(Landroid/content/Context;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method private delete(Landroid/content/Context;I)I
    .locals 4
    .parameter "context"
    .parameter "simIndex"

    .prologue
    const/4 v1, 0x0

    .line 397
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mUsimService:Lcom/android/internal/telephony/uicc/UsimService;

    if-nez v2, :cond_0

    .line 398
    new-instance v2, Lcom/android/internal/telephony/uicc/UsimService;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/uicc/UsimService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mUsimService:Lcom/android/internal/telephony/uicc/UsimService;

    .line 400
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mUsimService:Lcom/android/internal/telephony/uicc/UsimService;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/UsimService;->registerCallback(Lcom/android/internal/telephony/uicc/IUsimInfoCallback;)V

    .line 402
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->reset()V
    invoke-static {v2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1300(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;)V

    .line 403
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mUsimService:Lcom/android/internal/telephony/uicc/UsimService;

    invoke-virtual {v2, v1, p2}, Lcom/android/internal/telephony/uicc/UsimService;->PBMDeleteRecord(II)V

    .line 404
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->waitResult()Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1400(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;

    .line 405
    .local v0, result:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mUsimService:Lcom/android/internal/telephony/uicc/UsimService;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/UsimService;->unregisterCallback(Lcom/android/internal/telephony/uicc/IUsimInfoCallback;)V

    .line 407
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 408
    const-string v1, "IccPhonebookProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete result code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->mReturnCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->getIndex()I

    move-result v1

    .line 411
    :cond_1
    return v1
.end method

.method private deleteGroup(Landroid/content/Context;I)I
    .locals 4
    .parameter "context"
    .parameter "groupIndex"

    .prologue
    const/4 v1, 0x0

    .line 483
    if-gtz p2, :cond_1

    .line 484
    const-string v2, "IccPhonebookProvider"

    const-string v3, "gas_id MUST be greater than 0!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_0
    :goto_0
    return v1

    .line 487
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mUsimService:Lcom/android/internal/telephony/uicc/UsimService;

    if-nez v2, :cond_2

    .line 488
    new-instance v2, Lcom/android/internal/telephony/uicc/UsimService;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/uicc/UsimService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mUsimService:Lcom/android/internal/telephony/uicc/UsimService;

    .line 490
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mUsimService:Lcom/android/internal/telephony/uicc/UsimService;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/UsimService;->registerCallback(Lcom/android/internal/telephony/uicc/IUsimInfoCallback;)V

    .line 491
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->reset()V
    invoke-static {v2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1300(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;)V

    .line 492
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mUsimService:Lcom/android/internal/telephony/uicc/UsimService;

    const/16 v3, 0x20

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/telephony/uicc/UsimService;->PBMDeleteRecord(II)V

    .line 493
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->waitResult()Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1400(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;

    .line 494
    .local v0, result:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mUsimService:Lcom/android/internal/telephony/uicc/UsimService;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/UsimService;->unregisterCallback(Lcom/android/internal/telephony/uicc/IUsimInfoCallback;)V

    .line 496
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 497
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->getIndex()I

    move-result v1

    goto :goto_0
.end method

.method private getInt(Landroid/content/ContentValues;Ljava/lang/String;I)I
    .locals 3
    .parameter "values"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 360
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 366
    .end local p3
    :goto_0
    return p3

    .line 364
    .restart local p3
    :cond_0
    const-string v0, "IccPhonebookProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (int) column is ommitted, use default value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "values"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 372
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 377
    .end local p3
    :goto_0
    return-object p3

    .line 375
    .restart local p3
    :cond_0
    const-string v0, "IccPhonebookProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (String) column is ommitted, use defalue value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private insert(Landroid/content/Context;ILandroid/content/ContentValues;)I
    .locals 4
    .parameter "context"
    .parameter "simIndex"
    .parameter "values"

    .prologue
    .line 230
    if-gtz p2, :cond_0

    .line 231
    const-string v1, "IccPhonebookProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid sim index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v1, 0x0

    .line 237
    :goto_0
    return v1

    .line 234
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->newNativeRecordWithoutSimIndex(Landroid/content/ContentValues;)Lcom/android/internal/telephony/uicc/LGE_PBM_Records;

    move-result-object v0

    .line 235
    .local v0, records:Lcom/android/internal/telephony/uicc/LGE_PBM_Records;
    iput p2, v0, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->index:I

    .line 237
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->write(Landroid/content/Context;Lcom/android/internal/telephony/uicc/LGE_PBM_Records;)I

    move-result v1

    goto :goto_0
.end method

.method private insertGroup(Landroid/content/Context;Landroid/content/ContentValues;)I
    .locals 3
    .parameter "context"
    .parameter "values"

    .prologue
    .line 435
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->newNativeGroupRecordWithoutGroupIndex(Landroid/content/ContentValues;)Lcom/android/internal/telephony/uicc/LGE_PBM_Records;

    move-result-object v0

    .line 436
    .local v0, records:Lcom/android/internal/telephony/uicc/LGE_PBM_Records;
    iget v1, v0, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->index:I

    if-eqz v1, :cond_0

    .line 437
    const-string v1, "IccPhonebookProvider"

    const-string v2, "index MUST be 0, provided group index will be ignored"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->index:I

    .line 441
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->write(Landroid/content/Context;Lcom/android/internal/telephony/uicc/LGE_PBM_Records;)I

    move-result v1

    return v1
.end method

.method private newNativeGroupRecordWithoutGroupIndex(Landroid/content/ContentValues;)Lcom/android/internal/telephony/uicc/LGE_PBM_Records;
    .locals 3
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 447
    new-instance v0, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;-><init>()V

    .line 449
    .local v0, records:Lcom/android/internal/telephony/uicc/LGE_PBM_Records;
    const/16 v1, 0x20

    iput v1, v0, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->device:I

    .line 450
    iput v2, v0, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->sync_cnt:I

    .line 451
    iput v2, v0, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->type:I

    .line 452
    iput v2, v0, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->ad_type:I

    .line 454
    iput v2, v0, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->gas_id:I

    .line 455
    iput v2, v0, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->index:I

    .line 456
    sget-object v1, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$Group$Column;->NAME:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->getString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->name:Ljava/lang/String;

    .line 457
    iget-object v1, v0, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->name:Ljava/lang/String;

    .line 458
    :cond_0
    const-string v1, ""

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->number:Ljava/lang/String;

    .line 459
    const-string v1, ""

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->additional_number:Ljava/lang/String;

    .line 460
    const-string v1, ""

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->additional_number_a:Ljava/lang/String;

    .line 461
    const-string v1, ""

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->additional_number_b:Ljava/lang/String;

    .line 462
    const-string v1, ""

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->email_address:Ljava/lang/String;

    .line 464
    return-object v0
.end method

.method private newNativeRecordWithoutSimIndex(Landroid/content/ContentValues;)Lcom/android/internal/telephony/uicc/LGE_PBM_Records;
    .locals 11
    .parameter "values"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 243
    new-instance v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;

    invoke-direct {v5}, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;-><init>()V

    .line 245
    .local v5, records:Lcom/android/internal/telephony/uicc/LGE_PBM_Records;
    iput v8, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->device:I

    .line 246
    iput v8, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->sync_cnt:I

    .line 247
    iput v8, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->type:I

    .line 248
    iput v8, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->ad_type:I

    .line 253
    sget-object v6, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$Entry$Column;->ALPHA_TAG:Ljava/lang/String;

    const-string v7, ""

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->getString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->name:Ljava/lang/String;

    .line 254
    iget-object v6, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->name:Ljava/lang/String;

    if-nez v6, :cond_0

    const-string v6, ""

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->name:Ljava/lang/String;

    .line 256
    :cond_0
    sget-object v6, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$Entry$Column;->NUMBER:Ljava/lang/String;

    const-string v7, ""

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->getString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, number:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 259
    const-string v6, ""

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->number:Ljava/lang/String;

    .line 265
    :goto_0
    sget-object v6, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$Entry$Column;->ANRS:Ljava/lang/String;

    const-string v7, ""

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->getString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "~"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, anrs:[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v6, v0

    if-nez v6, :cond_5

    .line 267
    :cond_1
    const-string v6, ""

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->additional_number:Ljava/lang/String;

    .line 268
    const-string v6, ""

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->additional_number_a:Ljava/lang/String;

    .line 269
    const-string v6, ""

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->additional_number_b:Ljava/lang/String;

    .line 309
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$Entry$Column;->EMAILS:Ljava/lang/String;

    const-string v7, ""

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->getString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "~"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, emails:[Ljava/lang/String;
    if-eqz v1, :cond_3

    array-length v6, v1

    if-nez v6, :cond_7

    .line 311
    :cond_3
    const-string v6, ""

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->email_address:Ljava/lang/String;

    .line 326
    :goto_1
    sget-object v6, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$Entry$Column;->GROUP_INDEX:Ljava/lang/String;

    invoke-direct {p0, p1, v6, v8}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->getInt(Landroid/content/ContentValues;Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->gas_id:I

    .line 331
    return-object v5

    .line 261
    .end local v0           #anrs:[Ljava/lang/String;
    .end local v1           #emails:[Ljava/lang/String;
    :cond_4
    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->detectType(Ljava/lang/String;)I
    invoke-static {v4}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->access$1500(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->type:I

    .line 262
    iget v6, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->type:I

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;
    invoke-static {v4, v6, v9}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->access$1600(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->number:Ljava/lang/String;

    goto :goto_0

    .line 278
    .restart local v0       #anrs:[Ljava/lang/String;
    :cond_5
    array-length v3, v0

    .line 280
    .local v3, length:I
    const-string v6, ""

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->additional_number:Ljava/lang/String;

    .line 281
    const-string v6, ""

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->additional_number_a:Ljava/lang/String;

    .line 282
    const-string v6, ""

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->additional_number_b:Ljava/lang/String;

    .line 284
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 285
    packed-switch v2, :pswitch_data_0

    .line 284
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 287
    :pswitch_0
    aget-object v6, v0, v8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 288
    aget-object v6, v0, v8

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->detectType(Ljava/lang/String;)I
    invoke-static {v6}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->access$1500(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->ad_type:I

    .line 289
    aget-object v6, v0, v8

    iget v7, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->ad_type:I

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;
    invoke-static {v6, v7, v9}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->access$1600(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->additional_number:Ljava/lang/String;

    goto :goto_3

    .line 294
    :pswitch_1
    aget-object v6, v0, v9

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 295
    aget-object v6, v0, v9

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->detectType(Ljava/lang/String;)I
    invoke-static {v6}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->access$1500(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->ad_type:I

    .line 296
    aget-object v6, v0, v9

    iget v7, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->ad_type:I

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;
    invoke-static {v6, v7, v9}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->access$1600(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->additional_number_a:Ljava/lang/String;

    goto :goto_3

    .line 300
    :pswitch_2
    aget-object v6, v0, v10

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 301
    aget-object v6, v0, v10

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->detectType(Ljava/lang/String;)I
    invoke-static {v6}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->access$1500(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->ad_type:I

    .line 302
    aget-object v6, v0, v10

    iget v7, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->ad_type:I

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;
    invoke-static {v6, v7, v9}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->access$1600(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->additional_number_b:Ljava/lang/String;

    goto :goto_3

    .line 320
    .end local v2           #i:I
    .end local v3           #length:I
    .restart local v1       #emails:[Ljava/lang/String;
    :cond_7
    aget-object v6, v1, v8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 321
    aget-object v6, v1, v8

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->email_address:Ljava/lang/String;

    goto/16 :goto_1

    .line 323
    :cond_8
    const-string v6, ""

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->email_address:Ljava/lang/String;

    goto/16 :goto_1

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private newQueryEntryCursor(Lcom/android/internal/telephony/uicc/LGE_PBM_Records;)Landroid/database/Cursor;
    .locals 9
    .parameter "record"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 504
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->ENTRY_PROJECTION:[Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 505
    .local v1, cursor:Landroid/database/MatrixCursor;
    sget-object v3, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->ENTRY_PROJECTION:[Ljava/lang/String;

    array-length v3, v3

    new-array v2, v3, [Ljava/lang/Object;

    .line 506
    .local v2, row:[Ljava/lang/Object;
    if-nez p1, :cond_0

    .line 507
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 508
    const-string v3, ""

    aput-object v3, v2, v4

    .line 509
    const-string v3, ""

    aput-object v3, v2, v6

    .line 510
    const-string v3, ""

    aput-object v3, v2, v7

    .line 511
    const-string v3, ""

    aput-object v3, v2, v8

    .line 512
    const/4 v3, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 534
    :goto_0
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 535
    return-object v1

    .line 514
    :cond_0
    iget v3, p1, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 515
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->name:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, ""

    :goto_1
    aput-object v3, v2, v4

    .line 516
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->number:Ljava/lang/String;

    iget v4, p1, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->type:I

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;
    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->access$1600(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 518
    .local v0, anrs:Ljava/lang/StringBuilder;
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->additional_number:Ljava/lang/String;

    iget v4, p1, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->ad_type:I

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;
    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->access$1600(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->additional_number_a:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v3, ""

    iget-object v4, p1, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->additional_number_a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 520
    const-string v3, "~"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->additional_number_a:Ljava/lang/String;

    iget v4, p1, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->ad_type:I

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;
    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->access$1600(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    :cond_1
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->additional_number_b:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v3, ""

    iget-object v4, p1, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->additional_number_b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 525
    const-string v3, "~"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->additional_number_b:Ljava/lang/String;

    iget v4, p1, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->ad_type:I

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;
    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->access$1600(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 531
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->email_address:Ljava/lang/String;

    if-nez v3, :cond_4

    const-string v3, ""

    :goto_2
    aput-object v3, v2, v8

    .line 532
    const/4 v3, 0x5

    iget v4, p1, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->gas_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    goto/16 :goto_0

    .line 515
    .end local v0           #anrs:Ljava/lang/StringBuilder;
    :cond_3
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->name:Ljava/lang/String;

    goto :goto_1

    .line 531
    .restart local v0       #anrs:Ljava/lang/StringBuilder;
    :cond_4
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->email_address:Ljava/lang/String;

    goto :goto_2
.end method

.method private newQueryGroupCursor(Lcom/android/internal/telephony/uicc/LGE_PBM_Records;)Landroid/database/Cursor;
    .locals 6
    .parameter "record"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 541
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->GROUP_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 542
    .local v0, cursor:Landroid/database/MatrixCursor;
    if-nez p1, :cond_0

    .line 543
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, ""

    aput-object v2, v1, v4

    .line 546
    .local v1, row:[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 554
    :goto_0
    return-object v0

    .line 548
    .end local v1           #row:[Ljava/lang/Object;
    :cond_0
    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p1, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p1, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->name:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    :goto_1
    aput-object v2, v1, v4

    .line 551
    .restart local v1       #row:[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 548
    .end local v1           #row:[Ljava/lang/Object;
    :cond_1
    iget-object v2, p1, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->name:Ljava/lang/String;

    goto :goto_1
.end method

.method private read(Landroid/content/Context;I)Lcom/android/internal/telephony/uicc/LGE_PBM_Records;
    .locals 3
    .parameter "context"
    .parameter "simIndex"

    .prologue
    .line 210
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mUsimService:Lcom/android/internal/telephony/uicc/UsimService;

    if-nez v1, :cond_0

    .line 211
    new-instance v1, Lcom/android/internal/telephony/uicc/UsimService;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/uicc/UsimService;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mUsimService:Lcom/android/internal/telephony/uicc/UsimService;

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mUsimService:Lcom/android/internal/telephony/uicc/UsimService;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UsimService;->registerCallback(Lcom/android/internal/telephony/uicc/IUsimInfoCallback;)V

    .line 216
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->reset()V
    invoke-static {v1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1300(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;)V

    .line 217
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mUsimService:Lcom/android/internal/telephony/uicc/UsimService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Lcom/android/internal/telephony/uicc/UsimService;->PBMReadRecord(II)V

    .line 218
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->waitResult()Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1400(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;

    .line 219
    .local v0, result:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mUsimService:Lcom/android/internal/telephony/uicc/UsimService;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UsimService;->unregisterCallback(Lcom/android/internal/telephony/uicc/IUsimInfoCallback;)V

    .line 220
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_2

    .line 221
    :cond_1
    const/4 v1, 0x0

    .line 224
    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->getNativeRecord()Lcom/android/internal/telephony/uicc/LGE_PBM_Records;

    move-result-object v1

    goto :goto_0
.end method

.method private readGroup(Landroid/content/Context;I)Lcom/android/internal/telephony/uicc/LGE_PBM_Records;
    .locals 3
    .parameter "context"
    .parameter "groupIndex"

    .prologue
    .line 417
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mUsimService:Lcom/android/internal/telephony/uicc/UsimService;

    if-nez v1, :cond_0

    .line 418
    new-instance v1, Lcom/android/internal/telephony/uicc/UsimService;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/uicc/UsimService;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mUsimService:Lcom/android/internal/telephony/uicc/UsimService;

    .line 420
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mUsimService:Lcom/android/internal/telephony/uicc/UsimService;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UsimService;->registerCallback(Lcom/android/internal/telephony/uicc/IUsimInfoCallback;)V

    .line 422
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->reset()V
    invoke-static {v1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1300(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;)V

    .line 423
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mUsimService:Lcom/android/internal/telephony/uicc/UsimService;

    const/16 v2, 0x20

    invoke-virtual {v1, v2, p2}, Lcom/android/internal/telephony/uicc/UsimService;->PBMReadRecord(II)V

    .line 424
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->waitResult()Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1400(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;

    .line 425
    .local v0, result:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mUsimService:Lcom/android/internal/telephony/uicc/UsimService;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UsimService;->unregisterCallback(Lcom/android/internal/telephony/uicc/IUsimInfoCallback;)V

    .line 426
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_2

    .line 427
    :cond_1
    const/4 v1, 0x0

    .line 429
    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->getNativeRecord()Lcom/android/internal/telephony/uicc/LGE_PBM_Records;

    move-result-object v1

    goto :goto_0
.end method

.method private update(Landroid/content/Context;ILandroid/content/ContentValues;)I
    .locals 4
    .parameter "context"
    .parameter "simIndex"
    .parameter "values"

    .prologue
    .line 384
    if-gtz p2, :cond_0

    .line 385
    const-string v1, "IccPhonebookProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid sim index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v1, 0x0

    .line 391
    :goto_0
    return v1

    .line 388
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->newNativeRecordWithoutSimIndex(Landroid/content/ContentValues;)Lcom/android/internal/telephony/uicc/LGE_PBM_Records;

    move-result-object v0

    .line 389
    .local v0, records:Lcom/android/internal/telephony/uicc/LGE_PBM_Records;
    iput p2, v0, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->index:I

    .line 391
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->write(Landroid/content/Context;Lcom/android/internal/telephony/uicc/LGE_PBM_Records;)I

    move-result v1

    goto :goto_0
.end method

.method private updateGroup(Landroid/content/Context;ILandroid/content/ContentValues;)I
    .locals 4
    .parameter "context"
    .parameter "groupIndex"
    .parameter "values"

    .prologue
    .line 470
    if-gtz p2, :cond_0

    .line 471
    const-string v1, "IccPhonebookProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid group index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v1, 0x0

    .line 477
    :goto_0
    return v1

    .line 474
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->newNativeGroupRecordWithoutGroupIndex(Landroid/content/ContentValues;)Lcom/android/internal/telephony/uicc/LGE_PBM_Records;

    move-result-object v0

    .line 475
    .local v0, records:Lcom/android/internal/telephony/uicc/LGE_PBM_Records;
    iput p2, v0, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->index:I

    .line 477
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->write(Landroid/content/Context;Lcom/android/internal/telephony/uicc/LGE_PBM_Records;)I

    move-result v1

    goto :goto_0
.end method

.method private write(Landroid/content/Context;Lcom/android/internal/telephony/uicc/LGE_PBM_Records;)I
    .locals 4
    .parameter "context"
    .parameter "records"

    .prologue
    .line 338
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mUsimService:Lcom/android/internal/telephony/uicc/UsimService;

    if-nez v1, :cond_0

    .line 339
    new-instance v1, Lcom/android/internal/telephony/uicc/UsimService;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/uicc/UsimService;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mUsimService:Lcom/android/internal/telephony/uicc/UsimService;

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mUsimService:Lcom/android/internal/telephony/uicc/UsimService;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UsimService;->registerCallback(Lcom/android/internal/telephony/uicc/IUsimInfoCallback;)V

    .line 343
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->reset()V
    invoke-static {v1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1300(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;)V

    .line 344
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mUsimService:Lcom/android/internal/telephony/uicc/UsimService;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/uicc/UsimService;->PBMWriteRecord(Lcom/android/internal/telephony/uicc/LGE_PBM_Records;)V

    .line 345
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->waitResult()Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1400(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;

    .line 346
    .local v0, result:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;
    iget v1, v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->mReturnCode:I

    if-eqz v1, :cond_1

    .line 347
    const-string v1, "IccPhonebookProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write failed? error code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->mReturnCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mUsimService:Lcom/android/internal/telephony/uicc/UsimService;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UsimService;->unregisterCallback(Lcom/android/internal/telephony/uicc/IUsimInfoCallback;)V

    .line 351
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 352
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->getIndex()I

    move-result v1

    .line 354
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onPBMDeleteCB(II)V
    .locals 2
    .parameter "retPbmResult"
    .parameter "deleteIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    new-instance v1, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;-><init>(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;II)V

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->notifyResult(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1700(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;Ljava/lang/Object;)V

    .line 564
    return-void
.end method

.method public onPBMInfoCB(Lcom/android/internal/telephony/uicc/LGE_PBM_Record_Info;)V
    .locals 3
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 569
    const-string v0, "IccPhonebookProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unplaned get info operation [info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    return-void
.end method

.method public onPBMReadCB(Lcom/android/internal/telephony/uicc/LGE_PBM_Records;)V
    .locals 2
    .parameter "records"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    new-instance v1, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;-><init>(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Lcom/android/internal/telephony/uicc/LGE_PBM_Records;)V

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->notifyResult(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1700(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;Ljava/lang/Object;)V

    .line 567
    return-void
.end method

.method public onPBMWriteCB(II)V
    .locals 2
    .parameter "retPbmResult"
    .parameter "writtenIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    new-instance v1, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;-><init>(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;II)V

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->notifyResult(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1700(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;Ljava/lang/Object;)V

    .line 561
    return-void
.end method
