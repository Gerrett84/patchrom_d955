.class Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$3;
.super Ljava/lang/Object;
.source "QuietModeDeleteContactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 578
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$3;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$3;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->finish()V

    .line 582
    return-void
.end method
