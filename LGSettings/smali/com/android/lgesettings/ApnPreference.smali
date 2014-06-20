.class public Lcom/android/lgesettings/ApnPreference;
.super Landroid/preference/Preference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mLockable:Z

.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    sput-object v0, Lcom/android/lgesettings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 72
    sput-object v0, Lcom/android/lgesettings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 73
    iput-boolean v1, p0, Lcom/android/lgesettings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/ApnPreference;->mSelectable:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/lgesettings/ApnPreference;->mLockable:Z

    .line 68
    invoke-direct {p0}, Lcom/android/lgesettings/ApnPreference;->init()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    iput-boolean v1, p0, Lcom/android/lgesettings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/ApnPreference;->mSelectable:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/lgesettings/ApnPreference;->mLockable:Z

    .line 60
    invoke-direct {p0}, Lcom/android/lgesettings/ApnPreference;->init()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    iput-boolean v1, p0, Lcom/android/lgesettings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/ApnPreference;->mSelectable:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/lgesettings/ApnPreference;->mLockable:Z

    .line 51
    invoke-direct {p0}, Lcom/android/lgesettings/ApnPreference;->init()V

    .line 52
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 117
    const-string v0, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const v0, 0x7f04000e

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/ApnPreference;->setLayoutResource(I)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    const v0, 0x7f04000d

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/ApnPreference;->setLayoutResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getLockable()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/android/lgesettings/ApnPreference;->mLockable:Z

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 81
    .local v4, view:Landroid/view/View;
    const v6, 0x7f0a0020

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 82
    .local v5, widget:Landroid/view/View;
    if-eqz v5, :cond_1

    instance-of v6, v5, Landroid/widget/RadioButton;

    if-eqz v6, :cond_1

    move-object v2, v5

    .line 83
    check-cast v2, Landroid/widget/RadioButton;

    .line 84
    .local v2, rb:Landroid/widget/RadioButton;
    iget-boolean v6, p0, Lcom/android/lgesettings/ApnPreference;->mSelectable:Z

    if-eqz v6, :cond_4

    .line 85
    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 86
    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/lgesettings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/lgesettings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 88
    .local v0, isChecked:Z
    if-eqz v0, :cond_0

    .line 89
    sput-object v2, Lcom/android/lgesettings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 90
    invoke-virtual {p0}, Lcom/android/lgesettings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/lgesettings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 93
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/lgesettings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 94
    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 95
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/lgesettings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 101
    .end local v0           #isChecked:Z
    .end local v2           #rb:Landroid/widget/RadioButton;
    :cond_1
    :goto_0
    const v6, 0x7f0a001f

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 102
    .local v3, textLayout:Landroid/view/View;
    if-eqz v3, :cond_2

    instance-of v6, v3, Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_2

    .line 103
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    :cond_2
    const-string v6, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 106
    iget-boolean v6, p0, Lcom/android/lgesettings/ApnPreference;->mLockable:Z

    if-eqz v6, :cond_3

    .line 107
    const v6, 0x7f0a0021

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 108
    .local v1, lockIcon:Landroid/widget/ImageView;
    if-eqz v1, :cond_3

    .line 109
    const v6, 0x7f0201af

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 113
    .end local v1           #lockIcon:Landroid/widget/ImageView;
    :cond_3
    return-object v4

    .line 97
    .end local v3           #textLayout:Landroid/view/View;
    .restart local v2       #rb:Landroid/widget/RadioButton;
    :cond_4
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 133
    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/lgesettings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-boolean v0, p0, Lcom/android/lgesettings/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 138
    :cond_0
    if-eqz p2, :cond_2

    .line 139
    sget-object v0, Lcom/android/lgesettings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 140
    sget-object v0, Lcom/android/lgesettings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 142
    :cond_1
    sput-object p1, Lcom/android/lgesettings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 143
    invoke-virtual {p0}, Lcom/android/lgesettings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 144
    sget-object v0, Lcom/android/lgesettings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/ApnPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :cond_2
    sput-object v3, Lcom/android/lgesettings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 147
    sput-object v3, Lcom/android/lgesettings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 152
    if-eqz p1, :cond_0

    const v3, 0x7f0a001f

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/android/lgesettings/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 154
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 156
    sget-boolean v3, Lcom/android/lgesettings/lgesetting/Config/Config;->THREELM_MDM:Z

    if-eqz v3, :cond_1

    .line 157
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "apn_locked"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 178
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 164
    .restart local v0       #context:Landroid/content/Context;
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "apn_manual"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT"

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 169
    .local v1, pos:I
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v1

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 170
    .local v2, url:Landroid/net/Uri;
    iget-boolean v3, p0, Lcom/android/lgesettings/ApnPreference;->mLockable:Z

    if-nez v3, :cond_0

    .line 171
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setChecked()V
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/lgesettings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setLockable(Z)V
    .locals 0
    .parameter "lockable"

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/android/lgesettings/ApnPreference;->mLockable:Z

    .line 195
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .parameter "selectable"

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/android/lgesettings/ApnPreference;->mSelectable:Z

    .line 182
    return-void
.end method

.method public setUnChecked()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    sput-object v0, Lcom/android/lgesettings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 191
    return-void
.end method
