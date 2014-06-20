.class public Lcom/android/internal/app/LocalePicker;
.super Landroid/app/ListFragment;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocalePicker$LocaleInfo;,
        Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final ES_FEATURE:Ljava/lang/String; = "persist.sys.cust.es_feature"

.field private static final TAG:Ljava/lang/String; = "LocalePicker"

.field private static mCountryCode:Ljava/lang/String;

.field private static final sOperator:Ljava/lang/String;


# instance fields
.field private mCurrentCountry:Ljava/lang/String;

.field mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const-string/jumbo v0, "ro.build.target_operator"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "ro.build.target_country"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/LocalePicker;->mCountryCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/LocalePicker;->mCurrentCountry:Ljava/lang/String;

    .line 67
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/internal/app/LocalePicker;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public static constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    const v0, 0x2030012

    const v1, 0x20e0064

    invoke-static {p0, v0, v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .locals 33
    .parameter "context"
    .parameter "layoutId"
    .parameter "fieldId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 149
    .local v28, resources:Landroid/content/res/Resources;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    invoke-static/range {v28 .. v28}, Lcom/android/internal/app/LocalePicker;->getMiuiSupportLocale(Landroid/content/res/Resources;)[Ljava/lang/String;

    move-result-object v24

    .line 150
    .local v24, locales:[Ljava/lang/String;
    const v3, 0x107000a

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v31

    .line 151
    .local v31, specialLocaleCodes:[Ljava/lang/String;
    const v3, 0x107000b

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v32

    .line 152
    .local v32, specialLocaleNames:[Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 155
    sget-object v3, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v4, "OPEN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/internal/app/LocalePicker;->mCountryCode:Ljava/lang/String;

    const-string v4, "CIS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 156
    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 162
    move-object/from16 v0, v24

    array-length v3, v0

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v25, v0

    .line 164
    .local v25, locales_tmp:[Ljava/lang/String;
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    move-object/from16 v0, v25

    array-length v3, v0

    move/from16 v0, v20

    if-ge v0, v3, :cond_0

    .line 166
    aget-object v3, v24, v20

    aput-object v3, v25, v20

    .line 167
    const-string v3, ""

    aput-object v3, v24, v20

    .line 164
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 170
    :cond_0
    const/4 v3, 0x6

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v24, v0

    .line 171
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-object v4, v25, v4

    aput-object v4, v24, v3

    .line 172
    const/16 v20, 0x1

    :goto_1
    move-object/from16 v0, v25

    array-length v3, v0

    move/from16 v0, v20

    if-ge v0, v3, :cond_6

    .line 173
    aget-object v29, v25, v20

    .line 176
    .local v29, s:Ljava/lang/String;
    const-string v3, "en_US"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 177
    const/4 v3, 0x1

    aput-object v29, v24, v3

    .line 172
    :cond_1
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 182
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ru"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 183
    const/4 v3, 0x2

    aput-object v29, v24, v3

    goto :goto_2

    .line 188
    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "uk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 189
    const/4 v3, 0x3

    aput-object v29, v24, v3

    goto :goto_2

    .line 194
    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ro"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 195
    const/4 v3, 0x4

    aput-object v29, v24, v3

    goto :goto_2

    .line 200
    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ko"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    const/4 v3, 0x5

    aput-object v29, v24, v3

    goto :goto_2

    .line 208
    .end local v20           #i:I
    .end local v25           #locales_tmp:[Ljava/lang/String;
    .end local v29           #s:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v26, v0

    .line 209
    .local v26, origSize:I
    move/from16 v0, v26

    new-array v0, v0, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v27, v0

    .line 210
    .local v27, preprocess:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/16 v17, 0x0

    .line 211
    .local v17, finalSize:I
    const/16 v20, 0x0

    .restart local v20       #i:I
    move/from16 v18, v17

    .end local v17           #finalSize:I
    .local v18, finalSize:I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v26

    if-ge v0, v1, :cond_c

    .line 212
    aget-object v29, v24, v20

    .line 213
    .restart local v29       #s:Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v23

    .line 214
    .local v23, len:I
    const-string v3, "LocalePicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "org locale s = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v3, "AME"

    const-string/jumbo v4, "ro.build.target_country"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 217
    const-string/jumbo v3, "iw"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    const-string/jumbo v3, "iw_IL"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move/from16 v17, v18

    .line 211
    .end local v18           #finalSize:I
    .restart local v17       #finalSize:I
    :goto_4
    add-int/lit8 v20, v20, 0x1

    move/from16 v18, v17

    .end local v17           #finalSize:I
    .restart local v18       #finalSize:I
    goto :goto_3

    .line 222
    :cond_7
    const-string v3, "IL"

    const-string/jumbo v4, "ro.build.target_country"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 223
    const-string v3, "fa"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    const-string v3, "fa_IR"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move/from16 v17, v18

    .line 224
    .end local v18           #finalSize:I
    .restart local v17       #finalSize:I
    goto :goto_4

    .line 227
    .end local v17           #finalSize:I
    .restart local v18       #finalSize:I
    :cond_8
    const/4 v3, 0x5

    move/from16 v0, v23

    if-ne v0, v3, :cond_25

    .line 228
    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 229
    .local v22, language:Ljava/lang/String;
    const/4 v3, 0x3

    const/4 v4, 0x5

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 230
    .local v14, country:Ljava/lang/String;
    new-instance v21, Ljava/util/Locale;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v14}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .local v21, l:Ljava/util/Locale;
    if-nez v18, :cond_9

    .line 236
    add-int/lit8 v17, v18, 0x1

    .end local v18           #finalSize:I
    .restart local v17       #finalSize:I
    new-instance v3, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v3, v4, v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v27, v18

    goto :goto_4

    .line 243
    .end local v17           #finalSize:I
    .restart local v18       #finalSize:I
    :cond_9
    add-int/lit8 v3, v18, -0x1

    aget-object v3, v27, v3

    iget-object v3, v3, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 251
    add-int/lit8 v3, v18, -0x1

    aget-object v3, v27, v3

    add-int/lit8 v4, v18, -0x1

    aget-object v4, v27, v4

    iget-object v4, v4, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v4, v0, v1}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    .line 258
    add-int/lit8 v17, v18, 0x1

    .end local v18           #finalSize:I
    .restart local v17       #finalSize:I
    new-instance v3, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v3, v4, v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v27, v18

    goto/16 :goto_4

    .line 264
    .end local v17           #finalSize:I
    .restart local v18       #finalSize:I
    :cond_a
    const-string/jumbo v3, "zz_ZZ"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 265
    const-string v16, "Pseudo..."

    .line 272
    .local v16, displayName:Ljava/lang/String;
    :goto_5
    add-int/lit8 v17, v18, 0x1

    .end local v18           #finalSize:I
    .restart local v17       #finalSize:I
    new-instance v3, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v3, v0, v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v27, v18

    goto/16 :goto_4

    .line 267
    .end local v16           #displayName:Ljava/lang/String;
    .end local v17           #finalSize:I
    .restart local v18       #finalSize:I
    :cond_b
    move-object/from16 v0, v21

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .restart local v16       #displayName:Ljava/lang/String;
    goto :goto_5

    .line 283
    .end local v14           #country:Ljava/lang/String;
    .end local v16           #displayName:Ljava/lang/String;
    .end local v21           #l:Ljava/util/Locale;
    .end local v22           #language:Ljava/lang/String;
    .end local v23           #len:I
    .end local v29           #s:Ljava/lang/String;
    :cond_c
    const/16 v3, 0xb

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v3, 0x0

    const-string v4, "bs_BA"

    aput-object v4, v19, v3

    const/4 v3, 0x1

    const-string v4, "gl_ES"

    aput-object v4, v19, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "is_IS"

    aput-object v4, v19, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "kk_KZ"

    aput-object v4, v19, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "km_KH"

    aput-object v4, v19, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "ku_IQ"

    aput-object v4, v19, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "mk_MK"

    aput-object v4, v19, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "my_MM"

    aput-object v4, v19, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "uz_UZ"

    aput-object v4, v19, v3

    const/16 v3, 0x9

    const-string v4, "et_EE"

    aput-object v4, v19, v3

    const/16 v3, 0xa

    const-string v4, "eu_ES"

    aput-object v4, v19, v3

    .line 284
    .local v19, full_addtional:[Ljava/lang/String;
    const/4 v3, 0x2

    new-array v13, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "kk_KZ"

    aput-object v4, v13, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "uz_UZ"

    aput-object v4, v13, v3

    .line 286
    .local v13, cis_addtional:[Ljava/lang/String;
    sget-object v3, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v4, "OPEN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Lcom/android/internal/app/LocalePicker;->mCountryCode:Ljava/lang/String;

    const-string v4, "CIS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 287
    :cond_d
    move-object/from16 v12, v19

    .line 293
    .local v12, addtional:[Ljava/lang/String;
    :goto_6
    array-length v3, v12

    add-int v3, v3, v18

    add-int/lit8 v3, v3, 0x1

    new-array v11, v3, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 294
    .local v11, additionalProcess:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-static {v0, v3, v11, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    move-object/from16 v27, v11

    .line 297
    const/16 v20, 0x0

    move/from16 v17, v18

    .end local v18           #finalSize:I
    .restart local v17       #finalSize:I
    :goto_7
    array-length v3, v12

    move/from16 v0, v20

    if-ge v0, v3, :cond_20

    .line 298
    aget-object v29, v12, v20

    .line 299
    .restart local v29       #s:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 300
    .restart local v22       #language:Ljava/lang/String;
    const/4 v3, 0x3

    const/4 v4, 0x5

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 301
    .restart local v14       #country:Ljava/lang/String;
    new-instance v21, Ljava/util/Locale;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v14}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .restart local v21       #l:Ljava/util/Locale;
    sget-object v3, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v4, "OPEN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v3, Lcom/android/internal/app/LocalePicker;->mCountryCode:Ljava/lang/String;

    const-string v4, "EU"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    :cond_e
    sget-object v3, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v4, "VDF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    sget-object v3, Lcom/android/internal/app/LocalePicker;->mCountryCode:Ljava/lang/String;

    const-string v4, "COM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    :cond_f
    sget-object v3, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v4, "TMO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v3, Lcom/android/internal/app/LocalePicker;->mCountryCode:Ljava/lang/String;

    const-string v4, "COM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    :cond_10
    sget-object v3, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v4, "ORG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    sget-object v3, Lcom/android/internal/app/LocalePicker;->mCountryCode:Ljava/lang/String;

    const-string v4, "COM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    :cond_11
    sget-object v3, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v4, "BYT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    sget-object v3, Lcom/android/internal/app/LocalePicker;->mCountryCode:Ljava/lang/String;

    const-string v4, "FR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    :cond_12
    sget-object v3, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v4, "TIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    sget-object v3, Lcom/android/internal/app/LocalePicker;->mCountryCode:Ljava/lang/String;

    const-string v4, "IT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    :cond_13
    sget-object v3, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v4, "TLF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    sget-object v3, Lcom/android/internal/app/LocalePicker;->mCountryCode:Ljava/lang/String;

    const-string v4, "ES"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    :cond_14
    sget-object v3, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v4, "PLS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    sget-object v3, Lcom/android/internal/app/LocalePicker;->mCountryCode:Ljava/lang/String;

    const-string v4, "PL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    :cond_15
    sget-object v3, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v4, "P4P"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    sget-object v3, Lcom/android/internal/app/LocalePicker;->mCountryCode:Ljava/lang/String;

    const-string v4, "PL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    :cond_16
    sget-object v3, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v4, "O2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    sget-object v3, Lcom/android/internal/app/LocalePicker;->mCountryCode:Ljava/lang/String;

    const-string v4, "UK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    :cond_17
    sget-object v3, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v4, "H3G"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    sget-object v3, Lcom/android/internal/app/LocalePicker;->mCountryCode:Ljava/lang/String;

    const-string v4, "COM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 314
    :cond_18
    const-string/jumbo v3, "mk_MK"

    aget-object v4, v12, v20

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 315
    const-string/jumbo v3, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v30

    .line 316
    .local v30, simOperator:Ljava/lang/String;
    const/4 v15, 0x0

    .line 318
    .local v15, currentMCC:Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_19

    .line 319
    const/4 v3, 0x0

    const/4 v4, 0x3

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 322
    :cond_19
    if-eqz v15, :cond_1a

    .line 323
    const-string v3, "294"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 324
    add-int/lit8 v18, v17, 0x1

    .end local v17           #finalSize:I
    .restart local v18       #finalSize:I
    new-instance v3, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    const-string v4, "Macedonian"

    move-object/from16 v0, v21

    invoke-direct {v3, v4, v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v27, v17

    move/from16 v17, v18

    .line 297
    .end local v15           #currentMCC:Ljava/lang/String;
    .end local v18           #finalSize:I
    .end local v30           #simOperator:Ljava/lang/String;
    .restart local v17       #finalSize:I
    :cond_1a
    :goto_8
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_7

    .line 289
    .end local v11           #additionalProcess:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .end local v12           #addtional:[Ljava/lang/String;
    .end local v14           #country:Ljava/lang/String;
    .end local v17           #finalSize:I
    .end local v21           #l:Ljava/util/Locale;
    .end local v22           #language:Ljava/lang/String;
    .end local v29           #s:Ljava/lang/String;
    .restart local v18       #finalSize:I
    :cond_1b
    move-object v12, v13

    .restart local v12       #addtional:[Ljava/lang/String;
    goto/16 :goto_6

    .line 326
    .end local v18           #finalSize:I
    .restart local v11       #additionalProcess:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .restart local v14       #country:Ljava/lang/String;
    .restart local v15       #currentMCC:Ljava/lang/String;
    .restart local v17       #finalSize:I
    .restart local v21       #l:Ljava/util/Locale;
    .restart local v22       #language:Ljava/lang/String;
    .restart local v29       #s:Ljava/lang/String;
    .restart local v30       #simOperator:Ljava/lang/String;
    :cond_1c
    add-int/lit8 v18, v17, 0x1

    .end local v17           #finalSize:I
    .restart local v18       #finalSize:I
    new-instance v3, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    const-string v4, "FYROM"

    move-object/from16 v0, v21

    invoke-direct {v3, v4, v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v27, v17

    move/from16 v17, v18

    .end local v18           #finalSize:I
    .restart local v17       #finalSize:I
    goto :goto_8

    .line 331
    .end local v15           #currentMCC:Ljava/lang/String;
    .end local v30           #simOperator:Ljava/lang/String;
    :cond_1d
    const-string v3, "eu_ES"

    aget-object v4, v12, v20

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 332
    add-int/lit8 v18, v17, 0x1

    .end local v17           #finalSize:I
    .restart local v18       #finalSize:I
    new-instance v3, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    const-string v4, "Euskera"

    move-object/from16 v0, v21

    invoke-direct {v3, v4, v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v27, v17

    move/from16 v17, v18

    .line 333
    .end local v18           #finalSize:I
    .restart local v17       #finalSize:I
    goto :goto_8

    .line 335
    :cond_1e
    const-string v3, "gl_ES"

    aget-object v4, v12, v20

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 336
    add-int/lit8 v18, v17, 0x1

    .end local v17           #finalSize:I
    .restart local v18       #finalSize:I
    new-instance v3, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    const-string v4, "Galego"

    move-object/from16 v0, v21

    invoke-direct {v3, v4, v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v27, v17

    move/from16 v17, v18

    .line 337
    .end local v18           #finalSize:I
    .restart local v17       #finalSize:I
    goto :goto_8

    .line 342
    :cond_1f
    add-int/lit8 v18, v17, 0x1

    .end local v17           #finalSize:I
    .restart local v18       #finalSize:I
    new-instance v3, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v3, v4, v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v27, v17

    move/from16 v17, v18

    .end local v18           #finalSize:I
    .restart local v17       #finalSize:I
    goto :goto_8

    .line 347
    .end local v14           #country:Ljava/lang/String;
    .end local v21           #l:Ljava/util/Locale;
    .end local v22           #language:Ljava/lang/String;
    .end local v29           #s:Ljava/lang/String;
    :cond_20
    sget-object v3, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v4, "OPEN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    sget-object v3, Lcom/android/internal/app/LocalePicker;->mCountryCode:Ljava/lang/String;

    const-string v4, "CIS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 348
    :cond_21
    new-instance v21, Ljava/util/Locale;

    const-string v3, "es"

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 349
    .restart local v21       #l:Ljava/util/Locale;
    const-string v3, "TLF"

    const-string/jumbo v4, "ro.build.target_operator"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 350
    add-int/lit8 v18, v17, 0x1

    .end local v17           #finalSize:I
    .restart local v18       #finalSize:I
    new-instance v3, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (Latinoam\u00e9rica)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v3, v4, v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v27, v17

    move/from16 v17, v18

    .line 359
    .end local v18           #finalSize:I
    .end local v21           #l:Ljava/util/Locale;
    .restart local v17       #finalSize:I
    :cond_22
    :goto_9
    move/from16 v0, v17

    new-array v7, v0, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 360
    .local v7, localeInfos:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/16 v20, 0x0

    :goto_a
    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_24

    .line 361
    aget-object v3, v27, v20

    aput-object v3, v7, v20

    .line 360
    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    .line 353
    .end local v7           #localeInfos:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .restart local v21       #l:Ljava/util/Locale;
    :cond_23
    add-int/lit8 v18, v17, 0x1

    .end local v17           #finalSize:I
    .restart local v18       #finalSize:I
    new-instance v3, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v3, v4, v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v27, v17

    move/from16 v17, v18

    .end local v18           #finalSize:I
    .restart local v17       #finalSize:I
    goto :goto_9

    .line 364
    .end local v21           #l:Ljava/util/Locale;
    .restart local v7       #localeInfos:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_24
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    invoke-static {v7}, Lmiui/util/ExtraLocalePicker;->adjustLocaleOrder([Lcom/android/internal/app/LocalePicker$LocaleInfo;)V

    .line 366
    const-string/jumbo v3, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 368
    .local v8, inflater:Landroid/view/LayoutInflater;
    new-instance v3, Lcom/android/internal/app/LocalePicker$1;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/app/LocalePicker$1;-><init>(Landroid/content/Context;II[Lcom/android/internal/app/LocalePicker$LocaleInfo;Landroid/view/LayoutInflater;II)V

    return-object v3

    .end local v7           #localeInfos:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .end local v8           #inflater:Landroid/view/LayoutInflater;
    .end local v11           #additionalProcess:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .end local v12           #addtional:[Ljava/lang/String;
    .end local v13           #cis_addtional:[Ljava/lang/String;
    .end local v17           #finalSize:I
    .end local v19           #full_addtional:[Ljava/lang/String;
    .restart local v18       #finalSize:I
    .restart local v23       #len:I
    .restart local v29       #s:Ljava/lang/String;
    :cond_25
    move/from16 v17, v18

    .end local v18           #finalSize:I
    .restart local v17       #finalSize:I
    goto/16 :goto_4
.end method

.method private currentCountry()Ljava/lang/String;
    .locals 4

    .prologue
    .line 506
    const/4 v2, 0x0

    .line 508
    .local v2, mCountry:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 509
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 510
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 513
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    return-object v2

    .line 511
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "l"
    .parameter "specialLocaleCodes"
    .parameter "specialLocaleNames"

    .prologue
    .line 400
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, code:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 403
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    aget-object v2, p2, v1

    .line 408
    :goto_1
    return-object v2

    .line 402
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 408
    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static getMiuiSupportLocale(Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 1
    .parameter "resources"

    .prologue
    const v0, 0x6060011

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 391
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 395
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .locals 3
    .parameter "locale"

    .prologue
    .line 489
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 490
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 494
    .local v1, config:Landroid/content/res/Configuration;
    invoke-virtual {v1, p0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 496
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 498
    const-string v2, "com.android.providers.settings"

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 413
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 414
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 415
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 416
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 458
    iget-object v4, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    if-eqz v4, :cond_2

    .line 459
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    iget-object v2, v4, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .line 460
    .local v2, locale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, country:Ljava/lang/String;
    const-string/jumbo v4, "persist.sys.cust.es_feature"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 462
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "es"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "US"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "ES"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 463
    const/4 v1, 0x0

    .line 464
    .local v1, countryCodeISO:Ljava/lang/String;
    const-string v4, "gsm.sim.operator.numeric"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 465
    .local v3, numeric:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_3

    .line 466
    const-string v4, "gsm.sim.operator.iso-country"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 467
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 472
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 473
    const-string v1, "ES"

    .line 475
    :cond_0
    new-instance v2, Ljava/util/Locale;

    .end local v2           #locale:Ljava/util/Locale;
    const-string v4, "es"

    invoke-direct {v2, v4, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    .end local v1           #countryCodeISO:Ljava/lang/String;
    .end local v3           #numeric:Ljava/lang/String;
    .restart local v2       #locale:Ljava/util/Locale;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    invoke-interface {v4, v2}, Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;->onLocaleSelected(Ljava/util/Locale;)V

    .line 481
    .end local v0           #country:Ljava/lang/String;
    .end local v2           #locale:Ljava/util/Locale;
    :cond_2
    return-void

    .line 470
    .restart local v0       #country:Ljava/lang/String;
    .restart local v1       #countryCodeISO:Ljava/lang/String;
    .restart local v2       #locale:Ljava/util/Locale;
    .restart local v3       #numeric:Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "ro.build.default_country"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 440
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 441
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_FONTS_JP:Z

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/android/internal/app/LocalePicker;->mCurrentCountry:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/LocalePicker;->mCurrentCountry:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;->currentCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 447
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 424
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 427
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_FONTS_JP:Z

    if-eqz v0, :cond_0

    .line 428
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 430
    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;->currentCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocalePicker;->mCurrentCountry:Ljava/lang/String;

    .line 434
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 435
    return-void
.end method

.method public setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    .line 420
    return-void
.end method
