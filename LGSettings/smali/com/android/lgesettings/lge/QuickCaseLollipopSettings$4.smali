.class Lcom/android/lgesettings/lge/QuickCaseLollipopSettings$4;
.super Ljava/lang/Object;
.source "QuickCaseLollipopSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings$4;->this$0:Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings$4;->this$0:Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->finish()V

    .line 161
    return-void
.end method
