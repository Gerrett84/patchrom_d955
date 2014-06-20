.class Lcom/android/lgesettings/TimedSilentSettings$6$1;
.super Ljava/lang/Object;
.source "TimedSilentSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/TimedSilentSettings$6;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/TimedSilentSettings$6;

.field final synthetic val$dialog:Landroid/content/DialogInterface;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TimedSilentSettings$6;Landroid/content/DialogInterface;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/lgesettings/TimedSilentSettings$6$1;->this$1:Lcom/android/lgesettings/TimedSilentSettings$6;

    iput-object p2, p0, Lcom/android/lgesettings/TimedSilentSettings$6$1;->val$dialog:Landroid/content/DialogInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings$6$1;->this$1:Lcom/android/lgesettings/TimedSilentSettings$6;

    iget-object v0, v0, Lcom/android/lgesettings/TimedSilentSettings$6;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    const-string v1, "Cancel"

    #setter for: Lcom/android/lgesettings/TimedSilentSettings;->position:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/lgesettings/TimedSilentSettings;->access$202(Lcom/android/lgesettings/TimedSilentSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 455
    const-string v0, "soosin"

    const-string v1, "Cancel Listener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings$6$1;->val$dialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 457
    return-void
.end method
