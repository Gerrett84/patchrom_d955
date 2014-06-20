.class public Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;
.super Landroid/app/ListActivity;
.source "QuietModeDeleteContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;,
        Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ViewHolder;,
        Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QueryHandler;,
        Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$CallerInfoQuery;,
        Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ContactInfo;
    }
.end annotation


# static fields
.field static final CALLREJECT_PROJECTION:[Ljava/lang/String;

.field static final PHONES_PROJECTION:[Ljava/lang/String;


# instance fields
.field private cancel:Landroid/widget/Button;

.field private chkcount:I

.field private deleteItemArray:[I

.field private deleteitemID:I

.field private mAdapter:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

.field private mButtonLayout:Landroid/widget/LinearLayout;

.field private mCheckItemId:[Z

.field private mChkboxSelectAll:Landroid/widget/CheckBox;

.field private mCompleteRead:Z

.field private mDeleteItemId:[I

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field mListViewCount:I

.field private mQueryHandler:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QueryHandler;

.field private mTxtSelected:Landroid/widget/TextView;

.field private ok:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "contact_id"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "match_condition"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->CALLREJECT_PROJECTION:[Ljava/lang/String;

    .line 161
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "number"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->deleteitemID:I

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mCompleteRead:Z

    .line 126
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$1;-><init>(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mHandler:Landroid/os/Handler;

    .line 253
    return-void
.end method

.method private AllCheckDeleteItemArray()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 824
    const-string v0, "QuietModeDeleteContactsActivity"

    const-string v1, "AllCheckDeleteItemArray()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const-string v7, "_id"

    .line 826
    .local v7, KEY_ID:Ljava/lang/String;
    const/4 v6, 0x0

    .line 827
    .local v6, ID_COLUMN_INDEX:I
    const/4 v8, 0x0

    .line 829
    .local v8, count:I
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 831
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v11, -0x1

    .line 833
    .local v11, sValue:I
    if-eqz v9, :cond_1

    .line 837
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 839
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->deleteItemArray:[I

    aput v11, v0, v8

    .line 840
    const-string v0, "QuietModeDeleteContactsActivity"

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

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->deleteItemArray:[I

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 844
    :catch_0
    move-exception v10

    .line 845
    .local v10, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "QuietModeDeleteContactsActivity"

    const-string v1, "ArrayIndexOutOfBoundsException!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    .end local v10           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 849
    const/4 v9, 0x0

    .line 851
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mCompleteRead:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->ok:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mCompleteRead:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->AllCheckDeleteItemArray()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mDeleteItemId:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->deleteItemArray:[I

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->deleteItemArray:[I

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mCheckItemId:[Z

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;[Z)[Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mCheckItemId:[Z

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mAdapter:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->chkcount:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->chkcount:I

    return p1
.end method

.method static synthetic access$708(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->chkcount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->chkcount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mTxtSelected:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mChkboxSelectAll:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 816
    const-string v0, "QuietModeDeleteContactsActivity"

    const-string v3, "startQuery()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mQueryHandler:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QueryHandler;->cancelOperation(I)V

    .line 818
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mQueryHandler:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QueryHandler;

    sget-object v3, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->CALLREJECT_PROJECTION:[Ljava/lang/String;

    const-string v7, "_id DESC"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    return-void
.end method


# virtual methods
.method protected deleteAlertDlg([I)V
    .locals 2
    .parameter "deleteId"

    .prologue
    const/4 v1, 0x1

    .line 788
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mDeleteItemId:[I

    .line 789
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mAdapter:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->getCountCheckedItem()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 790
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->showDialog(I)V

    .line 794
    :goto_0
    return-void

    .line 792
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->showDialog(I)V

    goto :goto_0
.end method

.method public deleteAllContactsAllowed()V
    .locals 5

    .prologue
    .line 778
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 779
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->startQuery()V

    .line 780
    const v1, 0x7f080e15

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    :goto_0
    return-void

    .line 782
    :catch_0
    move-exception v0

    .line 783
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method public deleteSelectedContactsAllowed([I)V
    .locals 7
    .parameter "id"

    .prologue
    .line 798
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v3, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mListViewCount:I

    if-ge v2, v3, :cond_1

    .line 799
    const-string v3, "QuietModeDeleteContactsActivity"

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

    .line 800
    aget v3, p1, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 801
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedProvider;->CONTENT_URI:Landroid/net/Uri;

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

    .line 802
    .local v0, deleteId:Ljava/lang/String;
    const-string v3, "QuietModeDeleteContactsActivity"

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

    .line 804
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 805
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->startQuery()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    .end local v0           #deleteId:Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 806
    .restart local v0       #deleteId:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 807
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v1}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_1

    .line 811
    .end local v0           #deleteId:Ljava/lang/String;
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :cond_1
    const v3, 0x7f080e15

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 812
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->finish()V

    .line 813
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const v8, 0x7f080e02

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 734
    packed-switch p1, :pswitch_data_0

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 736
    :pswitch_0
    if-ne p2, v5, :cond_0

    .line 737
    const-string v4, "_id"

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 738
    .local v1, id:I
    if-eq v1, v5, :cond_1

    .line 740
    const-string v4, "QuietModeDeleteContactsActivity"

    const-string v5, "This should not happen"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_1
    const-string v4, "message"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 744
    .local v2, message:Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 745
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "message"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v4, "modified"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 747
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 748
    invoke-static {p0, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 752
    .end local v1           #id:I
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #values:Landroid/content/ContentValues;
    :pswitch_1
    if-ne p2, v5, :cond_0

    .line 753
    const-string v4, "_id"

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 754
    .restart local v1       #id:I
    if-ne v1, v5, :cond_2

    .line 756
    const-string v4, "QuietModeDeleteContactsActivity"

    const-string v5, "This should not happen"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_2
    const-string v4, "message"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 761
    .restart local v2       #message:Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 762
    .restart local v3       #values:Landroid/content/ContentValues;
    const-string v4, "message"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const-string v4, "modified"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 765
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 766
    const v4, 0x7f080e02

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 768
    :catch_0
    move-exception v0

    .line 769
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto/16 :goto_0

    .line 734
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 543
    const-string v2, "QuietModeDeleteContactsActivity"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 546
    const v2, 0x7f040115

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->setContentView(I)V

    .line 548
    new-instance v2, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QueryHandler;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mQueryHandler:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QueryHandler;

    .line 549
    new-instance v2, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f04003e

    const/4 v5, 0x0

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;-><init>(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mAdapter:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    .line 550
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mAdapter:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 552
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mListView:Landroid/widget/ListView;

    .line 554
    const v2, 0x7f080e13

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->setTitle(I)V

    .line 555
    const v2, 0x7f0a024a

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mButtonLayout:Landroid/widget/LinearLayout;

    .line 556
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 558
    const v2, 0x7f0a004d

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->ok:Landroid/widget/Button;

    .line 559
    const v2, 0x7f0a006d

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->cancel:Landroid/widget/Button;

    .line 560
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->ok:Landroid/widget/Button;

    const v3, 0x7f08079c

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->cancel:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 562
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->cancel:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setFocusable(Z)V

    .line 563
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->ok:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 564
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->ok:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setFocusable(Z)V

    .line 566
    iput v6, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->chkcount:I

    .line 568
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->ok:Landroid/widget/Button;

    new-instance v3, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$2;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$2;-><init>(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->cancel:Landroid/widget/Button;

    new-instance v3, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$3;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$3;-><init>(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 586
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 587
    const v2, 0x7f040004

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 588
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 589
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 590
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 592
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 593
    .local v1, layoutSelectAll:Landroid/view/View;
    const v2, 0x7f0a000c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mTxtSelected:Landroid/widget/TextView;

    .line 594
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mTxtSelected:Landroid/widget/TextView;

    const v3, 0x7f080e12

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->chkcount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    const v2, 0x7f0a000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mChkboxSelectAll:Landroid/widget/CheckBox;

    .line 597
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mChkboxSelectAll:Landroid/widget/CheckBox;

    new-instance v3, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$4;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$4;-><init>(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    .end local v1           #layoutSelectAll:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const v6, 0x7f080016

    const v5, 0x7f080015

    const v2, 0x1010355

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 669
    packed-switch p1, :pswitch_data_0

    .line 714
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 671
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08079c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$5;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$5;-><init>(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080e36

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 685
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08079c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$6;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$6;-><init>(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080e37

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 699
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080a86

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$7;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$7;-><init>(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080e35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 669
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
    .line 635
    const-string v0, "QuietModeDeleteContactsActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 637
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mAdapter:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 638
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 528
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 530
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ViewHolder;

    .line 532
    .local v1, holder:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ViewHolder;
    iget-object v0, v1, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ViewHolder;->chkbox:Landroid/widget/CheckBox;

    .line 534
    .local v0, ch:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 535
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 539
    :goto_0
    return-void

    .line 537
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 718
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 719
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 728
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 721
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 722
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x6400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 723
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.quietmode.QuietModeAllowedCallSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->startActivity(Landroid/content/Intent;)V

    .line 725
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->finish()V

    .line 726
    const/4 v1, 0x1

    goto :goto_0

    .line 719
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 629
    const-string v0, "QuietModeDeleteContactsActivity"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 631
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 652
    const-string v0, "QuietModeDeleteContactsActivity"

    const-string v1, "onRestoreInstanceState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 654
    if-eqz p1, :cond_0

    .line 655
    const-string v0, "mCompleteRead"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mCompleteRead:Z

    .line 656
    const-string v0, "mListViewCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mListViewCount:I

    .line 657
    iget-boolean v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mCompleteRead:Z

    if-eqz v0, :cond_0

    .line 658
    iget v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mListViewCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->deleteItemArray:[I

    .line 659
    iget v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mListViewCount:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mCheckItemId:[Z

    .line 660
    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->deleteItemArray:[I

    .line 661
    const-string v0, "check_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mCheckItemId:[Z

    .line 664
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 619
    const-string v1, "QuietModeDeleteContactsActivity"

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 621
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->startQuery()V

    .line 622
    const v1, 0x7f0807a0

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, tCheckBoxTile:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mChkboxSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 624
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 642
    const-string v0, "QuietModeDeleteContactsActivity"

    const-string v1, "onSaveInstanceState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 644
    const-string v0, "id"

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->deleteItemArray:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 645
    const-string v0, "check_id"

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mCheckItemId:[Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 646
    const-string v0, "mCompleteRead"

    iget-boolean v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mCompleteRead:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 647
    const-string v0, "mListViewCount"

    iget v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mListViewCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 648
    return-void
.end method
