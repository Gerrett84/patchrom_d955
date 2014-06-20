.class public Lcom/android/lgesettings/AccountPreference;
.super Landroid/preference/Preference;
.source "AccountPreference.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountType:Ljava/lang/String;

.field private mAuthenticatorHelper:Lcom/android/lgesettings/accounts/AuthenticatorHelper;

.field private mAuthorities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSkipToAccount:Z

.field private mShowTypeIcon:Z

.field private mStatus:I

.field private mSyncStatusIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;ZI)V
    .locals 3
    .parameter "context"
    .parameter "account"
    .parameter "icon"
    .parameter
    .parameter "showTypeIcon"
    .parameter "startPoint"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .local p4, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 56
    if-nez p6, :cond_0

    .line 57
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/AccountPreference;->setLayoutResource(I)V

    .line 61
    :goto_0
    iput-object p2, p0, Lcom/android/lgesettings/AccountPreference;->mAccount:Landroid/accounts/Account;

    .line 62
    iput-object p4, p0, Lcom/android/lgesettings/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    .line 63
    iput-boolean p5, p0, Lcom/android/lgesettings/AccountPreference;->mShowTypeIcon:Z

    .line 64
    if-eqz p5, :cond_1

    .line 65
    invoke-virtual {p0, p3}, Lcom/android/lgesettings/AccountPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 69
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/AccountPreference;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/AccountPreference;->setPersistent(Z)V

    .line 72
    invoke-virtual {p0, v2, v1}, Lcom/android/lgesettings/AccountPreference;->setSyncStatus(IZ)V

    .line 73
    return-void

    .line 59
    :cond_0
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/AccountPreference;->setLayoutResource(I)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/lgesettings/AccountPreference;->getSyncStatusIcon(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/AccountPreference;->setIcon(I)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;ZZLjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "account"
    .parameter "icon"
    .parameter
    .parameter "showTypeIcon"
    .parameter "isSkip"
    .parameter "accountType"
    .parameter "accountLabel"
    .parameter "startPoint"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p4, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 77
    if-nez p9, :cond_0

    .line 78
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/AccountPreference;->setLayoutResource(I)V

    .line 82
    :goto_0
    iput-object p7, p0, Lcom/android/lgesettings/AccountPreference;->mAccountType:Ljava/lang/String;

    .line 83
    iput-boolean p6, p0, Lcom/android/lgesettings/AccountPreference;->mIsSkipToAccount:Z

    .line 84
    iput-object p2, p0, Lcom/android/lgesettings/AccountPreference;->mAccount:Landroid/accounts/Account;

    .line 85
    iput-object p4, p0, Lcom/android/lgesettings/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    .line 86
    iput-boolean p5, p0, Lcom/android/lgesettings/AccountPreference;->mShowTypeIcon:Z

    .line 87
    if-eqz p5, :cond_1

    .line 88
    invoke-virtual {p0, p3}, Lcom/android/lgesettings/AccountPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 93
    :goto_1
    new-instance v0, Lcom/android/lgesettings/accounts/AuthenticatorHelper;

    invoke-direct {v0}, Lcom/android/lgesettings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/AccountPreference;->mAuthenticatorHelper:Lcom/android/lgesettings/accounts/AuthenticatorHelper;

    .line 95
    if-nez p8, :cond_2

    .line 96
    const-string v0, " "

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    :goto_2
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/AccountPreference;->setPersistent(Z)V

    .line 102
    invoke-virtual {p0, v2, v1}, Lcom/android/lgesettings/AccountPreference;->setSyncStatus(IZ)V

    .line 103
    return-void

    .line 80
    :cond_0
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/AccountPreference;->setLayoutResource(I)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/lgesettings/AccountPreference;->getSyncStatusIcon(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/AccountPreference;->setIcon(I)V

    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {p0, p8}, Lcom/android/lgesettings/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method private getSyncContentDescription(I)Ljava/lang/String;
    .locals 4
    .parameter "status"

    .prologue
    const v3, 0x7f080770

    .line 187
    packed-switch p1, :pswitch_data_0

    .line 195
    const-string v0, "AccountPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sync status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0}, Lcom/android/lgesettings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 189
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/lgesettings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08076e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 191
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/lgesettings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08076f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 193
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/lgesettings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSyncStatusIcon(I)I
    .locals 4
    .parameter "status"

    .prologue
    .line 166
    packed-switch p1, :pswitch_data_0

    .line 180
    const v0, 0x7f020231

    .line 181
    .local v0, res:I
    const-string v1, "AccountPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sync status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_0
    return v0

    .line 168
    .end local v0           #res:I
    :pswitch_0
    const v0, 0x7f02022d

    .line 169
    .restart local v0       #res:I
    goto :goto_0

    .line 171
    .end local v0           #res:I
    :pswitch_1
    const v0, 0x7f02022f

    .line 172
    .restart local v0       #res:I
    goto :goto_0

    .line 174
    .end local v0           #res:I
    :pswitch_2
    const v0, 0x7f020231

    .line 175
    .restart local v0       #res:I
    goto :goto_0

    .line 177
    .end local v0           #res:I
    :pswitch_3
    const v0, 0x7f02022d

    .line 178
    .restart local v0       #res:I
    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getSyncStatusMessage(I)I
    .locals 4
    .parameter "status"

    .prologue
    .line 144
    packed-switch p1, :pswitch_data_0

    .line 158
    const v0, 0x7f08077d

    .line 159
    .local v0, res:I
    const-string v1, "AccountPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sync status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    return v0

    .line 146
    .end local v0           #res:I
    :pswitch_0
    const v0, 0x7f08077b

    .line 147
    .restart local v0       #res:I
    goto :goto_0

    .line 149
    .end local v0           #res:I
    :pswitch_1
    const v0, 0x7f08077c

    .line 150
    .restart local v0       #res:I
    goto :goto_0

    .line 152
    .end local v0           #res:I
    :pswitch_2
    const v0, 0x7f08077d

    .line 153
    .restart local v0       #res:I
    goto :goto_0

    .line 155
    .end local v0           #res:I
    :pswitch_3
    const v0, 0x7f08077f

    .line 156
    .restart local v0       #res:I
    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/lgesettings/AccountPreference;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/lgesettings/AccountPreference;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorities()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/lgesettings/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIsSkip()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/lgesettings/AccountPreference;->mIsSkipToAccount:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 124
    iget-boolean v0, p0, Lcom/android/lgesettings/AccountPreference;->mShowTypeIcon:Z

    if-nez v0, :cond_0

    .line 125
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/lgesettings/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    .line 126
    iget-object v0, p0, Lcom/android/lgesettings/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/lgesettings/AccountPreference;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/lgesettings/AccountPreference;->getSyncStatusIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    iget-object v0, p0, Lcom/android/lgesettings/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/lgesettings/AccountPreference;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/lgesettings/AccountPreference;->getSyncContentDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 129
    :cond_0
    return-void
.end method

.method public setSyncStatus(IZ)V
    .locals 2
    .parameter "status"
    .parameter "updateSummary"

    .prologue
    .line 132
    iput p1, p0, Lcom/android/lgesettings/AccountPreference;->mStatus:I

    .line 133
    iget-boolean v0, p0, Lcom/android/lgesettings/AccountPreference;->mShowTypeIcon:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/lgesettings/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/lgesettings/AccountPreference;->getSyncStatusIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget-object v0, p0, Lcom/android/lgesettings/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/lgesettings/AccountPreference;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/lgesettings/AccountPreference;->getSyncContentDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 137
    :cond_0
    if-eqz p2, :cond_1

    .line 138
    invoke-direct {p0, p1}, Lcom/android/lgesettings/AccountPreference;->getSyncStatusMessage(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/AccountPreference;->setSummary(I)V

    .line 140
    :cond_1
    return-void
.end method
