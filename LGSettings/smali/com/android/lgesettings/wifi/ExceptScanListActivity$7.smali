.class Lcom/android/lgesettings/wifi/ExceptScanListActivity$7;
.super Ljava/lang/Object;
.source "ExceptScanListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/ExceptScanListActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/ExceptScanListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 681
    iput-object p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$7;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 683
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$7;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    #calls: Lcom/android/lgesettings/wifi/ExceptScanListActivity;->getCountExceptScanDB()I
    invoke-static {v1}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->access$900(Lcom/android/lgesettings/wifi/ExceptScanListActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 684
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$7;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    #calls: Lcom/android/lgesettings/wifi/ExceptScanListActivity;->ExceptScanListRemoveAll()V
    invoke-static {v1}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->access$800(Lcom/android/lgesettings/wifi/ExceptScanListActivity;)V

    .line 699
    :goto_0
    return-void

    .line 686
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/lgesettings/wifi/ExceptScanProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$7;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListActivity;->deleteitemID:I
    invoke-static {v2}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->access$1000(Lcom/android/lgesettings/wifi/ExceptScanListActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, strDeleteId:Ljava/lang/String;
    invoke-static {}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DIALOG_EXCEPT_DELETE_ITEM id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$7;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$7;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1, v2, v3, v5, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 694
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$7;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    const v2, 0x7f08160d

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 696
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$7;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    #calls: Lcom/android/lgesettings/wifi/ExceptScanListActivity;->startQuery()V
    invoke-static {v1}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->access$100(Lcom/android/lgesettings/wifi/ExceptScanListActivity;)V

    .line 697
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$7;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    #setter for: Lcom/android/lgesettings/wifi/ExceptScanListActivity;->deleteitemID:I
    invoke-static {v1, v4}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->access$1002(Lcom/android/lgesettings/wifi/ExceptScanListActivity;I)I

    goto :goto_0
.end method
