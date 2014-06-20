.class Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$ImageButtonListener;
.super Ljava/lang/Object;
.source "QuietModeRadioPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$ImageButtonListener;->this$0:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$ImageButtonListener;-><init>(Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 42
    const-string v0, "QuietModeRadioPreference"

    const-string v1, "ImageButton onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$ImageButtonListener;->this$0:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->access$100(Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$ImageButtonListener;->this$0:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->access$200(Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$ImageButtonListener;->this$0:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->access$100(Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    :cond_0
    return-void
.end method
