.class Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$4;
.super Ljava/lang/Object;
.source "QuietModeDeleteContactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$4;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 599
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$4;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mChkboxSelectAll:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$900(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 600
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$4;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #calls: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->AllCheckDeleteItemArray()V
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$1100(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)V

    .line 601
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$4;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    iget v1, v1, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mListViewCount:I

    if-ge v0, v1, :cond_1

    .line 602
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$4;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mCheckItemId:[Z
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$300(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)[Z

    move-result-object v1

    aput-boolean v2, v1, v0

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 605
    .end local v0           #i:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$4;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    iget v1, v1, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mListViewCount:I

    if-ge v0, v1, :cond_1

    .line 606
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$4;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mCheckItemId:[Z
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$300(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)[Z

    move-result-object v1

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 607
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$4;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->deleteItemArray:[I
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$200(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)[I

    move-result-object v1

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 605
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 610
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$4;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mAdapter:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$400(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->notifyDataSetChanged()V

    .line 611
    return-void
.end method
