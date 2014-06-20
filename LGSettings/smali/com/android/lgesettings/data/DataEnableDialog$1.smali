.class Lcom/android/lgesettings/data/DataEnableDialog$1;
.super Ljava/lang/Object;
.source "DataEnableDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/data/DataEnableDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/data/DataEnableDialog;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/data/DataEnableDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/lgesettings/data/DataEnableDialog$1;->this$0:Lcom/android/lgesettings/data/DataEnableDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/lgesettings/data/DataEnableDialog$1;->this$0:Lcom/android/lgesettings/data/DataEnableDialog;

    #setter for: Lcom/android/lgesettings/data/DataEnableDialog;->mClickedPos:I
    invoke-static {v0, p2}, Lcom/android/lgesettings/data/DataEnableDialog;->access$002(Lcom/android/lgesettings/data/DataEnableDialog;I)I

    .line 85
    iget-object v0, p0, Lcom/android/lgesettings/data/DataEnableDialog$1;->this$0:Lcom/android/lgesettings/data/DataEnableDialog;

    #getter for: Lcom/android/lgesettings/data/DataEnableDialog;->mClickedPos:I
    invoke-static {v0}, Lcom/android/lgesettings/data/DataEnableDialog;->access$000(Lcom/android/lgesettings/data/DataEnableDialog;)I

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/lgesettings/data/DataEnableDialog$1;->this$0:Lcom/android/lgesettings/data/DataEnableDialog;

    #getter for: Lcom/android/lgesettings/data/DataEnableDialog;->tViewDescriptionTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/lgesettings/data/DataEnableDialog;->access$100(Lcom/android/lgesettings/data/DataEnableDialog;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080c71

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object v0, p0, Lcom/android/lgesettings/data/DataEnableDialog$1;->this$0:Lcom/android/lgesettings/data/DataEnableDialog;

    #getter for: Lcom/android/lgesettings/data/DataEnableDialog;->tViewDescription:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/lgesettings/data/DataEnableDialog;->access$200(Lcom/android/lgesettings/data/DataEnableDialog;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080c73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/data/DataEnableDialog$1;->this$0:Lcom/android/lgesettings/data/DataEnableDialog;

    #getter for: Lcom/android/lgesettings/data/DataEnableDialog;->tViewDescriptionTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/lgesettings/data/DataEnableDialog;->access$100(Lcom/android/lgesettings/data/DataEnableDialog;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080c72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 91
    iget-object v0, p0, Lcom/android/lgesettings/data/DataEnableDialog$1;->this$0:Lcom/android/lgesettings/data/DataEnableDialog;

    #getter for: Lcom/android/lgesettings/data/DataEnableDialog;->tViewDescription:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/lgesettings/data/DataEnableDialog;->access$200(Lcom/android/lgesettings/data/DataEnableDialog;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080c74

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
