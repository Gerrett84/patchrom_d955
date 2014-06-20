.class Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter$2;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;

.field final synthetic val$row:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter$2;->this$1:Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;

    iput-object p2, p0, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter$2;->val$row:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter$2;->this$1:Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;

    iget-object v0, v0, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;->this$0:Lcom/android/lgesettings/DreamSettings;

    #getter for: Lcom/android/lgesettings/DreamSettings;->mBackend:Lcom/android/lgesettings/DreamBackend;
    invoke-static {v0}, Lcom/android/lgesettings/DreamSettings;->access$300(Lcom/android/lgesettings/DreamSettings;)Lcom/android/lgesettings/DreamBackend;

    move-result-object v1

    iget-object v0, p0, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter$2;->val$row:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/DreamBackend$DreamInfo;

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/DreamBackend;->launchSettings(Lcom/android/lgesettings/DreamBackend$DreamInfo;)V

    .line 483
    return-void
.end method
