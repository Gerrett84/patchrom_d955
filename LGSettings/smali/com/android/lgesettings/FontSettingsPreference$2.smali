.class Lcom/android/lgesettings/FontSettingsPreference$2;
.super Ljava/lang/Object;
.source "FontSettingsPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/FontSettingsPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/FontSettingsPreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/FontSettingsPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/lgesettings/FontSettingsPreference$2;->this$0:Lcom/android/lgesettings/FontSettingsPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/lgesettings/FontSettingsPreference$2;->this$0:Lcom/android/lgesettings/FontSettingsPreference;

    #calls: Lcom/android/lgesettings/FontSettingsPreference;->isLGSmartWorld()Z
    invoke-static {v0}, Lcom/android/lgesettings/FontSettingsPreference;->access$100(Lcom/android/lgesettings/FontSettingsPreference;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/lgesettings/FontSettingsPreference$2;->this$0:Lcom/android/lgesettings/FontSettingsPreference;

    #calls: Lcom/android/lgesettings/FontSettingsPreference;->goLGSmartWorldFontApps()V
    invoke-static {v0}, Lcom/android/lgesettings/FontSettingsPreference;->access$200(Lcom/android/lgesettings/FontSettingsPreference;)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/FontSettingsPreference$2;->this$0:Lcom/android/lgesettings/FontSettingsPreference;

    #calls: Lcom/android/lgesettings/FontSettingsPreference;->dlgLGSmartWorld()V
    invoke-static {v0}, Lcom/android/lgesettings/FontSettingsPreference;->access$300(Lcom/android/lgesettings/FontSettingsPreference;)V

    goto :goto_0
.end method
