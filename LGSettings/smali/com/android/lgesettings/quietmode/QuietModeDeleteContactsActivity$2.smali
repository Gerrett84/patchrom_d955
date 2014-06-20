.class Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$2;
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
    .line 568
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mChkboxSelectAll:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$900(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->showDialog(I)V

    .line 575
    :goto_0
    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->deleteItemArray:[I
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$200(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->deleteAlertDlg([I)V

    goto :goto_0
.end method
