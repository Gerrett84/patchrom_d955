.class Lcom/android/lgesettings/lge/EmotionalLEDEffect$1;
.super Landroid/database/ContentObserver;
.source "EmotionalLEDEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/EmotionalLEDEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/EmotionalLEDEffect;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/EmotionalLEDEffect;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect$1;->this$0:Lcom/android/lgesettings/lge/EmotionalLEDEffect;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect$1;->this$0:Lcom/android/lgesettings/lge/EmotionalLEDEffect;

    #calls: Lcom/android/lgesettings/lge/EmotionalLEDEffect;->updateNotificationCheckbox()V
    invoke-static {v0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->access$000(Lcom/android/lgesettings/lge/EmotionalLEDEffect;)V

    .line 144
    return-void
.end method
