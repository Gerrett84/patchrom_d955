.class Lcom/android/lgesettings/DreamSettings$4;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/DreamSettings;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DreamSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DreamSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/lgesettings/DreamSettings$4;->this$0:Lcom/android/lgesettings/DreamSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/lgesettings/DreamSettings$4;->this$0:Lcom/android/lgesettings/DreamSettings;

    #getter for: Lcom/android/lgesettings/DreamSettings;->mBackend:Lcom/android/lgesettings/DreamBackend;
    invoke-static {v0}, Lcom/android/lgesettings/DreamSettings;->access$300(Lcom/android/lgesettings/DreamSettings;)Lcom/android/lgesettings/DreamBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/DreamBackend;->startDreaming()V

    .line 259
    return-void
.end method
