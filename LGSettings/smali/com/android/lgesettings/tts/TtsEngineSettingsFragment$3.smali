.class Lcom/android/lgesettings/tts/TtsEngineSettingsFragment$3;
.super Ljava/lang/Object;
.source "TtsEngineSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/tts/TtsEngineSettingsFragment;->confirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/tts/TtsEngineSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/tts/TtsEngineSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/lgesettings/tts/TtsEngineSettingsFragment$3;->this$0:Lcom/android/lgesettings/tts/TtsEngineSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 299
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/tts/TtsEngineSettingsFragment$3;->this$0:Lcom/android/lgesettings/tts/TtsEngineSettingsFragment;

    #calls: Lcom/android/lgesettings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/lgesettings/tts/TtsEngineSettingsFragment;->access$200(Lcom/android/lgesettings/tts/TtsEngineSettingsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 301
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/lgesettings/tts/TtsEngineSettingsFragment$3;->this$0:Lcom/android/lgesettings/tts/TtsEngineSettingsFragment;

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/tts/TtsEngineSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 304
    return-void
.end method
