.class Lcom/android/lgesettings/DisplaySettings$9;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/DisplaySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 914
    iput-object p1, p0, Lcom/android/lgesettings/DisplaySettings$9;->this$0:Lcom/android/lgesettings/DisplaySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings$9;->this$0:Lcom/android/lgesettings/DisplaySettings;

    #getter for: Lcom/android/lgesettings/DisplaySettings;->mFontSizePref:Lcom/android/lgesettings/WarnedListPreference;
    invoke-static {v0}, Lcom/android/lgesettings/DisplaySettings;->access$700(Lcom/android/lgesettings/DisplaySettings;)Lcom/android/lgesettings/WarnedListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/WarnedListPreference;->click()V

    .line 917
    return-void
.end method
