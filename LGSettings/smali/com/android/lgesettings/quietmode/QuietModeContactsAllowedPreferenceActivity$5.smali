.class Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$5;
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
    .line 723
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$5;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 725
    packed-switch p2, :pswitch_data_0

    .line 761
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 762
    return-void

    .line 728
    :pswitch_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 729
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.contacts.action.GET_CONTENTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    const-string v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    const-string v1, "com.android.contacts.extra.FUNC_CODE"

    const-string v2, "getRecipient"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    const-string v1, "com.android.contacts.extra.ENABLE_SELECTALL"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 733
    const-string v1, "com.android.contacts.extra.ENABLE_TOAST"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 734
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$5;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 735
    .end local v0           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 740
    :pswitch_1
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.CHECK_LIST_GROUPS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 741
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.android.contacts.extra.FUNC_CODE"

    const-string v2, "getGroupMemberNum"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    const-string v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 743
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$5;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 744
    .end local v0           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v1

    goto :goto_0

    .line 749
    :pswitch_2
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 750
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.android.contacts.action.GET_CONTENTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 751
    const-string v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 752
    const-string v1, "com.android.contacts.extra.FUNC_CODE"

    const-string v2, "getFavoritesNum"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    const-string v1, "com.android.contacts.extra.ENABLE_TOAST"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 754
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$5;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 755
    .end local v0           #intent:Landroid/content/Intent;
    :catch_2
    move-exception v1

    goto :goto_0

    .line 725
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
