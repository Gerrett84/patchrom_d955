.class Lcom/android/lgesettings/TimedSilentSettings$4;
.super Ljava/lang/Object;
.source "TimedSilentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/TimedSilentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/TimedSilentSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TimedSilentSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/lgesettings/TimedSilentSettings$4;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings$4;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    const-string v1, "Cancel"

    #setter for: Lcom/android/lgesettings/TimedSilentSettings;->position:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/lgesettings/TimedSilentSettings;->access$202(Lcom/android/lgesettings/TimedSilentSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 364
    return-void
.end method
