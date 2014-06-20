.class Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog$2;
.super Ljava/lang/Object;
.source "DisplayWidget.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog$2;->this$0:Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 157
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 158
    iget-object v0, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog$2;->this$0:Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 159
    return-void
.end method
