.class Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "QuietModeDeleteContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickMessageCursorAdapter"
.end annotation


# instance fields
.field public final mCheckBoxClickListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field mContactInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field public final mListItemClickListener:Landroid/view/View$OnClickListener;

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$CallerInfoQuery;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 464
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;-><init>(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;)V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->mCheckBoxClickListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 508
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$2;-><init>(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;)V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->mListItemClickListener:Landroid/view/View$OnClickListener;

    .line 261
    iput-object p2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->mContext:Landroid/content/Context;

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->mContactInfo:Ljava/util/HashMap;

    .line 263
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->mRequests:Ljava/util/LinkedList;

    .line 264
    return-void
.end method

.method private enqueueRequest(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 3
    .parameter "number"
    .parameter "position"
    .parameter "name"
    .parameter "rejectId"
    .parameter "contactsId"

    .prologue
    .line 296
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$CallerInfoQuery;

    invoke-direct {v0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$CallerInfoQuery;-><init>()V

    .line 297
    .local v0, ciq:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$CallerInfoQuery;
    iput p4, v0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$CallerInfoQuery;->callRejectId:I

    .line 298
    iput p5, v0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$CallerInfoQuery;->contactsId:I

    .line 299
    iput-object p1, v0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$CallerInfoQuery;->number:Ljava/lang/String;

    .line 300
    iput-object p3, v0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$CallerInfoQuery;->name:Ljava/lang/String;

    .line 301
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v2

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 304
    monitor-exit v2

    .line 305
    return-void

    .line 304
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 379
    const-string v1, "QuietModeDeleteContactsActivity"

    const-string v3, "bindView()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ViewHolder;

    .line 381
    .local v9, holder:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ViewHolder;
    if-eqz v9, :cond_3

    .line 382
    iget-object v7, v9, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ViewHolder;->chkbox:Landroid/widget/CheckBox;

    .line 384
    .local v7, chk:Landroid/widget/CheckBox;
    iget-object v11, v9, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ViewHolder;->listItemView:Landroid/view/View;

    .line 386
    .local v11, listItemView:Landroid/view/View;
    const/4 v1, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, number:Ljava/lang/String;
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 388
    .local v4, queriedName:Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 389
    .local v5, rejectId:I
    const/4 v1, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 390
    .local v6, contactsId:I
    const/4 v1, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 392
    .local v12, matchcondition:I
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ContactInfo;

    .line 393
    .local v10, info:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ContactInfo;
    if-nez v10, :cond_4

    .line 394
    sget-object v10, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ContactInfo;->EMPTY:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ContactInfo;

    .line 395
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->enqueueRequest(Ljava/lang/String;ILjava/lang/String;II)V

    .line 403
    :cond_0
    :goto_0
    iget-object v13, v10, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ContactInfo;->name:Ljava/lang/String;

    .line 404
    .local v13, name:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 405
    move-object v13, v4

    .line 408
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/android/lgesettings/quietmode/PhoneNumberFormatter;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 409
    .local v8, formattedNumber:Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 410
    move-object v2, v8

    .line 413
    :cond_2
    iget-object v1, v9, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ViewHolder;->numberview:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 416
    iget-object v1, v9, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ViewHolder;->nameView:Landroid/widget/TextView;

    const v3, 0x7f080e11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 421
    :goto_1
    packed-switch v12, :pswitch_data_0

    .line 435
    iget-object v1, v9, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ViewHolder;->matchOptionView:Landroid/widget/TextView;

    const v3, 0x7f080e09

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 439
    :goto_2
    const-string v1, "QuietModeDeleteContactsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cursor.getPosition() = "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-virtual {v7, v5}, Landroid/widget/CheckBox;->setId(I)V

    .line 441
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 443
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mCompleteRead:Z
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$100(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mCheckItemId:[Z
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$300(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)[Z

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_6

    .line 444
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 449
    :goto_3
    invoke-virtual {v11, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 452
    .end local v2           #number:Ljava/lang/String;
    .end local v4           #queriedName:Ljava/lang/String;
    .end local v5           #rejectId:I
    .end local v6           #contactsId:I
    .end local v7           #chk:Landroid/widget/CheckBox;
    .end local v8           #formattedNumber:Ljava/lang/String;
    .end local v10           #info:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ContactInfo;
    .end local v11           #listItemView:Landroid/view/View;
    .end local v12           #matchcondition:I
    .end local v13           #name:Ljava/lang/String;
    :cond_3
    return-void

    .line 397
    .restart local v2       #number:Ljava/lang/String;
    .restart local v4       #queriedName:Ljava/lang/String;
    .restart local v5       #rejectId:I
    .restart local v6       #contactsId:I
    .restart local v7       #chk:Landroid/widget/CheckBox;
    .restart local v10       #info:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ContactInfo;
    .restart local v11       #listItemView:Landroid/view/View;
    .restart local v12       #matchcondition:I
    :cond_4
    sget-object v1, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ContactInfo;->EMPTY:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ContactInfo;

    if-eq v10, v1, :cond_0

    .line 398
    iget-object v1, v10, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 399
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->enqueueRequest(Ljava/lang/String;ILjava/lang/String;II)V

    goto/16 :goto_0

    .line 418
    .restart local v8       #formattedNumber:Ljava/lang/String;
    .restart local v13       #name:Ljava/lang/String;
    :cond_5
    iget-object v1, v9, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ViewHolder;->nameView:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 423
    :pswitch_0
    iget-object v1, v9, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ViewHolder;->matchOptionView:Landroid/widget/TextView;

    const v3, 0x7f080e09

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 427
    :pswitch_1
    iget-object v1, v9, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ViewHolder;->matchOptionView:Landroid/widget/TextView;

    const v3, 0x7f080e0a

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 431
    :pswitch_2
    iget-object v1, v9, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ViewHolder;->matchOptionView:Landroid/widget/TextView;

    const v3, 0x7f080e0b

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 446
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCountCheckedItem()I
    .locals 3

    .prologue
    .line 455
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    const/4 v2, 0x0

    #setter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->chkcount:I
    invoke-static {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$702(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;I)I

    .line 456
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    iget v1, v1, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mListViewCount:I

    if-ge v0, v1, :cond_1

    .line 457
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mCheckItemId:[Z
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$300(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)[Z

    move-result-object v1

    aget-boolean v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 458
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$708(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)I

    .line 456
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->chkcount:I
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$700(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)I

    move-result v1

    return v1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 358
    const-string v2, "QuietModeDeleteContactsActivity"

    const-string v3, "newView()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 361
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ViewHolder;

    invoke-direct {v0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ViewHolder;-><init>()V

    .line 362
    .local v0, holder:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ViewHolder;
    const v2, 0x7f0a0088

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ViewHolder;->numberview:Landroid/widget/TextView;

    .line 363
    const v2, 0x7f0a0087

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ViewHolder;->nameView:Landroid/widget/TextView;

    .line 364
    const v2, 0x7f0a0089

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ViewHolder;->matchOptionView:Landroid/widget/TextView;

    .line 365
    iget-object v2, v0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ViewHolder;->matchOptionView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    const v2, 0x7f0a0086

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ViewHolder;->chkbox:Landroid/widget/CheckBox;

    .line 367
    iget-object v2, v0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ViewHolder;->chkbox:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 368
    const v2, 0x7f0a0085

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ViewHolder;->listItemView:Landroid/view/View;

    .line 369
    iget-object v2, v0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ViewHolder;->listItemView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->mListItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v2, v0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ViewHolder;->chkbox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->mCheckBoxClickListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 372
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 374
    return-object v1
.end method
