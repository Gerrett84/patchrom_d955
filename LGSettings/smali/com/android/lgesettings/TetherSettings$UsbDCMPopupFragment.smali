.class Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;
.super Landroid/app/DialogFragment;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbDCMPopupFragment"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/TetherSettings;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/TetherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 719
    iput-object p1, p0, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;->this$0:Lcom/android/lgesettings/TetherSettings;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/TetherSettings;Lcom/android/lgesettings/TetherSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 719
    invoke-direct {p0, p1}, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;-><init>(Lcom/android/lgesettings/TetherSettings;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 830
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;->this$0:Lcom/android/lgesettings/TetherSettings;

    #calls: Lcom/android/lgesettings/TetherSettings;->setUsbTethering(Z)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/TetherSettings;->access$100(Lcom/android/lgesettings/TetherSettings;Z)V

    .line 832
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/TetherSettings;->access$200(Lcom/android/lgesettings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 833
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;->this$0:Lcom/android/lgesettings/TetherSettings;

    #calls: Lcom/android/lgesettings/TetherSettings;->updateState()V
    invoke-static {v0}, Lcom/android/lgesettings/TetherSettings;->access$300(Lcom/android/lgesettings/TetherSettings;)V

    .line 834
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 835
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 725
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 729
    .local v6, locale:Ljava/util/Locale;
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 731
    .local v2, am:Landroid/content/res/AssetManager;
    const-string v12, "html/%y%z/tether_attention_%x.html"

    const-string v13, "%y"

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 733
    .local v8, path:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v12

    const-string v13, "JP"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 734
    const-string v12, "html/%y%z/tether_attention_%x.html"

    const-string v13, "%y"

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 735
    const-string v12, "%z"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 736
    const-string v12, "%x"

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 744
    :goto_0
    const/4 v10, 0x1

    .line 745
    .local v10, useCountry:Z
    const/4 v5, 0x0

    .line 748
    .local v5, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v2, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 752
    if-eqz v5, :cond_0

    .line 754
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 760
    :cond_0
    :goto_1
    const-string v12, "file:///android_asset/html/%y%z/tether_attention_%x.html"

    const-string v13, "%y"

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 762
    .local v9, url:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v12

    const-string v13, "JP"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 763
    const-string v12, "file:///android_asset/html/%y%z/tether_attention_%x.html"

    const-string v13, "%y"

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 764
    const-string v13, "%z"

    if-eqz v10, :cond_4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_2
    invoke-virtual {v9, v13, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 765
    const-string v12, "%x"

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 774
    :goto_3
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;->getActivity()Landroid/app/Activity;

    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 776
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v12, 0x7f040164

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 777
    .local v0, alertDialogView:Landroid/view/View;
    const v12, 0x7f0a030a

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/webkit/WebView;

    .line 780
    .local v7, mAttentionView:Landroid/webkit/WebView;
    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v11

    .line 781
    .local v11, ws:Landroid/webkit/WebSettings;
    if-eqz v11, :cond_1

    .line 782
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 783
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 785
    :cond_1
    invoke-virtual {v7, v9}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 787
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v1, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 788
    .local v1, altDialog:Landroid/app/AlertDialog$Builder;
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 789
    const v12, 0x1010355

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 790
    const v12, 0x7f08031d

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 791
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 792
    new-instance v12, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment$1;

    invoke-direct {v12, p0}, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment$1;-><init>(Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;)V

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 807
    const v12, 0x7f08031f

    new-instance v13, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment$2;

    invoke-direct {v13, p0}, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment$2;-><init>(Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;)V

    invoke-virtual {v1, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 816
    const v12, 0x7f08031e

    new-instance v13, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment$3;

    invoke-direct {v13, p0}, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment$3;-><init>(Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;)V

    invoke-virtual {v1, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 823
    iget-object v12, p0, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;->this$0:Lcom/android/lgesettings/TetherSettings;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v13

    #setter for: Lcom/android/lgesettings/TetherSettings;->mDCMAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v12, v13}, Lcom/android/lgesettings/TetherSettings;->access$402(Lcom/android/lgesettings/TetherSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 824
    iget-object v12, p0, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mDCMAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v12}, Lcom/android/lgesettings/TetherSettings;->access$400(Lcom/android/lgesettings/TetherSettings;)Landroid/app/AlertDialog;

    move-result-object v12

    return-object v12

    .line 738
    .end local v0           #alertDialogView:Landroid/view/View;
    .end local v1           #altDialog:Landroid/app/AlertDialog$Builder;
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v7           #mAttentionView:Landroid/webkit/WebView;
    .end local v9           #url:Ljava/lang/String;
    .end local v10           #useCountry:Z
    .end local v11           #ws:Landroid/webkit/WebSettings;
    :cond_2
    const-string v12, "html/%y%z/tether_attention_%x.html"

    const-string v13, "%y"

    const-string v14, "en"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 739
    const-string v12, "%z"

    const-string v13, "_us"

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 740
    const-string v12, "%x"

    const-string v13, "en"

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 749
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v10       #useCountry:Z
    :catch_0
    move-exception v3

    .line 750
    .local v3, e:Ljava/lang/Exception;
    const/4 v10, 0x0

    .line 752
    if-eqz v5, :cond_0

    .line 754
    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 755
    :catch_1
    move-exception v12

    goto/16 :goto_1

    .line 752
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    if-eqz v5, :cond_3

    .line 754
    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 756
    :cond_3
    :goto_4
    throw v12

    .line 764
    .restart local v9       #url:Ljava/lang/String;
    :cond_4
    const-string v12, ""

    goto/16 :goto_2

    .line 767
    :cond_5
    const-string v12, "file:///android_asset/html/%y%z/tether_attention_%x.html"

    const-string v13, "%y"

    const-string v14, "en"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 768
    const-string v13, "%z"

    if-eqz v10, :cond_6

    const-string v12, "_us"

    :goto_5
    invoke-virtual {v9, v13, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 769
    const-string v12, "%x"

    const-string v13, "en"

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3

    .line 768
    :cond_6
    const-string v12, ""

    goto :goto_5

    .line 755
    .end local v9           #url:Ljava/lang/String;
    :catch_2
    move-exception v12

    goto/16 :goto_1

    :catch_3
    move-exception v13

    goto :goto_4
.end method
