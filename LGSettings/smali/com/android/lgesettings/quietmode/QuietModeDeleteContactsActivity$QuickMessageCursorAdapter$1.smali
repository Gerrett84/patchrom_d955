.class Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;
.super Ljava/lang/Object;
.source "QuietModeDeleteContactsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;->this$1:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

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

    .line 468
    if-eqz p2, :cond_0

    .line 469
    const-string v2, "QuietModeDeleteContactsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check cnt ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;->this$1:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    iget-object v4, v4, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->chkcount:I
    invoke-static {v4}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$700(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 471
    .local v1, mSelectedPosition:I
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;->this$1:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->deleteItemArray:[I
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$200(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)[I

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v3

    aput v3, v2, v1

    .line 472
    const-string v2, "QuietModeDeleteContactsActivity"

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

    .line 473
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;->this$1:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mCheckItemId:[Z
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$300(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)[Z

    move-result-object v2

    aput-boolean v8, v2, v1

    .line 474
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;->this$1:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;->this$1:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    invoke-virtual {v3}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->getCountCheckedItem()I

    move-result v3

    #setter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->chkcount:I
    invoke-static {v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$702(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;I)I

    .line 490
    .end local v1           #mSelectedPosition:I
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;->this$1:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mTxtSelected:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$800(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;->this$1:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    iget-object v3, v3, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    const v4, 0x7f080e12

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;->this$1:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    iget-object v6, v6, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->chkcount:I
    invoke-static {v6}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$700(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;->this$1:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->chkcount:I
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$700(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;->this$1:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    iget-object v3, v3, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    iget v3, v3, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mListViewCount:I

    if-ne v2, v3, :cond_3

    .line 492
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;->this$1:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mChkboxSelectAll:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$900(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 496
    :goto_1
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;->this$1:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->chkcount:I
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$700(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 497
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;->this$1:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->ok:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$1000(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 498
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;->this$1:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->ok:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$1000(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setFocusable(Z)V

    .line 503
    :goto_2
    return-void

    .line 477
    :cond_0
    const-string v2, "QuietModeDeleteContactsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel cnt = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;->this$1:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    iget-object v4, v4, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->chkcount:I
    invoke-static {v4}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$700(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;->this$1:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    iget v2, v2, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mListViewCount:I

    if-ge v0, v2, :cond_2

    .line 479
    const-string v2, "QuietModeDeleteContactsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteItemArray= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;->this$1:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    iget-object v4, v4, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->deleteItemArray:[I
    invoke-static {v4}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$200(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)[I

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

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;->this$1:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->deleteItemArray:[I
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$200(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)[I

    move-result-object v2

    aget v2, v2, v0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 481
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 482
    .restart local v1       #mSelectedPosition:I
    const-string v2, "QuietModeDeleteContactsActivity"

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

    .line 483
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;->this$1:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mCheckItemId:[Z
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$300(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)[Z

    move-result-object v2

    aput-boolean v7, v2, v1

    .line 484
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;->this$1:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->deleteItemArray:[I
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$200(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)[I

    move-result-object v2

    const/4 v3, -0x1

    aput v3, v2, v0

    .line 478
    .end local v1           #mSelectedPosition:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 487
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;->this$1:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;->this$1:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    invoke-virtual {v3}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->getCountCheckedItem()I

    move-result v3

    #setter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->chkcount:I
    invoke-static {v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$702(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;I)I

    goto/16 :goto_0

    .line 494
    .end local v0           #i:I
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;->this$1:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mChkboxSelectAll:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$900(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 500
    :cond_4
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;->this$1:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->ok:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$1000(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 501
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter$1;->this$1:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->ok:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$1000(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setFocusable(Z)V

    goto/16 :goto_2
.end method
