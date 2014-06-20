.class Lcom/android/lgesettings/VibrateTypeListPreference$3;
.super Ljava/lang/Object;
.source "VibrateTypeListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/VibrateTypeListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/VibrateTypeListPreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/VibrateTypeListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/lgesettings/VibrateTypeListPreference$3;->this$0:Lcom/android/lgesettings/VibrateTypeListPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 63
    const-string v0, "VibrateTypeListPreference"

    const-string v1, "PositiveButton OnClickListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypeListPreference$3;->this$0:Lcom/android/lgesettings/VibrateTypeListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->onDialogClosed(Z)V

    .line 65
    return-void
.end method
