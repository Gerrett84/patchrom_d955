.class Lcom/android/lgesettings/wifi/ExceptScanListActivity$3;
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
    .line 635
    iput-object p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$3;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$3;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    #calls: Lcom/android/lgesettings/wifi/ExceptScanListActivity;->ExceptScanListRemoveAll()V
    invoke-static {v0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->access$800(Lcom/android/lgesettings/wifi/ExceptScanListActivity;)V

    .line 638
    return-void
.end method
