.class Lcom/android/lgesettings/lockscreen/DialogPopup$1;
.super Ljava/lang/Object;
.source "DialogPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lockscreen/DialogPopup;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lockscreen/DialogPopup;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lockscreen/DialogPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/lgesettings/lockscreen/DialogPopup$1;->this$0:Lcom/android/lgesettings/lockscreen/DialogPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/DialogPopup$1;->this$0:Lcom/android/lgesettings/lockscreen/DialogPopup;

    #getter for: Lcom/android/lgesettings/lockscreen/DialogPopup;->mPBtnListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/android/lgesettings/lockscreen/DialogPopup;->access$000(Lcom/android/lgesettings/lockscreen/DialogPopup;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/DialogPopup$1;->this$0:Lcom/android/lgesettings/lockscreen/DialogPopup;

    #getter for: Lcom/android/lgesettings/lockscreen/DialogPopup;->mPBtnListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/android/lgesettings/lockscreen/DialogPopup;->access$000(Lcom/android/lgesettings/lockscreen/DialogPopup;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/DialogPopup$1;->this$0:Lcom/android/lgesettings/lockscreen/DialogPopup;

    invoke-virtual {v0}, Lcom/android/lgesettings/lockscreen/DialogPopup;->dismiss()V

    .line 68
    return-void
.end method
