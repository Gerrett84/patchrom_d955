.class Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14;
.super Ljava/lang/Object;
.source "VibrateCreateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->createRenameDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

.field final synthetic val$edit:Landroid/widget/EditText;

.field final synthetic val$filter:Lcom/android/lgesettings/quietmode/ByteLengthFilter;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;Landroid/widget/EditText;Lcom/android/lgesettings/quietmode/ByteLengthFilter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 784
    iput-object p1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    iput-object p2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14;->val$edit:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14;->val$filter:Lcom/android/lgesettings/quietmode/ByteLengthFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14;->val$edit:Landroid/widget/EditText;

    new-instance v1, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14$1;

    invoke-direct {v1, p0, p1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14$1;-><init>(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14;Landroid/content/DialogInterface;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 828
    return-void
.end method
