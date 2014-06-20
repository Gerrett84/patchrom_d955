.class Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;
.super Ljava/lang/Object;
.source "ExceptScanListMultiSelectionActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 328
    if-eqz p2, :cond_0

    .line 330
    const-string v2, "ExceptScanListMultiSelectionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check cnt ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    iget-object v4, v4, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->chkcount:I
    invoke-static {v4}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$700(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 333
    .local v1, mSelectedPosition:I
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->deleteItemArray:[I
    invoke-static {v2}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$300(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)[I

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v3

    aput v3, v2, v1

    .line 335
    const-string v2, "ExceptScanListMultiSelectionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "temp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mCheckItemId:[Z
    invoke-static {v2}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$400(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)[Z

    move-result-object v2

    aput-boolean v8, v2, v1

    .line 338
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    iget-object v3, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    invoke-virtual {v3}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->getCountCheckedItem()I

    move-result v3

    #setter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->chkcount:I
    invoke-static {v2, v3}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$702(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;I)I

    .line 360
    .end local v1           #mSelectedPosition:I
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mTxtSelected:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$800(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    const v4, 0x7f08129b

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    iget-object v6, v6, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->chkcount:I
    invoke-static {v6}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$700(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->chkcount:I
    invoke-static {v2}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$700(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    iget v3, v3, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mListViewCount:I

    if-ne v2, v3, :cond_3

    .line 362
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mChkboxSelectAll:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$900(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 366
    :goto_1
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->chkcount:I
    invoke-static {v2}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$700(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 367
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->ok:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$1000(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 368
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->ok:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$1000(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setFocusable(Z)V

    .line 373
    :goto_2
    return-void

    .line 341
    :cond_0
    const-string v2, "ExceptScanListMultiSelectionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel cnt = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    iget-object v4, v4, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->chkcount:I
    invoke-static {v4}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$700(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    iget v2, v2, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mListViewCount:I

    if-ge v0, v2, :cond_2

    .line 345
    const-string v2, "ExceptScanListMultiSelectionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteItemArray= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    iget-object v4, v4, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->deleteItemArray:[I
    invoke-static {v4}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$300(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)[I

    move-result-object v4

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " buttonView.getId() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->deleteItemArray:[I
    invoke-static {v2}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$300(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)[I

    move-result-object v2

    aget v2, v2, v0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 349
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 351
    .restart local v1       #mSelectedPosition:I
    const-string v2, "ExceptScanListMultiSelectionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSelectedPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mCheckItemId:[Z
    invoke-static {v2}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$400(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)[Z

    move-result-object v2

    aput-boolean v7, v2, v1

    .line 354
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->deleteItemArray:[I
    invoke-static {v2}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$300(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)[I

    move-result-object v2

    const/4 v3, -0x1

    aput v3, v2, v0

    .line 343
    .end local v1           #mSelectedPosition:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 357
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    iget-object v3, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    invoke-virtual {v3}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->getCountCheckedItem()I

    move-result v3

    #setter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->chkcount:I
    invoke-static {v2, v3}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$702(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;I)I

    goto/16 :goto_0

    .line 364
    .end local v0           #i:I
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mChkboxSelectAll:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$900(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 370
    :cond_4
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->ok:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$1000(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 371
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter$1;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->ok:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$1000(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setFocusable(Z)V

    goto/16 :goto_2
.end method
