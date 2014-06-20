.class final Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "ExceptScanListActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/ExceptScanListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExceptScanListAdapter"
.end annotation


# instance fields
.field exceptId:I

.field mCursor:Landroid/database/Cursor;

.field private volatile mDone:Z

.field private mFirst:Z

.field private mHandler:Landroid/os/Handler;

.field private mLoading:Z

.field mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field matchCondition:I

.field security:Ljava/lang/String;

.field ssid:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

.field viewHolder:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListItemView;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/wifi/ExceptScanListActivity;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 199
    iput-object p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->mLoading:Z

    .line 214
    new-instance v0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter$1;-><init>(Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->mHandler:Landroid/os/Handler;

    .line 202
    iput-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 203
    iput-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->mCursor:Landroid/database/Cursor;

    .line 204
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .parameter "v"
    .parameter "context"
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 295
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListItemView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->viewHolder:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListItemView;

    .line 296
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->exceptId:I

    .line 297
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->ssid:Ljava/lang/String;

    .line 298
    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->security:Ljava/lang/String;

    .line 299
    const/4 v0, 0x3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->matchCondition:I

    .line 301
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->viewHolder:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListItemView;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListItemView;->ssidView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->viewHolder:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListItemView;

    iget-object v3, v0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListItemView;->matchOptionCheck:Landroid/widget/CheckBox;

    iget v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->matchCondition:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 305
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_0

    .line 306
    iput-boolean v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->mFirst:Z

    .line 307
    iput-object p0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 308
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 311
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 302
    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 260
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 261
    iput-object p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->mCursor:Landroid/database/Cursor;

    .line 262
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 280
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t move cursor to position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    :cond_0
    if-nez p2, :cond_1

    .line 285
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 289
    .local v0, v:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 290
    return-object v0

    .line 287
    .end local v0           #v:Landroid/view/View;
    :cond_1
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x0

    .line 240
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
    .line 266
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 268
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListItemView;

    invoke-direct {v1}, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListItemView;-><init>()V

    iput-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->viewHolder:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListItemView;

    .line 269
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->viewHolder:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListItemView;

    const v1, 0x7f0a0104

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListItemView;->ssidView:Landroid/widget/TextView;

    .line 271
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->viewHolder:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListItemView;

    const v1, 0x7f0a0105

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v2, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListItemView;->matchOptionCheck:Landroid/widget/CheckBox;

    .line 273
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->viewHolder:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListItemView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 275
    return-object v0
.end method

.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->mFirst:Z

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->mFirst:Z

    .line 211
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method setLoading(Z)V
    .locals 0
    .parameter "loading"

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->mLoading:Z

    .line 232
    return-void
.end method

.method public startRequestProcessing()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-static {}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The activity is already destroyed!! Ignore startRequestProcessing()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->mDone:Z

    goto :goto_0
.end method

.method public stopRequestProcessing()V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->mDone:Z

    .line 255
    return-void
.end method
