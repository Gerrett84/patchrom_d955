.class Lcom/android/lgesettings/MasterClear$1;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/MasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/MasterClear;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/lgesettings/MasterClear$1;->this$0:Lcom/android/lgesettings/MasterClear;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/lgesettings/MasterClear$1;->this$0:Lcom/android/lgesettings/MasterClear;

    const/16 v1, 0x37

    #calls: Lcom/android/lgesettings/MasterClear;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/MasterClear;->access$000(Lcom/android/lgesettings/MasterClear;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/lgesettings/MasterClear$1;->this$0:Lcom/android/lgesettings/MasterClear;

    #calls: Lcom/android/lgesettings/MasterClear;->showFinalConfirmation()V
    invoke-static {v0}, Lcom/android/lgesettings/MasterClear;->access$100(Lcom/android/lgesettings/MasterClear;)V

    .line 146
    :cond_0
    return-void
.end method
