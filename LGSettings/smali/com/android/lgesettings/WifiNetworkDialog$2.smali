.class Lcom/android/lgesettings/WifiNetworkDialog$2;
.super Ljava/lang/Object;
.source "WifiNetworkDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/WifiNetworkDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/WifiNetworkDialog;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/WifiNetworkDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/lgesettings/WifiNetworkDialog$2;->this$0:Lcom/android/lgesettings/WifiNetworkDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/lgesettings/WifiNetworkDialog$2;->this$0:Lcom/android/lgesettings/WifiNetworkDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/WifiNetworkDialog;->finish()V

    .line 82
    return-void
.end method
