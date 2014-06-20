.class Lcom/android/lgesettings/DreamSettings$1;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/DreamSettings;->onCreate(Landroid/os/Bundle;)V
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
    .line 156
    iput-object p1, p0, Lcom/android/lgesettings/DreamSettings$1;->this$0:Lcom/android/lgesettings/DreamSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/lgesettings/DreamSettings$1;->this$0:Lcom/android/lgesettings/DreamSettings;

    #getter for: Lcom/android/lgesettings/DreamSettings;->mRefreshing:Z
    invoke-static {v0}, Lcom/android/lgesettings/DreamSettings;->access$200(Lcom/android/lgesettings/DreamSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/lgesettings/DreamSettings$1;->this$0:Lcom/android/lgesettings/DreamSettings;

    #getter for: Lcom/android/lgesettings/DreamSettings;->mBackend:Lcom/android/lgesettings/DreamBackend;
    invoke-static {v0}, Lcom/android/lgesettings/DreamSettings;->access$300(Lcom/android/lgesettings/DreamSettings;)Lcom/android/lgesettings/DreamBackend;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/lgesettings/DreamBackend;->setEnabled(Z)V

    .line 161
    iget-object v0, p0, Lcom/android/lgesettings/DreamSettings$1;->this$0:Lcom/android/lgesettings/DreamSettings;

    #calls: Lcom/android/lgesettings/DreamSettings;->refreshFromBackend()V
    invoke-static {v0}, Lcom/android/lgesettings/DreamSettings;->access$400(Lcom/android/lgesettings/DreamSettings;)V

    .line 163
    :cond_0
    return-void
.end method
