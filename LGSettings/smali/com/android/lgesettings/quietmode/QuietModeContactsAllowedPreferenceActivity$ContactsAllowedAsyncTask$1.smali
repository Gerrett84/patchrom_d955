.class Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask$1;
.super Ljava/lang/Object;
.source "QuietModeContactsAllowedPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;-><init>(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;[J[JLandroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;

.field final synthetic val$this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 942
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask$1;->this$1:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;

    iput-object p2, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask$1;->val$this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 944
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/16 v0, 0x54

    if-ne p2, v0, :cond_1

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask$1;->this$1:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;

    iget-object v0, v0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->finish()V

    .line 947
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
