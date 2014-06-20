.class Lcom/android/lgesettings/users/UserSettings$6;
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
    .line 411
    iput-object p1, p0, Lcom/android/lgesettings/users/UserSettings$6;->this$0:Lcom/android/lgesettings/users/UserSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/lgesettings/users/UserSettings$6;->this$0:Lcom/android/lgesettings/users/UserSettings;

    iget-object v1, p0, Lcom/android/lgesettings/users/UserSettings$6;->this$0:Lcom/android/lgesettings/users/UserSettings;

    #getter for: Lcom/android/lgesettings/users/UserSettings;->mAddedUserId:I
    invoke-static {v1}, Lcom/android/lgesettings/users/UserSettings;->access$1100(Lcom/android/lgesettings/users/UserSettings;)I

    move-result v1

    #calls: Lcom/android/lgesettings/users/UserSettings;->switchUserNow(I)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/users/UserSettings;->access$1200(Lcom/android/lgesettings/users/UserSettings;I)V

    .line 414
    return-void
.end method
