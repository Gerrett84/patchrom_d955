.class Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$6;
.super Ljava/lang/Object;
.source "ExceptScanListMultiSelectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$6;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$6;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$6;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mDeleteItemId:[I
    invoke-static {v1}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$1200(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->deleteSelectedMessage([I)V

    .line 566
    return-void
.end method
