.class Lcom/android/lgesettings/TimedSilentSettings$2;
.super Ljava/lang/Object;
.source "TimedSilentSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/TimedSilentSettings;->onCreate(Landroid/os/Bundle;)V
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
    .line 201
    iput-object p1, p0, Lcom/android/lgesettings/TimedSilentSettings$2;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings$2;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    #calls: Lcom/android/lgesettings/TimedSilentSettings;->OnSilentGroupClick(Z)V
    invoke-static {v0, p2}, Lcom/android/lgesettings/TimedSilentSettings;->access$000(Lcom/android/lgesettings/TimedSilentSettings;Z)V

    .line 205
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings$2;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    #calls: Lcom/android/lgesettings/TimedSilentSettings;->setlayoutVisible(Z)V
    invoke-static {v0, p2}, Lcom/android/lgesettings/TimedSilentSettings;->access$100(Lcom/android/lgesettings/TimedSilentSettings;Z)V

    .line 206
    return-void
.end method
