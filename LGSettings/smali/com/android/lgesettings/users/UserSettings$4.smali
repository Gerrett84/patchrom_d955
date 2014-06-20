.class Lcom/android/lgesettings/users/UserSettings$4;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/users/UserSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/users/UserSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/lgesettings/users/UserSettings$4;->this$0:Lcom/android/lgesettings/users/UserSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/lgesettings/users/UserSettings$4;->this$0:Lcom/android/lgesettings/users/UserSettings;

    #calls: Lcom/android/lgesettings/users/UserSettings;->removeUserNow()V
    invoke-static {v0}, Lcom/android/lgesettings/users/UserSettings;->access$900(Lcom/android/lgesettings/users/UserSettings;)V

    .line 381
    return-void
.end method
