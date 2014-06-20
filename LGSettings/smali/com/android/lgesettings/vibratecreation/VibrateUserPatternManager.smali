.class public Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;
.super Ljava/lang/Object;
.source "VibrateUserPatternManager.java"


# static fields
.field static final VIBRATE_USERPATTERN_PROJECTION:[Ljava/lang/String;

.field public static final VIBRATE_USERPATTERN_URI:Landroid/net/Uri;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->mContext:Landroid/content/Context;

    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pattern"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->VIBRATE_USERPATTERN_PROJECTION:[Ljava/lang/String;

    .line 66
    const-string v0, "content://com.android.settings.vibratecreation.VibrateUserPatternProvider/vibrateuserpattern"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->VIBRATE_USERPATTERN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sput-object p1, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->mContext:Landroid/content/Context;

    .line 73
    sget-object v0, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 74
    return-void
.end method

.method public static deleteVibrateUserPattern(Ljava/lang/String;)Z
    .locals 5
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    .line 85
    const-string v2, "VibrateUserPatternManager"

    const-string v3, "deleteUserPattern"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v1, "name=?"

    .line 87
    .local v1, where:Ljava/lang/String;
    new-array v0, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    .line 88
    .local v0, args:[Ljava/lang/String;
    sget-object v2, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->VIBRATE_USERPATTERN_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 89
    return v4
.end method

.method public static insertVibrateUserPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "name"
    .parameter "pattern"

    .prologue
    .line 77
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 78
    .local v0, insertValue:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, "pattern"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v1, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->VIBRATE_USERPATTERN_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 81
    const/4 v1, 0x1

    return v1
.end method

.method private static parentDefault_name(I)Ljava/lang/String;
    .locals 1
    .parameter "parent_type"

    .prologue
    .line 136
    packed-switch p0, :pswitch_data_0

    .line 153
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 139
    :pswitch_0
    const-string v0, "is_call"

    goto :goto_0

    .line 141
    :pswitch_1
    const-string v0, "is_call2"

    goto :goto_0

    .line 143
    :pswitch_2
    const-string v0, "is_message"

    goto :goto_0

    .line 145
    :pswitch_3
    const-string v0, "is_email"

    goto :goto_0

    .line 147
    :pswitch_4
    const-string v0, "is_alarm"

    goto :goto_0

    .line 149
    :pswitch_5
    const-string v0, "is_calendar"

    goto :goto_0

    .line 151
    :pswitch_6
    const-string v0, "is_call3"

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static queryUserPatternDefaultName(I)Ljava/lang/String;
    .locals 10
    .parameter "parent_type"

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 198
    const-string v0, "VibrateUserPatternManager"

    const-string v1, "queryUserPatternDefaultName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->parentDefault_name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, where:Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "1"

    aput-object v1, v4, v0

    .line 202
    .local v4, args:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 203
    .local v8, uID:Ljava/lang/String;
    const/4 v6, 0x0

    .line 205
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->VIBRATE_USERPATTERN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 206
    if-eqz v6, :cond_3

    .line 207
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 208
    const-string v0, "VibrateUserPatternManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[queryUserPatternDefault] c.getString(1)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v0, "VibrateUserPatternManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 211
    if-eqz v6, :cond_0

    .line 212
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 214
    :cond_0
    if-eqz v8, :cond_2

    move-object v0, v8

    :goto_0
    move-object v9, v0

    .line 232
    :cond_1
    :goto_1
    return-object v9

    :cond_2
    move-object v0, v9

    .line 214
    goto :goto_0

    .line 216
    :catch_0
    move-exception v7

    .line 217
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "VibrateUserPatternManager"

    const-string v1, "[queryUserPatternDefault] IllegalArgumentException!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    if-eqz v6, :cond_1

    .line 219
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 222
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 223
    .local v7, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v0, "VibrateUserPatternManager"

    const-string v1, "[queryUserPatternDefault] CursorIndexOutOfBoundsException!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    if-eqz v6, :cond_1

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 229
    .end local v7           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :cond_3
    if-eqz v6, :cond_1

    .line 230
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public static queryUserPatternDefaultPattern(I)Ljava/lang/String;
    .locals 10
    .parameter "parent_type"

    .prologue
    const/4 v9, 0x0

    .line 236
    const-string v0, "VibrateUserPatternManager"

    const-string v1, "queryUserPatternDefaultPattern"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->parentDefault_name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "1"

    aput-object v1, v4, v0

    .line 240
    .local v4, args:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 241
    .local v8, uID:Ljava/lang/String;
    const/4 v6, 0x0

    .line 243
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->VIBRATE_USERPATTERN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 244
    if-eqz v6, :cond_3

    .line 245
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 246
    const-string v0, "VibrateUserPatternManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[queryUserPatternDefaultPattern] c.getString(1)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v0, "VibrateUserPatternManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 249
    if-eqz v6, :cond_0

    .line 250
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 252
    :cond_0
    if-eqz v8, :cond_2

    move-object v0, v8

    :goto_0
    move-object v9, v0

    .line 270
    :cond_1
    :goto_1
    return-object v9

    :cond_2
    move-object v0, v9

    .line 252
    goto :goto_0

    .line 254
    :catch_0
    move-exception v7

    .line 255
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "VibrateUserPatternManager"

    const-string v1, "[queryUserPatternDefaultPattern] IllegalArgumentException!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    if-eqz v6, :cond_1

    .line 257
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 260
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 261
    .local v7, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v0, "VibrateUserPatternManager"

    const-string v1, "[queryUserPatternDefaultPattern] CursorIndexOutOfBoundsException!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    if-eqz v6, :cond_1

    .line 263
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 267
    .end local v7           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :cond_3
    if-eqz v6, :cond_1

    .line 268
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private static queryUserPatternUniqueID(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "name"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 158
    const-string v0, "VibrateUserPatternManager"

    const-string v1, "queryUserPatternUniqueID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v3, "name=?"

    .line 160
    .local v3, where:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    aput-object p0, v4, v2

    .line 161
    .local v4, args:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 162
    .local v8, uID:Ljava/lang/String;
    const/4 v6, 0x0

    .line 164
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->VIBRATE_USERPATTERN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 165
    const-string v0, "VibrateUserPatternManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[queryUserPatternUniqueID] getCount :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    if-eqz v6, :cond_3

    .line 167
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 168
    const-string v0, "VibrateUserPatternManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[queryUserPatternUniqueID] c.getString(0)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v0, "VibrateUserPatternManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[queryUserPatternUniqueID] c.getString(1)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v0, "VibrateUserPatternManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[queryUserPatternUniqueID] c.getString(2)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v0, "VibrateUserPatternManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return uID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 173
    if-eqz v6, :cond_0

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    :cond_0
    if-eqz v8, :cond_2

    move-object v0, v8

    :goto_0
    move-object v9, v0

    .line 194
    :cond_1
    :goto_1
    return-object v9

    :cond_2
    move-object v0, v9

    .line 176
    goto :goto_0

    .line 178
    :catch_0
    move-exception v7

    .line 179
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "VibrateUserPatternManager"

    const-string v1, "[queryUserPatternUniqueID] IllegalArgumentException!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-eqz v6, :cond_1

    .line 181
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 184
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 185
    .local v7, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v0, "VibrateUserPatternManager"

    const-string v1, "[queryUserPatternUniqueID] CursorIndexOutOfBoundsException!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    if-eqz v6, :cond_1

    .line 187
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 191
    .end local v7           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :cond_3
    if-eqz v6, :cond_1

    .line 192
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public static updateVibrateUserPatternDefault(Ljava/lang/String;II)Z
    .locals 8
    .parameter "name"
    .parameter "parent_type"
    .parameter "def_value"

    .prologue
    const/4 v7, 0x1

    .line 108
    invoke-static {p1}, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->updateVibrateUserPatternResetDefault(I)Z

    .line 109
    invoke-static {p0}, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->queryUserPatternUniqueID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, _uID:Ljava/lang/String;
    const-string v4, "VibrateUserPatternManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateVibrateUserPatternDefault _id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 114
    .local v2, values:Landroid/content/ContentValues;
    invoke-static {p1}, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->parentDefault_name(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v3, "_id=?"

    .line 117
    .local v3, where:Ljava/lang/String;
    new-array v1, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    .line 119
    .local v1, args:[Ljava/lang/String;
    sget-object v4, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->VIBRATE_USERPATTERN_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 120
    return v7
.end method

.method public static updateVibrateUserPatternName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "old_name"
    .parameter "new_name"

    .prologue
    const/4 v7, 0x1

    .line 94
    const-string v4, "hkk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateVibrateUserPattern : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {p0}, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->queryUserPatternUniqueID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, _uID:Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 97
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "name"

    invoke-virtual {v2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v3, "_id=?"

    .line 100
    .local v3, where:Ljava/lang/String;
    new-array v1, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    .line 102
    .local v1, args:[Ljava/lang/String;
    sget-object v4, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->VIBRATE_USERPATTERN_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 103
    return v7
.end method

.method public static updateVibrateUserPatternResetDefault(I)Z
    .locals 4
    .parameter "parent_type"

    .prologue
    const/4 v3, 0x0

    .line 125
    const-string v1, "VibrateUserPatternManager"

    const-string v2, "updateVibrateUserPatternResetDefault"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 128
    .local v0, values:Landroid/content/ContentValues;
    invoke-static {p0}, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->parentDefault_name(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v1, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->VIBRATE_USERPATTERN_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 132
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public getAllUserPattern()Ljava/util/ArrayList;
    .locals 12
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
    const/4 v11, 0x0

    .line 370
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v10, patternList_User:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 373
    .local v9, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 375
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->VIBRATE_USERPATTERN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 376
    if-eqz v6, :cond_1

    .line 377
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 378
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 379
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 378
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 383
    .end local v8           #i:I
    :catch_0
    move-exception v7

    .line 384
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "VibrateUserPatternManager"

    const-string v1, "[getUserPatternCount] IllegalArgumentException!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    if-eqz v6, :cond_0

    .line 386
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v10, v11

    .line 397
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    .end local v10           #patternList_User:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    return-object v10

    .line 389
    .restart local v10       #patternList_User:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v7

    .line 390
    .local v7, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v0, "VibrateUserPatternManager"

    const-string v1, "[getUserPatternCount] CursorIndexOutOfBoundsException!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    if-eqz v6, :cond_2

    .line 392
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v10, v11

    .line 394
    goto :goto_1
.end method

.method public getAllUserPatternName()Ljava/util/ArrayList;
    .locals 12
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
    const/4 v11, 0x0

    .line 338
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v10, patternNameList_User:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 341
    .local v9, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 343
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->VIBRATE_USERPATTERN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 344
    if-eqz v6, :cond_1

    .line 345
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 346
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 347
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    const-string v0, "hkk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllUserPatternName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 346
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 352
    .end local v8           #i:I
    :catch_0
    move-exception v7

    .line 353
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "VibrateUserPatternManager"

    const-string v1, "[getUserPatternCount] IllegalArgumentException!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    if-eqz v6, :cond_0

    .line 355
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v10, v11

    .line 366
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    .end local v10           #patternNameList_User:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    return-object v10

    .line 358
    .restart local v10       #patternNameList_User:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v7

    .line 359
    .local v7, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v0, "VibrateUserPatternManager"

    const-string v1, "[getUserPatternCount] CursorIndexOutOfBoundsException!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    if-eqz v6, :cond_2

    .line 361
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v10, v11

    .line 363
    goto :goto_1
.end method

.method public getUserPatternCount()I
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 314
    const-string v0, "VibrateUserPatternManager"

    const-string v1, "getUserPatternCount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v8, 0x0

    .line 317
    .local v8, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 319
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->VIBRATE_USERPATTERN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 320
    const-string v0, "VibrateUserPatternManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getUserPatternCount] getCount :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 333
    :goto_0
    return v0

    .line 322
    :catch_0
    move-exception v7

    .line 323
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "VibrateUserPatternManager"

    const-string v1, "[getUserPatternCount] IllegalArgumentException!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    if-eqz v6, :cond_0

    .line 325
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v9

    .line 327
    goto :goto_0

    .line 328
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 329
    .local v7, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v0, "VibrateUserPatternManager"

    const-string v1, "[getUserPatternCount] CursorIndexOutOfBoundsException!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    if-eqz v6, :cond_1

    .line 331
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v9

    .line 333
    goto :goto_0
.end method
