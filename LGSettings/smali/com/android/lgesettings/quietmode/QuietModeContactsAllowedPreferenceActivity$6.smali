.class Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$6;
.super Ljava/lang/Object;
.source "QuietModeContactsAllowedPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 776
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$6;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$6;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    #calls: Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->deleteAllContactsAllowed()V
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->access$700(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)V

    .line 779
    return-void
.end method
