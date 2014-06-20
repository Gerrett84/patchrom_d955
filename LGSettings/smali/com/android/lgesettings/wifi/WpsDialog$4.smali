.class Lcom/android/lgesettings/wifi/WpsDialog$4;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WpsDialog;->updateDialog(Lcom/android/lgesettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WpsDialog;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$state:Lcom/android/lgesettings/wifi/WpsDialog$DialogState;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WpsDialog;Lcom/android/lgesettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WpsDialog$4;->this$0:Lcom/android/lgesettings/wifi/WpsDialog;

    iput-object p2, p0, Lcom/android/lgesettings/wifi/WpsDialog$4;->val$state:Lcom/android/lgesettings/wifi/WpsDialog$DialogState;

    iput-object p3, p0, Lcom/android/lgesettings/wifi/WpsDialog$4;->val$msg:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 231
    sget-object v1, Lcom/android/lgesettings/wifi/WpsDialog$5;->$SwitchMap$com$android$settings$wifi$WpsDialog$DialogState:[I

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WpsDialog$4;->val$state:Lcom/android/lgesettings/wifi/WpsDialog$DialogState;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 247
    :cond_0
    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 248
    .local v0, Paint:Landroid/graphics/Paint;
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WpsDialog$4;->this$0:Lcom/android/lgesettings/wifi/WpsDialog;

    #getter for: Lcom/android/lgesettings/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WpsDialog;->access$800(Lcom/android/lgesettings/wifi/WpsDialog;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WpsDialog$4;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WpsDialog$4;->this$0:Lcom/android/lgesettings/wifi/WpsDialog;

    #getter for: Lcom/android/lgesettings/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WpsDialog;->access$800(Lcom/android/lgesettings/wifi/WpsDialog;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WpsDialog$4;->this$0:Lcom/android/lgesettings/wifi/WpsDialog;

    #getter for: Lcom/android/lgesettings/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WpsDialog;->access$800(Lcom/android/lgesettings/wifi/WpsDialog;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x20

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 250
    return-void

    .line 233
    .end local v0           #Paint:Landroid/graphics/Paint;
    :pswitch_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WpsDialog$4;->this$0:Lcom/android/lgesettings/wifi/WpsDialog;

    #getter for: Lcom/android/lgesettings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WpsDialog;->access$300(Lcom/android/lgesettings/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 234
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WpsDialog$4;->this$0:Lcom/android/lgesettings/wifi/WpsDialog;

    #getter for: Lcom/android/lgesettings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WpsDialog;->access$500(Lcom/android/lgesettings/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 238
    :pswitch_1
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WpsDialog$4;->this$0:Lcom/android/lgesettings/wifi/WpsDialog;

    #getter for: Lcom/android/lgesettings/wifi/WpsDialog;->mButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WpsDialog;->access$600(Lcom/android/lgesettings/wifi/WpsDialog;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WpsDialog$4;->this$0:Lcom/android/lgesettings/wifi/WpsDialog;

    #getter for: Lcom/android/lgesettings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WpsDialog;->access$000(Lcom/android/lgesettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08059d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WpsDialog$4;->this$0:Lcom/android/lgesettings/wifi/WpsDialog;

    #getter for: Lcom/android/lgesettings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WpsDialog;->access$300(Lcom/android/lgesettings/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 240
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WpsDialog$4;->this$0:Lcom/android/lgesettings/wifi/WpsDialog;

    #getter for: Lcom/android/lgesettings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WpsDialog;->access$500(Lcom/android/lgesettings/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 241
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WpsDialog$4;->this$0:Lcom/android/lgesettings/wifi/WpsDialog;

    #getter for: Lcom/android/lgesettings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WpsDialog;->access$700(Lcom/android/lgesettings/wifi/WpsDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WpsDialog$4;->this$0:Lcom/android/lgesettings/wifi/WpsDialog;

    #getter for: Lcom/android/lgesettings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WpsDialog;->access$000(Lcom/android/lgesettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WpsDialog$4;->this$0:Lcom/android/lgesettings/wifi/WpsDialog;

    #getter for: Lcom/android/lgesettings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WpsDialog;->access$700(Lcom/android/lgesettings/wifi/WpsDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 243
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WpsDialog$4;->this$0:Lcom/android/lgesettings/wifi/WpsDialog;

    const/4 v2, 0x0

    #setter for: Lcom/android/lgesettings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1, v2}, Lcom/android/lgesettings/wifi/WpsDialog;->access$702(Lcom/android/lgesettings/wifi/WpsDialog;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
