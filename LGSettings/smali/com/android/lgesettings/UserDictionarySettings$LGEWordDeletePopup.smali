.class Lcom/android/lgesettings/UserDictionarySettings$LGEWordDeletePopup;
.super Landroid/app/DialogFragment;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/UserDictionarySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LGEWordDeletePopup"
.end annotation


# instance fields
.field private final mShortcut:Ljava/lang/String;

.field private final mWord:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "word"
    .parameter "shortcut"

    .prologue
    .line 618
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 619
    iput-object p1, p0, Lcom/android/lgesettings/UserDictionarySettings$LGEWordDeletePopup;->mWord:Ljava/lang/String;

    .line 620
    iput-object p2, p0, Lcom/android/lgesettings/UserDictionarySettings$LGEWordDeletePopup;->mShortcut:Ljava/lang/String;

    .line 621
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "buttonType"

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/android/lgesettings/UserDictionarySettings$LGEWordDeletePopup;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 654
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/android/lgesettings/UserDictionarySettings$LGEWordDeletePopup;->mWord:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 668
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 657
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 659
    :pswitch_1
    iget-object v1, p0, Lcom/android/lgesettings/UserDictionarySettings$LGEWordDeletePopup;->mWord:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/lgesettings/UserDictionarySettings$LGEWordDeletePopup;->mShortcut:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/lgesettings/UserDictionarySettings;->deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    goto :goto_0

    .line 657
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/android/lgesettings/UserDictionarySettings$LGEWordDeletePopup;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 625
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 626
    const/4 v6, 0x0

    .line 649
    :goto_0
    return-object v6

    .line 628
    :cond_0
    const v6, 0x7f080618

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/UserDictionarySettings$LGEWordDeletePopup;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 629
    .local v4, title:Ljava/lang/String;
    const v6, 0x7f0812a1

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/UserDictionarySettings$LGEWordDeletePopup;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 630
    .local v2, msg:Ljava/lang/String;
    const v6, 0x7f080016

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/UserDictionarySettings$LGEWordDeletePopup;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 631
    .local v3, no:Ljava/lang/String;
    const v6, 0x7f080015

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/UserDictionarySettings$LGEWordDeletePopup;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 632
    .local v5, yes:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 633
    const-string v2, "Word will be deleted. Continue?"

    .line 635
    :cond_1
    if-nez v3, :cond_2

    .line 636
    const-string v3, "NO"

    .line 638
    :cond_2
    if-nez v5, :cond_3

    .line 639
    const-string v5, "YES"

    .line 641
    :cond_3
    if-nez v4, :cond_4

    .line 642
    const-string v4, "Delete"

    .line 644
    :cond_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 645
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1010355

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 649
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto :goto_0
.end method
