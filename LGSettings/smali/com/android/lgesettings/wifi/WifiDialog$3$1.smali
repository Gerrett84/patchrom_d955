.class Lcom/android/lgesettings/wifi/WifiDialog$3$1;
.super Ljava/lang/Object;
.source "WifiDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiDialog$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/wifi/WifiDialog$3;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiDialog$3;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiDialog$3$1;->this$1:Lcom/android/lgesettings/wifi/WifiDialog$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog$3$1;->this$1:Lcom/android/lgesettings/wifi/WifiDialog$3;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiDialog$3;->this$0:Lcom/android/lgesettings/wifi/WifiDialog;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 363
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog$3$1;->this$1:Lcom/android/lgesettings/wifi/WifiDialog$3;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiDialog$3;->this$0:Lcom/android/lgesettings/wifi/WifiDialog;

    #getter for: Lcom/android/lgesettings/wifi/WifiDialog;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiDialog;->access$000(Lcom/android/lgesettings/wifi/WifiDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog$3$1;->this$1:Lcom/android/lgesettings/wifi/WifiDialog$3;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiDialog$3;->this$0:Lcom/android/lgesettings/wifi/WifiDialog;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiDialog$3$1;->this$1:Lcom/android/lgesettings/wifi/WifiDialog$3;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/WifiDialog$3;->this$0:Lcom/android/lgesettings/wifi/WifiDialog;

    #getter for: Lcom/android/lgesettings/wifi/WifiDialog;->mView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiDialog;->access$100(Lcom/android/lgesettings/wifi/WifiDialog;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/wifi/WifiDialog;->showExpandableNotificationGuide(Landroid/view/View;I)V

    .line 366
    :cond_0
    return-void
.end method
