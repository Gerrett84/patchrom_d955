.class Lcom/android/lgesettings/EasyToUse$1;
.super Ljava/lang/Object;
.source "EasyToUse.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/EasyToUse;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/EasyToUse;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/EasyToUse;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/lgesettings/EasyToUse$1;->this$0:Lcom/android/lgesettings/EasyToUse;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/lgesettings/EasyToUse$1;->this$0:Lcom/android/lgesettings/EasyToUse;

    invoke-virtual {v0}, Lcom/android/lgesettings/EasyToUse;->updateEasyUiDB()V

    .line 256
    return-void
.end method
