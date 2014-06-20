.class Lcom/android/lgesettings/FontSettingsPreference$6;
.super Ljava/lang/Object;
.source "FontSettingsPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/FontSettingsPreference;->dlgLGSmartWorld()V
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
    .line 268
    iput-object p1, p0, Lcom/android/lgesettings/FontSettingsPreference$6;->this$0:Lcom/android/lgesettings/FontSettingsPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/lgesettings/FontSettingsPreference$6;->this$0:Lcom/android/lgesettings/FontSettingsPreference;

    #calls: Lcom/android/lgesettings/FontSettingsPreference;->goLGSmartWorldDownload()V
    invoke-static {v0}, Lcom/android/lgesettings/FontSettingsPreference;->access$700(Lcom/android/lgesettings/FontSettingsPreference;)V

    .line 271
    return-void
.end method
