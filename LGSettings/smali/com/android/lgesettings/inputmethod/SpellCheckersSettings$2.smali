.class Lcom/android/lgesettings/inputmethod/SpellCheckersSettings$2;
.super Ljava/lang/Object;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/inputmethod/SpellCheckersSettings;->showSecurityWarnDialog(Lcom/android/lgesettings/inputmethod/SingleSpellCheckerPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/inputmethod/SpellCheckersSettings;

.field final synthetic val$scp:Lcom/android/lgesettings/inputmethod/SingleSpellCheckerPreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/inputmethod/SpellCheckersSettings;Lcom/android/lgesettings/inputmethod/SingleSpellCheckerPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/lgesettings/inputmethod/SpellCheckersSettings$2;->this$0:Lcom/android/lgesettings/inputmethod/SpellCheckersSettings;

    iput-object p2, p0, Lcom/android/lgesettings/inputmethod/SpellCheckersSettings$2;->val$scp:Lcom/android/lgesettings/inputmethod/SingleSpellCheckerPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/SpellCheckersSettings$2;->this$0:Lcom/android/lgesettings/inputmethod/SpellCheckersSettings;

    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/SpellCheckersSettings$2;->val$scp:Lcom/android/lgesettings/inputmethod/SingleSpellCheckerPreference;

    #calls: Lcom/android/lgesettings/inputmethod/SpellCheckersSettings;->changeCurrentSpellChecker(Lcom/android/lgesettings/inputmethod/SingleSpellCheckerPreference;)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/inputmethod/SpellCheckersSettings;->access$000(Lcom/android/lgesettings/inputmethod/SpellCheckersSettings;Lcom/android/lgesettings/inputmethod/SingleSpellCheckerPreference;)V

    .line 137
    return-void
.end method
