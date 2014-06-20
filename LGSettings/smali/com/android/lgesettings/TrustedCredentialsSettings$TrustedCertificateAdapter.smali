.class Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;
.super Landroid/widget/BaseAdapter;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrustedCertificateAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;
    }
.end annotation


# instance fields
.field private final mCertHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mTab:Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;

.field final synthetic this$0:Lcom/android/lgesettings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/TrustedCredentialsSettings;Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;)V
    .locals 1
    .parameter
    .parameter "tab"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/lgesettings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;

    .line 176
    iput-object p2, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;

    .line 177
    invoke-direct {p0}, Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->load()V

    .line 178
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/TrustedCredentialsSettings;Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;Lcom/android/lgesettings/TrustedCredentialsSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;-><init>(Lcom/android/lgesettings/TrustedCredentialsSettings;Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->load()V

    return-void
.end method

.method private load()V
    .locals 2

    .prologue
    .line 180
    new-instance v0, Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;-><init>(Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/android/lgesettings/TrustedCredentialsSettings$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 181
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;
    .locals 1
    .parameter "position"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->getItem(I)Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 189
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 193
    if-nez p2, :cond_1

    .line 194
    iget-object v3, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/lgesettings/TrustedCredentialsSettings;

    invoke-virtual {v3}, Lcom/android/lgesettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 195
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f04016c

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 196
    new-instance v1, Lcom/android/lgesettings/TrustedCredentialsSettings$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/lgesettings/TrustedCredentialsSettings$ViewHolder;-><init>(Lcom/android/lgesettings/TrustedCredentialsSettings$1;)V

    .line 197
    .local v1, holder:Lcom/android/lgesettings/TrustedCredentialsSettings$ViewHolder;
    const v3, 0x7f0a032d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    #setter for: Lcom/android/lgesettings/TrustedCredentialsSettings$ViewHolder;->mSubjectPrimaryView:Landroid/widget/TextView;
    invoke-static {v1, v3}, Lcom/android/lgesettings/TrustedCredentialsSettings$ViewHolder;->access$1302(Lcom/android/lgesettings/TrustedCredentialsSettings$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 199
    const v3, 0x7f0a032e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    #setter for: Lcom/android/lgesettings/TrustedCredentialsSettings$ViewHolder;->mSubjectSecondaryView:Landroid/widget/TextView;
    invoke-static {v1, v3}, Lcom/android/lgesettings/TrustedCredentialsSettings$ViewHolder;->access$1402(Lcom/android/lgesettings/TrustedCredentialsSettings$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 201
    const v3, 0x7f0a032f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    #setter for: Lcom/android/lgesettings/TrustedCredentialsSettings$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1, v3}, Lcom/android/lgesettings/TrustedCredentialsSettings$ViewHolder;->access$1502(Lcom/android/lgesettings/TrustedCredentialsSettings$ViewHolder;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 202
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 206
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v3, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;

    .line 207
    .local v0, certHolder:Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;
    #getter for: Lcom/android/lgesettings/TrustedCredentialsSettings$ViewHolder;->mSubjectPrimaryView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/lgesettings/TrustedCredentialsSettings$ViewHolder;->access$1300(Lcom/android/lgesettings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    #getter for: Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->access$1600(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    #getter for: Lcom/android/lgesettings/TrustedCredentialsSettings$ViewHolder;->mSubjectSecondaryView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/lgesettings/TrustedCredentialsSettings$ViewHolder;->access$1400(Lcom/android/lgesettings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    #getter for: Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->access$1700(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v3, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;

    #getter for: Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->mCheckbox:Z
    invoke-static {v3}, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->access$1800(Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    #getter for: Lcom/android/lgesettings/TrustedCredentialsSettings$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/lgesettings/TrustedCredentialsSettings$ViewHolder;->access$1500(Lcom/android/lgesettings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v5

    #getter for: Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {v0}, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 211
    #getter for: Lcom/android/lgesettings/TrustedCredentialsSettings$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/lgesettings/TrustedCredentialsSettings$ViewHolder;->access$1500(Lcom/android/lgesettings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 213
    :cond_0
    return-object p2

    .line 204
    .end local v0           #certHolder:Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;
    .end local v1           #holder:Lcom/android/lgesettings/TrustedCredentialsSettings$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/TrustedCredentialsSettings$ViewHolder;

    .restart local v1       #holder:Lcom/android/lgesettings/TrustedCredentialsSettings$ViewHolder;
    goto :goto_0

    .restart local v0       #certHolder:Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;
    :cond_2
    move v3, v4

    .line 210
    goto :goto_1
.end method
