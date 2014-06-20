.class Lcom/android/lgesettings/bluetooth/DockService$2;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/DockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/DockService;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/DockService;)V
    .locals 0
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/DockService$2;->this$0:Lcom/android/lgesettings/bluetooth/DockService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DockService$2;->this$0:Lcom/android/lgesettings/bluetooth/DockService;

    #getter for: Lcom/android/lgesettings/bluetooth/DockService;->mCheckedItems:[Z
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/DockService;->access$300(Lcom/android/lgesettings/bluetooth/DockService;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    .line 579
    return-void
.end method
