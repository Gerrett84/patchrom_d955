.class Lcom/android/lgesettings/tts/TtsEnginePreference$1;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/tts/TtsEnginePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/tts/TtsEnginePreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/tts/TtsEnginePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/lgesettings/tts/TtsEnginePreference$1;->this$0:Lcom/android/lgesettings/tts/TtsEnginePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/lgesettings/tts/TtsEnginePreference$1;->this$0:Lcom/android/lgesettings/tts/TtsEnginePreference;

    #calls: Lcom/android/lgesettings/tts/TtsEnginePreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
    invoke-static {v0, p1, p2}, Lcom/android/lgesettings/tts/TtsEnginePreference;->access$000(Lcom/android/lgesettings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;Z)V

    .line 92
    return-void
.end method
