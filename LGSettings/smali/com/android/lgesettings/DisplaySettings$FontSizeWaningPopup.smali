.class public Lcom/android/lgesettings/DisplaySettings$FontSizeWaningPopup;
.super Landroid/app/DialogFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontSizeWaningPopup"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1154
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/lgesettings/DisplaySettings;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1162
    :goto_0
    return-void

    .line 1159
    :cond_0
    new-instance v0, Lcom/android/lgesettings/DisplaySettings$FontSizeWaningPopup;

    invoke-direct {v0}, Lcom/android/lgesettings/DisplaySettings$FontSizeWaningPopup;-><init>()V

    .line 1160
    .local v0, dialog:Lcom/android/lgesettings/DisplaySettings$FontSizeWaningPopup;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/lgesettings/DisplaySettings$FontSizeWaningPopup;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1161
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "FontSizeWaningPopup"

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/DisplaySettings$FontSizeWaningPopup;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 1206
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 1207
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1202
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x19

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 1166
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings$FontSizeWaningPopup;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1167
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0803ae

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/DisplaySettings$FontSizeWaningPopup;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1168
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings$FontSizeWaningPopup;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1170
    .local v3, textView:Landroid/widget/TextView;
    new-instance v2, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings$FontSizeWaningPopup;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1171
    .local v2, scrollView:Landroid/widget/ScrollView;
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySettings$FontSizeWaningPopup;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1173
    .local v1, linearLayout:Landroid/widget/LinearLayout;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1174
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1175
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1177
    const v5, 0x7f080045

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1178
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1180
    invoke-static {v6}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v4

    .line 1181
    .local v4, tf:Landroid/graphics/Typeface;
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1184
    invoke-virtual {v1, v8, v6, v8, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1185
    const/high16 v5, 0x4190

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1187
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1188
    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1190
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1192
    const v5, 0x104000a

    new-instance v6, Lcom/android/lgesettings/DisplaySettings$FontSizeWaningPopup$1;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/DisplaySettings$FontSizeWaningPopup$1;-><init>(Lcom/android/lgesettings/DisplaySettings$FontSizeWaningPopup;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1198
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 1212
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 1213
    return-void
.end method
