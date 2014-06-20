.class Lcom/android/lgesettings/TetherNetworkDialog$3;
.super Ljava/lang/Object;
.source "TetherNetworkDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/TetherNetworkDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/TetherNetworkDialog;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TetherNetworkDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/lgesettings/TetherNetworkDialog$3;->this$0:Lcom/android/lgesettings/TetherNetworkDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 92
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 93
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkDialog$3;->this$0:Lcom/android/lgesettings/TetherNetworkDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/TetherNetworkDialog;->finish()V

    .line 94
    return-void
.end method
