.class Lcom/android/lgesettings/lge/ScreenOffEffect$1;
.super Ljava/lang/Object;
.source "ScreenOffEffect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lge/ScreenOffEffect;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/ScreenOffEffect;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/ScreenOffEffect;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/lgesettings/lge/ScreenOffEffect$1;->this$0:Lcom/android/lgesettings/lge/ScreenOffEffect;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/lgesettings/lge/ScreenOffEffect$1;->this$0:Lcom/android/lgesettings/lge/ScreenOffEffect;

    invoke-virtual {v0}, Lcom/android/lgesettings/lge/ScreenOffEffect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/lgesettings/lge/ScreenOffEffect$1;->this$0:Lcom/android/lgesettings/lge/ScreenOffEffect;

    invoke-virtual {v2}, Lcom/android/lgesettings/lge/ScreenOffEffect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/lgesettings/lge/ScreenOffEttectAni;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void
.end method
