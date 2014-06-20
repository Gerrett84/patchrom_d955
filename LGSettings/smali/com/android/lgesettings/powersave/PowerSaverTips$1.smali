.class Lcom/android/lgesettings/powersave/PowerSaverTips$1;
.super Ljava/lang/Object;
.source "PowerSaverTips.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/powersave/PowerSaverTips;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/powersave/PowerSaverTips;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/powersave/PowerSaverTips;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/lgesettings/powersave/PowerSaverTips$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaverTips;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaverTips$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaverTips;

    invoke-virtual {v0}, Lcom/android/lgesettings/powersave/PowerSaverTips;->finishFragment()V

    .line 96
    return-void
.end method
