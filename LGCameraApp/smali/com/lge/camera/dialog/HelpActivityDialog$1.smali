.class Lcom/lge/camera/dialog/HelpActivityDialog$1;
.super Ljava/lang/Object;
.source "HelpActivityDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/HelpActivityDialog;->create(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/dialog/HelpActivityDialog;


# direct methods
.method constructor <init>(Lcom/lge/camera/dialog/HelpActivityDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lge/camera/dialog/HelpActivityDialog$1;->this$0:Lcom/lge/camera/dialog/HelpActivityDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 69
    packed-switch p2, :pswitch_data_0

    .line 79
    :cond_0
    :goto_0
    return v2

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog$1;->this$0:Lcom/lge/camera/dialog/HelpActivityDialog;

    #getter for: Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;
    invoke-static {v0}, Lcom/lge/camera/dialog/HelpActivityDialog;->access$000(Lcom/lge/camera/dialog/HelpActivityDialog;)Lcom/lge/camera/dialog/CustomAlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog$1;->this$0:Lcom/lge/camera/dialog/HelpActivityDialog;

    #getter for: Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;
    invoke-static {v0}, Lcom/lge/camera/dialog/HelpActivityDialog;->access$000(Lcom/lge/camera/dialog/HelpActivityDialog;)Lcom/lge/camera/dialog/CustomAlertDialog;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/lge/camera/dialog/CustomAlertDialog;->setVolumeControlStream(I)V

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
