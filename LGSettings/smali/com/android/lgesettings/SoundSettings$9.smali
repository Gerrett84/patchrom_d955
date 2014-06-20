.class Lcom/android/lgesettings/SoundSettings$9;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/SoundSettings;->do_InitRunnableMenu_touch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/SoundSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1883
    iput-object p1, p0, Lcom/android/lgesettings/SoundSettings$9;->this$0:Lcom/android/lgesettings/SoundSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1885
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings$9;->this$0:Lcom/android/lgesettings/SoundSettings;

    #getter for: Lcom/android/lgesettings/SoundSettings;->mTouchSoundsPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/SoundSettings;->access$1100(Lcom/android/lgesettings/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 1886
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings$9;->this$0:Lcom/android/lgesettings/SoundSettings;

    #calls: Lcom/android/lgesettings/SoundSettings;->UpdateSoundEffect(Z)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/SoundSettings;->access$1200(Lcom/android/lgesettings/SoundSettings;Z)V

    .line 1890
    :goto_0
    return-void

    .line 1888
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings$9;->this$0:Lcom/android/lgesettings/SoundSettings;

    const/4 v1, 0x0

    #calls: Lcom/android/lgesettings/SoundSettings;->UpdateSoundEffect(Z)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/SoundSettings;->access$1200(Lcom/android/lgesettings/SoundSettings;Z)V

    goto :goto_0
.end method
