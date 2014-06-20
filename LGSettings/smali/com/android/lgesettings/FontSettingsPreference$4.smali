.class Lcom/android/lgesettings/FontSettingsPreference$4;
.super Ljava/lang/Object;
.source "FontSettingsPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/FontSettingsPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/FontSettingsPreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/FontSettingsPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/lgesettings/FontSettingsPreference$4;->this$0:Lcom/android/lgesettings/FontSettingsPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/lgesettings/FontSettingsPreference$4;->this$0:Lcom/android/lgesettings/FontSettingsPreference;

    #getter for: Lcom/android/lgesettings/FontSettingsPreference;->mDefaultTypefaceIndex:I
    invoke-static {v0}, Lcom/android/lgesettings/FontSettingsPreference;->access$400(Lcom/android/lgesettings/FontSettingsPreference;)I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/lgesettings/FontSettingsPreference$4;->this$0:Lcom/android/lgesettings/FontSettingsPreference;

    #getter for: Lcom/android/lgesettings/FontSettingsPreference;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;
    invoke-static {v0}, Lcom/android/lgesettings/FontSettingsPreference;->access$500(Lcom/android/lgesettings/FontSettingsPreference;)Lcom/android/lgesettings/FontServerConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/lgesettings/FontSettingsPreference$4;->this$0:Lcom/android/lgesettings/FontSettingsPreference;

    #getter for: Lcom/android/lgesettings/FontSettingsPreference;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;
    invoke-static {v0}, Lcom/android/lgesettings/FontSettingsPreference;->access$500(Lcom/android/lgesettings/FontSettingsPreference;)Lcom/android/lgesettings/FontServerConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/lgesettings/FontServerConnection;->selectDefaultTypeface(I)V

    .line 144
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 145
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/FontSettingsPreference$4;->this$0:Lcom/android/lgesettings/FontSettingsPreference;

    #getter for: Lcom/android/lgesettings/FontSettingsPreference;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/lgesettings/FontSettingsPreference;->access$600(Lcom/android/lgesettings/FontSettingsPreference;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0811dd

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
