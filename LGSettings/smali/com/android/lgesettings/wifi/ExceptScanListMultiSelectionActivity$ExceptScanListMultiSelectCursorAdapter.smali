.class Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "ExceptScanListMultiSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExceptScanListMultiSelectCursorAdapter"
.end annotation


# instance fields
.field chk:Landroid/widget/CheckBox;

.field exceptId:I

.field holder:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ViewHolder;

.field listItemView:Landroid/view/View;

.field public final mCheckBoxClickListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field final mContext:Landroid/content/Context;

.field public final mListItemClickListener:Landroid/view/View$OnClickListener;

.field matchcondition:I

.field security:Ljava/lang/String;

.field ssid:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 322
    new-instance v0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;-><init>(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->mCheckBoxClickListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 377
    new-instance v0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$2;-><init>(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->mListItemClickListener:Landroid/view/View$OnClickListener;

    .line 237
    iput-object p2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->mContext:Landroid/content/Context;

    .line 238
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 279
    const-string v0, "ExceptScanListMultiSelectionActivity"

    const-string v1, "bindView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ViewHolder;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->holder:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ViewHolder;

    .line 283
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->holder:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ViewHolder;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->holder:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ViewHolder;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ViewHolder;->chkbox:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->chk:Landroid/widget/CheckBox;

    .line 285
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->holder:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ViewHolder;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ViewHolder;->listItemView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->listItemView:Landroid/view/View;

    .line 287
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->ssid:Ljava/lang/String;

    .line 288
    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->security:Ljava/lang/String;

    .line 289
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->exceptId:I

    .line 290
    const/4 v0, 0x3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->matchcondition:I

    .line 292
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->holder:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ViewHolder;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ViewHolder;->ssidView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    const-string v0, "ExceptScanListMultiSelectionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor.getPosition() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->chk:Landroid/widget/CheckBox;

    iget v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->exceptId:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setId(I)V

    .line 299
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->chk:Landroid/widget/CheckBox;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mCompleteRead:Z
    invoke-static {v0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$200(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mCheckItemId:[Z
    invoke-static {v0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$400(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)[Z

    move-result-object v0

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->chk:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 307
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->listItemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->holder:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 310
    :cond_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->chk:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public getCountCheckedItem()I
    .locals 3

    .prologue
    .line 313
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    const/4 v2, 0x0

    #setter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->chkcount:I
    invoke-static {v1, v2}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$702(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;I)I

    .line 314
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    iget v1, v1, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mListViewCount:I

    if-ge v0, v1, :cond_1

    .line 315
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mCheckItemId:[Z
    invoke-static {v1}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$400(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)[Z

    move-result-object v1

    aget-boolean v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    invoke-static {v1}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$708(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)I

    .line 314
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->chkcount:I
    invoke-static {v1}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$700(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 242
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
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

    .line 246
    :cond_0
    if-nez p2, :cond_1

    .line 247
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 251
    .local v0, v:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 252
    return-object v0

    .line 249
    .end local v0           #v:Landroid/view/View;
    :cond_1
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 258
    const-string v1, "ExceptScanListMultiSelectionActivity"

    const-string v2, "newView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 262
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ViewHolder;

    invoke-direct {v1}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ViewHolder;-><init>()V

    iput-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->holder:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ViewHolder;

    .line 263
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->holder:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ViewHolder;

    const v1, 0x7f0a0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v2, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ViewHolder;->chkbox:Landroid/widget/CheckBox;

    .line 264
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->holder:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ViewHolder;

    const v1, 0x7f0a0104

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ViewHolder;->ssidView:Landroid/widget/TextView;

    .line 266
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->holder:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ViewHolder;

    const v2, 0x7f0a0103

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ViewHolder;->listItemView:Landroid/view/View;

    .line 268
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->holder:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ViewHolder;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ViewHolder;->listItemView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->mListItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->holder:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ViewHolder;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ViewHolder;->chkbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->mCheckBoxClickListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 271
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->holder:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 273
    return-object v0
.end method
