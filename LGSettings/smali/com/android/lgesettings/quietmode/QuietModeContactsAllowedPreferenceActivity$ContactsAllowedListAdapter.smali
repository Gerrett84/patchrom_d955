.class final Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "QuietModeContactsAllowedPreferenceActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ContactsAllowedListAdapter"
.end annotation


# instance fields
.field private mCallerIdThread:Ljava/lang/Thread;

.field mContactInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mDone:Z

.field private mFirst:Z

.field private mHandler:Landroid/os/Handler;

.field private mLoading:Z

.field mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfoQuery;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mLoading:Z

    .line 315
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter$1;-><init>(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;)V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mHandler:Landroid/os/Handler;

    .line 301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mContactInfo:Ljava/util/HashMap;

    .line 302
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mRequests:Ljava/util/LinkedList;

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 304
    return-void
.end method

.method private enqueueRequest(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 3
    .parameter "number"
    .parameter "position"
    .parameter "name"
    .parameter "allowId"
    .parameter "contactsId"

    .prologue
    .line 393
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfoQuery;

    invoke-direct {v0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfoQuery;-><init>()V

    .line 394
    .local v0, ciq:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfoQuery;
    iput p4, v0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfoQuery;->contactsAllowedId:I

    .line 395
    iput p5, v0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfoQuery;->contactsId:I

    .line 396
    iput-object p1, v0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfoQuery;->number:Ljava/lang/String;

    .line 397
    iput-object p3, v0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfoQuery;->name:Ljava/lang/String;

    .line 398
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v2

    .line 399
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 401
    monitor-exit v2

    .line 402
    return-void

    .line 401
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private queryContactInfo(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfoQuery;)Z
    .locals 11
    .parameter "ciq"

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 405
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mContactInfo:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfoQuery;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;

    .line 406
    .local v6, info:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;
    const/4 v8, 0x0

    .line 407
    .local v8, needNotify:Z
    if-eqz v6, :cond_0

    sget-object v0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;->EMPTY:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;

    if-eq v6, v0, :cond_0

    iget-object v0, v6, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfoQuery;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v10

    .line 445
    :goto_0
    return v0

    .line 411
    :cond_0
    const/4 v7, 0x0

    .line 413
    .local v7, infoUpdated:Z
    iget-object v0, p1, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfoQuery;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 442
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 443
    invoke-direct {p0, p1, v6}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->updateContactsAllowed(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfoQuery;Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;)V

    :cond_2
    move v0, v8

    .line 445
    goto :goto_0

    .line 416
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v2, p1, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfoQuery;->number:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 421
    .local v9, phonesCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_5

    .line 422
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 423
    new-instance v6, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;

    .end local v6           #info:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;
    invoke-direct {v6}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;-><init>()V

    .line 424
    .restart local v6       #info:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;->personId:J

    .line 425
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;->name:Ljava/lang/String;

    .line 426
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;->number:Ljava/lang/String;

    .line 428
    const/4 v7, 0x1

    .line 431
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 434
    :cond_5
    if-eqz v7, :cond_1

    .line 435
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mContactInfo:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfoQuery;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const/4 v8, 0x1

    goto :goto_1
.end method

.method private updateContactsAllowed(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfoQuery;Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;)V
    .locals 7
    .parameter "ciq"
    .parameter "ci"

    .prologue
    .line 370
    iget-object v0, p1, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfoQuery;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfoQuery;->contactsId:I

    int-to-long v0, v0

    iget-wide v4, p2, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;->personId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 373
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 374
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "contact_id"

    iget-wide v1, p2, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;->personId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 375
    const-string v0, "name"

    iget-object v1, p2, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfoQuery;->contactsAllowedId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_2

    .line 389
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    #calls: Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->startCompareList()V
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->access$100(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)V

    goto :goto_0

    .line 382
    :catch_0
    move-exception v6

    .line 383
    .local v6, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v0, "QuietModeContactsAllowedPreference"

    const-string v1, "Exception while updating call info"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 384
    .end local v6           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v6

    .line 385
    .local v6, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v0, "QuietModeContactsAllowedPreference"

    const-string v1, "Exception while updating call info"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 386
    .end local v6           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v6

    .line 387
    .local v6, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    const-string v0, "QuietModeContactsAllowedPreference"

    const-string v1, "Exception while updating call info"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter "v"
    .parameter "context"
    .parameter "c"

    .prologue
    .line 491
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListItemView;

    .line 492
    .local v10, viewHolder:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListItemView;
    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, number:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 494
    .local v3, queriedName:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 495
    .local v4, rejectId:I
    const/4 v0, 0x3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 496
    .local v5, contactsId:I
    const/4 v0, 0x4

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 498
    .local v8, matchcondition:I
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;

    .line 499
    .local v7, info:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;
    if-nez v7, :cond_5

    .line 500
    sget-object v7, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;->EMPTY:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;

    .line 501
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->enqueueRequest(Ljava/lang/String;ILjava/lang/String;II)V

    .line 512
    :cond_0
    :goto_0
    iget-object v9, v7, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;->name:Ljava/lang/String;

    .line 513
    .local v9, name:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->isRunFinish:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->access$400(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 515
    move-object v9, v3

    .line 524
    :cond_1
    :goto_1
    invoke-static {p2}, Lcom/android/lgesettings/quietmode/PhoneNumberFormatter;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 526
    .local v6, formattedNumber:Ljava/lang/String;
    const-string v0, "KDDI"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v6, :cond_2

    .line 527
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v0

    invoke-static {v1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 530
    :cond_2
    if-eqz v6, :cond_3

    .line 531
    move-object v1, v6

    .line 533
    :cond_3
    iget-object v0, v10, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListItemView;->numberview:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 535
    iget-object v0, v10, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListItemView;->nameView:Landroid/widget/TextView;

    const v2, 0x7f080e11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 540
    :goto_2
    packed-switch v8, :pswitch_data_0

    .line 561
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_4

    .line 562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mFirst:Z

    .line 563
    iput-object p0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 564
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 566
    :cond_4
    return-void

    .line 503
    .end local v6           #formattedNumber:Ljava/lang/String;
    .end local v9           #name:Ljava/lang/String;
    :cond_5
    sget-object v0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;->EMPTY:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;

    if-eq v7, v0, :cond_0

    .line 504
    iget-object v0, v7, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->enqueueRequest(Ljava/lang/String;ILjava/lang/String;II)V

    goto :goto_0

    .line 518
    .restart local v9       #name:Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #setter for: Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->isRunFinish:Ljava/lang/Boolean;
    invoke-static {v0, v2}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->access$402(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 519
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080e11

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 537
    .restart local v6       #formattedNumber:Ljava/lang/String;
    :cond_7
    iget-object v0, v10, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListItemView;->nameView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 540
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public clearCache()V
    .locals 2

    .prologue
    .line 363
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mContactInfo:Ljava/util/HashMap;

    monitor-enter v1

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 365
    monitor-exit v1

    .line 366
    return-void

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 337
    const/4 v0, 0x0

    .line 339
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 478
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 480
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListItemView;

    invoke-direct {v1}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListItemView;-><init>()V

    .line 481
    .local v1, viewHolder:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListItemView;
    const v2, 0x7f0a0088

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListItemView;->numberview:Landroid/widget/TextView;

    .line 482
    const v2, 0x7f0a0087

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListItemView;->nameView:Landroid/widget/TextView;

    .line 484
    const v2, 0x7f0a0085

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListItemView;->listView:Landroid/view/View;

    .line 485
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 486
    return-object v0
.end method

.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mFirst:Z

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mFirst:Z

    .line 312
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 450
    const/4 v2, 0x0

    .line 451
    .local v2, needNotify:Z
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mDone:Z

    if-nez v3, :cond_3

    .line 452
    const/4 v1, 0x0

    .line 453
    .local v1, ciq:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfoQuery;
    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v4

    .line 454
    :try_start_0
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 455
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfoQuery;

    move-object v1, v0

    .line 468
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->queryContactInfo(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfoQuery;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 470
    const/4 v2, 0x1

    .line 471
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #setter for: Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->isRunFinish:Ljava/lang/Boolean;
    invoke-static {v3, v4}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->access$402(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0

    .line 457
    :cond_1
    if-eqz v2, :cond_2

    .line 458
    const/4 v2, 0x0

    .line 459
    :try_start_1
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mRequests:Ljava/util/LinkedList;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 463
    :catch_0
    move-exception v3

    goto :goto_1

    .line 468
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 474
    .end local v1           #ciq:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfoQuery;
    :cond_3
    return-void
.end method

.method setLoading(Z)V
    .locals 0
    .parameter "loading"

    .prologue
    .line 330
    iput-boolean p1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mLoading:Z

    .line 331
    return-void
.end method

.method public startRequestProcessing()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    :goto_0
    return-void

    .line 350
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mDone:Z

    .line 351
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mCallerIdThread:Ljava/lang/Thread;

    .line 352
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mCallerIdThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 353
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mCallerIdThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public stopRequestProcessing()V
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mDone:Z

    .line 359
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mCallerIdThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->mCallerIdThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 360
    :cond_0
    return-void
.end method
