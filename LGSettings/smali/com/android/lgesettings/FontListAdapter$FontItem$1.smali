.class Lcom/android/lgesettings/FontListAdapter$FontItem$1;
.super Ljava/lang/Object;
.source "FontListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/FontListAdapter$FontItem;-><init>(Lcom/android/lgesettings/FontListAdapter;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/FontListAdapter$FontItem;

.field final synthetic val$this$0:Lcom/android/lgesettings/FontListAdapter;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/FontListAdapter$FontItem;Lcom/android/lgesettings/FontListAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/lgesettings/FontListAdapter$FontItem$1;->this$1:Lcom/android/lgesettings/FontListAdapter$FontItem;

    iput-object p2, p0, Lcom/android/lgesettings/FontListAdapter$FontItem$1;->val$this$0:Lcom/android/lgesettings/FontListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 229
    .local v0, selectIndex:I
    iget-object v1, p0, Lcom/android/lgesettings/FontListAdapter$FontItem$1;->this$1:Lcom/android/lgesettings/FontListAdapter$FontItem;

    iget-object v1, v1, Lcom/android/lgesettings/FontListAdapter$FontItem;->this$0:Lcom/android/lgesettings/FontListAdapter;

    #getter for: Lcom/android/lgesettings/FontListAdapter;->mDefaultTypefaceIndex:I
    invoke-static {v1}, Lcom/android/lgesettings/FontListAdapter;->access$300(Lcom/android/lgesettings/FontListAdapter;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/android/lgesettings/FontListAdapter$FontItem$1;->this$1:Lcom/android/lgesettings/FontListAdapter$FontItem;

    iget-object v1, v1, Lcom/android/lgesettings/FontListAdapter$FontItem;->this$0:Lcom/android/lgesettings/FontListAdapter;

    #getter for: Lcom/android/lgesettings/FontListAdapter;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;
    invoke-static {v1}, Lcom/android/lgesettings/FontListAdapter;->access$200(Lcom/android/lgesettings/FontListAdapter;)Lcom/android/lgesettings/FontServerConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/lgesettings/FontListAdapter$FontItem$1;->this$1:Lcom/android/lgesettings/FontListAdapter$FontItem;

    iget-object v1, v1, Lcom/android/lgesettings/FontListAdapter$FontItem;->this$0:Lcom/android/lgesettings/FontListAdapter;

    #getter for: Lcom/android/lgesettings/FontListAdapter;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;
    invoke-static {v1}, Lcom/android/lgesettings/FontListAdapter;->access$200(Lcom/android/lgesettings/FontListAdapter;)Lcom/android/lgesettings/FontServerConnection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/FontServerConnection;->selectDefaultTypeface(I)V

    .line 240
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/FontListAdapter$FontItem$1;->this$1:Lcom/android/lgesettings/FontListAdapter$FontItem;

    iget-object v1, v1, Lcom/android/lgesettings/FontListAdapter$FontItem;->this$0:Lcom/android/lgesettings/FontListAdapter;

    #getter for: Lcom/android/lgesettings/FontListAdapter;->mFontSettingsPref:Lcom/android/lgesettings/FontSettingsPreference;
    invoke-static {v1}, Lcom/android/lgesettings/FontListAdapter;->access$500(Lcom/android/lgesettings/FontListAdapter;)Lcom/android/lgesettings/FontSettingsPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/FontSettingsPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 242
    return-void

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/FontListAdapter$FontItem$1;->this$1:Lcom/android/lgesettings/FontListAdapter$FontItem;

    iget-object v1, v1, Lcom/android/lgesettings/FontListAdapter$FontItem;->this$0:Lcom/android/lgesettings/FontListAdapter;

    #getter for: Lcom/android/lgesettings/FontListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/FontListAdapter;->access$400(Lcom/android/lgesettings/FontListAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0811dd

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
