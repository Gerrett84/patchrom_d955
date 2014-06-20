.class Lcom/android/lgesettings/ApnEditor$1;
.super Ljava/lang/Object;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/ApnEditor;->notifiyWarningApn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/ApnEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 1354
    iput-object p1, p0, Lcom/android/lgesettings/ApnEditor$1;->this$0:Lcom/android/lgesettings/ApnEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1357
    const-string v0, "notifiyWarningApn = finish"

    invoke-static {v0}, Lcom/android/lgesettings/SLog;->i(Ljava/lang/String;)V

    .line 1358
    iget-object v0, p0, Lcom/android/lgesettings/ApnEditor$1;->this$0:Lcom/android/lgesettings/ApnEditor;

    invoke-virtual {v0}, Lcom/android/lgesettings/ApnEditor;->finish()V

    .line 1359
    return-void
.end method
