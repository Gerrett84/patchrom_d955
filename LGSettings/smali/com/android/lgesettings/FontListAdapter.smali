.class public Lcom/android/lgesettings/FontListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FontListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/FontListAdapter$FontItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDefaultTypefaceIndex:I

.field private mFontScaleIndex:I

.field private final mFontScales:[F

.field private mFontSettingsPref:Lcom/android/lgesettings/FontSettingsPreference;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/lgesettings/FontSettingsPreference;)V
    .locals 1
    .parameter "context"
    .parameter "fontSettingsPref"

    .prologue
    .line 52
    const v0, 0x7f04007e

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/FontListAdapter;->mDefaultTypefaceIndex:I

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/lgesettings/FontListAdapter;->mFontScales:[F

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/lgesettings/FontListAdapter;->mFontScaleIndex:I

    .line 48
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/FontListAdapter;->mCurConfig:Landroid/content/res/Configuration;

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/FontListAdapter;->setFontListAdapter(Landroid/content/Context;Lcom/android/lgesettings/FontSettingsPreference;)V

    .line 54
    return-void

    .line 46
    nop

    :array_0
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x33t 0x33t 0x93t 0x3ft
        0x66t 0x66t 0xa6t 0x3ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/lgesettings/FontListAdapter;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/FontListAdapter;->mFontScales:[F

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/FontListAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/lgesettings/FontListAdapter;->mFontScaleIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/FontListAdapter;)Lcom/android/lgesettings/FontServerConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/FontListAdapter;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/FontListAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/lgesettings/FontListAdapter;->mDefaultTypefaceIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/FontListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/FontListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/FontListAdapter;)Lcom/android/lgesettings/FontSettingsPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/FontListAdapter;->mFontSettingsPref:Lcom/android/lgesettings/FontSettingsPreference;

    return-object v0
.end method

.method private createFontItem(Landroid/view/View;I)Lcom/android/lgesettings/FontListAdapter$FontItem;
    .locals 1
    .parameter "v"
    .parameter "position"

    .prologue
    .line 128
    new-instance v0, Lcom/android/lgesettings/FontListAdapter$FontItem;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/lgesettings/FontListAdapter$FontItem;-><init>(Lcom/android/lgesettings/FontListAdapter;Landroid/view/View;I)V

    return-object v0
.end method

.method private setFontListAdapter(Landroid/content/Context;Lcom/android/lgesettings/FontSettingsPreference;)V
    .locals 4
    .parameter "context"
    .parameter "fontSettingsPref"

    .prologue
    .line 58
    iput-object p2, p0, Lcom/android/lgesettings/FontListAdapter;->mFontSettingsPref:Lcom/android/lgesettings/FontSettingsPreference;

    .line 59
    iput-object p1, p0, Lcom/android/lgesettings/FontListAdapter;->mContext:Landroid/content/Context;

    .line 60
    iget-object v2, p0, Lcom/android/lgesettings/FontListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 61
    iget-object v2, p0, Lcom/android/lgesettings/FontListAdapter;->mFontSettingsPref:Lcom/android/lgesettings/FontSettingsPreference;

    invoke-virtual {v2}, Lcom/android/lgesettings/FontSettingsPreference;->getFontServer()Lcom/android/lgesettings/FontServerConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/FontListAdapter;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

    .line 62
    iget-object v2, p0, Lcom/android/lgesettings/FontListAdapter;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/android/lgesettings/FontListAdapter;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

    invoke-virtual {v2}, Lcom/android/lgesettings/FontServerConnection;->getDefaultTypefaceIndex()I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/FontListAdapter;->mDefaultTypefaceIndex:I

    .line 64
    iget-object v2, p0, Lcom/android/lgesettings/FontListAdapter;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

    invoke-virtual {v2}, Lcom/android/lgesettings/FontServerConnection;->getAllFontNames()[Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, fontNameList:[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/FontListAdapter;->addAll([Ljava/lang/Object;)V

    .line 72
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/lgesettings/FontListAdapter;->setEntries(Lcom/android/lgesettings/FontSettingsPreference;)V

    .line 76
    .end local v1           #fontNameList:[Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/FontListAdapter;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_1
    iget-object v2, p0, Lcom/android/lgesettings/FontListAdapter;->mCurConfig:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/FontListAdapter;->floatToIndex(F)I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/FontListAdapter;->mFontScaleIndex:I

    .line 82
    return-void

    .line 69
    .restart local v1       #fontNameList:[Ljava/lang/String;
    :cond_1
    const-string v2, "HyFontListAdapter"

    const-string v3, "fontNameList is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    .end local v1           #fontNameList:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "HyFontListAdapter"

    const-string v3, "Unable to retrieve font size"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 6
    .parameter "val"

    .prologue
    .line 102
    iget-object v4, p0, Lcom/android/lgesettings/FontListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090025

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, indices:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 105
    .local v2, lastVal:F
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 106
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 107
    .local v3, thisVal:F
    sub-float v4, v3, v2

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 108
    add-int/lit8 v4, v0, -0x1

    .line 112
    .end local v3           #thisVal:F
    :goto_1
    return v4

    .line 110
    .restart local v3       #thisVal:F
    :cond_0
    move v2, v3

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    .end local v3           #thisVal:F
    :cond_1
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 116
    move-object v1, p2

    .line 118
    .local v1, v:Landroid/view/View;
    const/4 v1, 0x0

    .line 119
    iget-object v2, p0, Lcom/android/lgesettings/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04007e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 124
    :goto_0
    return-object v1

    .line 122
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/android/lgesettings/FontListAdapter;->createFontItem(Landroid/view/View;I)Lcom/android/lgesettings/FontListAdapter$FontItem;

    move-result-object v0

    .line 123
    .local v0, fi:Lcom/android/lgesettings/FontListAdapter$FontItem;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isDCM()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 132
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, DCM:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v1

    .line 136
    :cond_1
    const-string v3, "DCM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 137
    goto :goto_0
.end method

.method public isDefaultTypefaceAndJapanLocale(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 146
    if-nez p1, :cond_0

    .line 147
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, curLanguageCode:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 149
    const-string v2, "ja"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 154
    .end local v0           #curLanguageCode:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEntries(Lcom/android/lgesettings/FontSettingsPreference;)V
    .locals 5
    .parameter "fontSettingsPref"

    .prologue
    .line 89
    iget-object v4, p0, Lcom/android/lgesettings/FontListAdapter;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

    invoke-virtual {v4}, Lcom/android/lgesettings/FontServerConnection;->getNumAllFonts()I

    move-result v3

    .line 90
    .local v3, numAllFonts:I
    new-array v0, v3, [Ljava/lang/CharSequence;

    .line 91
    .local v0, entries:[Ljava/lang/CharSequence;
    new-array v1, v3, [Ljava/lang/CharSequence;

    .line 92
    .local v1, entryValues:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, n:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 93
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/FontListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    aput-object v4, v0, v2

    .line 94
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/lgesettings/FontSettingsPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p1, v1}, Lcom/android/lgesettings/FontSettingsPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 98
    iget v4, p0, Lcom/android/lgesettings/FontListAdapter;->mDefaultTypefaceIndex:I

    invoke-virtual {p1, v4}, Lcom/android/lgesettings/FontSettingsPreference;->setValueIndex(I)V

    .line 99
    return-void
.end method
