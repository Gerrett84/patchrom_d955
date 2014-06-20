.class Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$5;
.super Ljava/lang/Object;
.source "QuietModeDeleteContactsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 674
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$5;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$5;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$5;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mDeleteItemId:[I
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$1200(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->deleteSelectedContactsAllowed([I)V

    .line 677
    return-void
.end method
