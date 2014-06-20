.class Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;
.super Landroid/os/AsyncTask;
.source "ExceptScanListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/ExceptScanListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExceptScanAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private AddedExistedNumber:I

.field private mCondition:[I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPd:Landroid/app/ProgressDialog;

.field private mSecurity:[Ljava/lang/String;

.field private mSsid:[Ljava/lang/String;

.field private resultOfAddlist:I

.field final synthetic this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;


# direct methods
.method static synthetic access$300(Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->mPd:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 496
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 549
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    const-string v3, "ExceptScanAsyncLoad doInBackground()"

    #calls: Lcom/android/lgesettings/wifi/ExceptScanListActivity;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->access$500(Lcom/android/lgesettings/wifi/ExceptScanListActivity;Ljava/lang/String;)V

    .line 550
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->mSsid:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->mSsid:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-object v6

    .line 554
    :cond_1
    const/4 v0, 0x0

    .line 555
    .local v0, count:I
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->mSsid:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 557
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExceptScanAsyncLoad doInBackground(, number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/lgesettings/wifi/ExceptScanListActivity;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->access$500(Lcom/android/lgesettings/wifi/ExceptScanListActivity;Ljava/lang/String;)V

    .line 560
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    #calls: Lcom/android/lgesettings/wifi/ExceptScanListActivity;->checkMaxExceptScan()Z
    invoke-static {v2}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->access$600(Lcom/android/lgesettings/wifi/ExceptScanListActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 562
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    const-string v3, "doInBackground(), exceed the number of max reject entry."

    #calls: Lcom/android/lgesettings/wifi/ExceptScanListActivity;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->access$500(Lcom/android/lgesettings/wifi/ExceptScanListActivity;Ljava/lang/String;)V

    .line 583
    :cond_2
    iget v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->AddedExistedNumber:I

    if-nez v2, :cond_5

    .line 584
    iput v5, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->resultOfAddlist:I

    goto :goto_0

    .line 566
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    iget-object v3, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->mSsid:[Ljava/lang/String;

    aget-object v3, v3, v0

    #calls: Lcom/android/lgesettings/wifi/ExceptScanListActivity;->isExistExceptScan(Ljava/lang/String;I)Z
    invoke-static {v2, v3, v5}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->access$700(Lcom/android/lgesettings/wifi/ExceptScanListActivity;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 568
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    const-string v3, "doInBackground(), number has already added."

    #calls: Lcom/android/lgesettings/wifi/ExceptScanListActivity;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->access$500(Lcom/android/lgesettings/wifi/ExceptScanListActivity;Ljava/lang/String;)V

    .line 570
    iget v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->AddedExistedNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->AddedExistedNumber:I

    .line 555
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 574
    :cond_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 575
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "ssid"

    iget-object v3, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->mSsid:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v2, "security"

    iget-object v3, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->mSecurity:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v2, "match_condition"

    iget-object v3, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->mCondition:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 579
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    iget-object v3, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/lgesettings/wifi/ExceptScanProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v3, v4, v1}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2

    .line 585
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_5
    iget v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->AddedExistedNumber:I

    if-ge v2, v0, :cond_6

    .line 586
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->resultOfAddlist:I

    goto/16 :goto_0

    .line 587
    :cond_6
    iget v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->AddedExistedNumber:I

    if-ne v2, v0, :cond_0

    .line 588
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->resultOfAddlist:I

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 496
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 595
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    const-string v2, "ExceptScanAsyncLoad onPostExecute()"

    #calls: Lcom/android/lgesettings/wifi/ExceptScanListActivity;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->access$500(Lcom/android/lgesettings/wifi/ExceptScanListActivity;Ljava/lang/String;)V

    .line 596
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 598
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 599
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->mPd:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 600
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 601
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->mPd:Landroid/app/ProgressDialog;

    .line 603
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 604
    iget v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->resultOfAddlist:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 605
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 606
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    const-string v1, "ExceptScanAsyncLoad onPreExecute()"

    #calls: Lcom/android/lgesettings/wifi/ExceptScanListActivity;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->access$500(Lcom/android/lgesettings/wifi/ExceptScanListActivity;Ljava/lang/String;)V

    .line 541
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 542
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 545
    :cond_0
    return-void
.end method
