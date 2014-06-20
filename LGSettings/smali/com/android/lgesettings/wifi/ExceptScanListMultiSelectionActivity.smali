.class public Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;
.super Landroid/app/ListActivity;
.source "ExceptScanListMultiSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;,
        Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ViewHolder;,
        Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$QueryHandler;
    }
.end annotation


# static fields
.field static final EXCEPTSCAN_PROJECTION:[Ljava/lang/String;


# instance fields
.field private cancel:Landroid/widget/Button;

.field private chkcount:I

.field private deleteItemArray:[I

.field private mAdapter:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

.field private mCheckItemId:[Z

.field private mChkboxSelectAll:Landroid/widget/CheckBox;

.field private mCompleteRead:Z

.field private mDeleteItemId:[I

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field mListViewCount:I

.field private mNoMessagesView:Landroid/view/View;

.field private mQueryHandler:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$QueryHandler;

.field private mTxtSelected:Landroid/widget/TextView;

.field private ok:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ssid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "security"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "match_condition"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->EXCEPTSCAN_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mCompleteRead:Z

    .line 111
    new-instance v0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$1;-><init>(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mHandler:Landroid/os/Handler;

    .line 224
    return-void
.end method

.method private AllCheckDeleteItemArray()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 661
    const-string v0, "ExceptScanListMultiSelectionActivity"

    const-string v1, "AllCheckDeleteItemArray()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const-string v7, "_id"

    .line 664
    .local v7, KEY_ID:Ljava/lang/String;
    const/4 v6, 0x0

    .line 665
    .local v6, ID_COLUMN_INDEX:I
    const/4 v8, 0x0

    .line 667
    .local v8, count:I
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/wifi/ExceptScanProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 670
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v10, -0x1

    .line 672
    .local v10, sValue:I
    if-eqz v9, :cond_1

    .line 674
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 676
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->deleteItemArray:[I

    aput v10, v0, v8

    .line 677
    const-string v0, "ExceptScanListMultiSelectionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deleteItemArray[]= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->deleteItemArray:[I

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 680
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 681
    const/4 v9, 0x0

    .line 683
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mNoMessagesView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->ok:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->AllCheckDeleteItemArray()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mDeleteItemId:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mCompleteRead:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mCompleteRead:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->deleteItemArray:[I

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->deleteItemArray:[I

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mCheckItemId:[Z

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;[Z)[Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mCheckItemId:[Z

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mAdapter:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->chkcount:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->chkcount:I

    return p1
.end method

.method static synthetic access$708(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->chkcount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->chkcount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mTxtSelected:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mChkboxSelectAll:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 650
    const-string v0, "ExceptScanListMultiSelectionActivity"

    const-string v3, "startQuery()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mQueryHandler:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$QueryHandler;->cancelOperation(I)V

    .line 653
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mQueryHandler:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$QueryHandler;

    sget-object v3, Lcom/android/lgesettings/wifi/ExceptScanProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->EXCEPTSCAN_PROJECTION:[Ljava/lang/String;

    const-string v7, "_id DESC"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    return-void
.end method


# virtual methods
.method protected deleteAlertDlg([I)V
    .locals 2
    .parameter "deleteId"

    .prologue
    const/4 v1, 0x1

    .line 619
    iput-object p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mDeleteItemId:[I

    .line 621
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mAdapter:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->getCountCheckedItem()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 622
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->showDialog(I)V

    .line 626
    :goto_0
    return-void

    .line 624
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->showDialog(I)V

    goto :goto_0
.end method

.method public deleteAllMessages()V
    .locals 5

    .prologue
    .line 610
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/wifi/ExceptScanProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 611
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->startQuery()V

    .line 612
    const v1, 0x7f08160d

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :goto_0
    return-void

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method public deleteSelectedMessage([I)V
    .locals 7
    .parameter "id"

    .prologue
    .line 629
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v3, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mListViewCount:I

    if-ge v2, v3, :cond_1

    .line 630
    const-string v3, "ExceptScanListMultiSelectionActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    aget v3, p1, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 632
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/lgesettings/wifi/ExceptScanProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p1, v2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, deleteId:Ljava/lang/String;
    const-string v3, "ExceptScanListMultiSelectionActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 637
    const v3, 0x7f08160d

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 638
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->startQuery()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    .end local v0           #deleteId:Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 639
    .restart local v0       #deleteId:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 640
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v1}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_1

    .line 645
    .end local v0           #deleteId:Ljava/lang/String;
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->finish()V

    .line 646
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 398
    const-string v2, "ExceptScanListMultiSelectionActivity"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 401
    const v2, 0x7f040076

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->setContentView(I)V

    .line 403
    const v2, 0x7f0a0107

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mNoMessagesView:Landroid/view/View;

    .line 405
    new-instance v2, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$QueryHandler;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$QueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mQueryHandler:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$QueryHandler;

    .line 406
    new-instance v2, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040078

    const/4 v5, 0x0

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;-><init>(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mAdapter:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    .line 408
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mAdapter:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 410
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mListView:Landroid/widget/ListView;

    .line 412
    const v2, 0x7f081606

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->setTitle(I)V

    .line 414
    const v2, 0x7f0a0057

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->ok:Landroid/widget/Button;

    .line 415
    const v2, 0x7f0a0056

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->cancel:Landroid/widget/Button;

    .line 416
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->ok:Landroid/widget/Button;

    const v3, 0x7f08160b

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->cancel:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 419
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->cancel:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setFocusable(Z)V

    .line 420
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->ok:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 421
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->ok:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setFocusable(Z)V

    .line 423
    iput v6, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->chkcount:I

    .line 425
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->ok:Landroid/widget/Button;

    new-instance v3, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$2;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$2;-><init>(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->cancel:Landroid/widget/Button;

    new-instance v3, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$3;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$3;-><init>(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 443
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 444
    const v2, 0x7f040004

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 446
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 447
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 448
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 450
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 451
    .local v1, layoutSelectAll:Landroid/view/View;
    const v2, 0x7f0a000c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mTxtSelected:Landroid/widget/TextView;

    .line 452
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mTxtSelected:Landroid/widget/TextView;

    const v3, 0x7f08129b

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->chkcount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    const v2, 0x7f0a000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mChkboxSelectAll:Landroid/widget/CheckBox;

    .line 455
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mChkboxSelectAll:Landroid/widget/CheckBox;

    new-instance v3, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$4;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$4;-><init>(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    .end local v1           #layoutSelectAll:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const v6, 0x7f081609

    const v5, 0x7f081608

    const v2, 0x1010355

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 537
    packed-switch p1, :pswitch_data_0

    .line 593
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 539
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08160b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$5;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$5;-><init>(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f081617

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 557
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08160b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$6;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$6;-><init>(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f081616

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 575
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08160c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$7;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$7;-><init>(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f081618

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 537
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 499
    const-string v0, "ExceptScanListMultiSelectionActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 502
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mAdapter:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 503
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 598
    packed-switch p1, :pswitch_data_0

    .line 605
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 600
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->finish()V

    .line 601
    const/4 v0, 0x1

    goto :goto_0

    .line 598
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 491
    const-string v0, "ExceptScanListMultiSelectionActivity"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 494
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 520
    const-string v0, "ExceptScanListMultiSelectionActivity"

    const-string v1, "onRestoreInstanceState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 523
    if-eqz p1, :cond_0

    .line 524
    const-string v0, "mCompleteRead"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mCompleteRead:Z

    .line 525
    const-string v0, "mListViewCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mListViewCount:I

    .line 526
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mCompleteRead:Z

    if-eqz v0, :cond_0

    .line 527
    iget v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mListViewCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->deleteItemArray:[I

    .line 528
    iget v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mListViewCount:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mCheckItemId:[Z

    .line 529
    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->deleteItemArray:[I

    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mDeleteItemId:[I

    .line 530
    const-string v0, "check_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mCheckItemId:[Z

    .line 533
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 479
    const-string v1, "ExceptScanListMultiSelectionActivity"

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 482
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->startQuery()V

    .line 484
    const v1, 0x7f081615

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, tCheckBoxTile:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mChkboxSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 486
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 508
    const-string v0, "ExceptScanListMultiSelectionActivity"

    const-string v1, "onSaveInstanceState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 511
    const-string v0, "id"

    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->deleteItemArray:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 512
    const-string v0, "check_id"

    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mCheckItemId:[Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 513
    const-string v0, "mCompleteRead"

    iget-boolean v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mCompleteRead:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 514
    const-string v0, "mListViewCount"

    iget v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mListViewCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 515
    return-void
.end method
