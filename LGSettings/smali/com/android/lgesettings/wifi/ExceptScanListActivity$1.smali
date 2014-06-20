.class Lcom/android/lgesettings/wifi/ExceptScanListActivity$1;
.super Landroid/os/Handler;
.source "ExceptScanListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/ExceptScanListActivity;
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
    .line 140
    iput-object p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const v3, 0x7f081613

    const v2, 0x7f08160e

    const/4 v1, 0x0

    .line 143
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/lgesettings/wifi/ExceptScanListActivity;->mAsyncTask:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;
    invoke-static {v0, v1}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->access$002(Lcom/android/lgesettings/wifi/ExceptScanListActivity;Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;)Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;

    .line 174
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    #calls: Lcom/android/lgesettings/wifi/ExceptScanListActivity;->startQuery()V
    invoke-static {v0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->access$100(Lcom/android/lgesettings/wifi/ExceptScanListActivity;)V

    .line 177
    return-void

    .line 145
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    .line 166
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 147
    :pswitch_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 153
    :pswitch_2
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 159
    :pswitch_3
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 145
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
