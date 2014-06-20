.class Lcom/android/lgesettings/TrustedCredentialsSettings$1;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/TrustedCredentialsSettings;->addTab(Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/TrustedCredentialsSettings;

.field final synthetic val$adapter:Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TrustedCredentialsSettings;Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$1;->this$0:Lcom/android/lgesettings/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$1;->val$adapter:Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$1;->this$0:Lcom/android/lgesettings/TrustedCredentialsSettings;

    iget-object v1, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$1;->val$adapter:Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-virtual {v1, p3}, Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->getItem(I)Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    #calls: Lcom/android/lgesettings/TrustedCredentialsSettings;->showCertDialog(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/TrustedCredentialsSettings;->access$1000(Lcom/android/lgesettings/TrustedCredentialsSettings;Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)V

    .line 168
    return-void
.end method
