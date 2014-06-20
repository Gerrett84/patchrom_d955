.class public Lcom/android/lgesettings/VibrateTypePreference;
.super Landroid/preference/PreferenceActivity;
.source "VibrateTypePreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private currentPreference:Lcom/android/lgesettings/VibrateTypeListPreference;

.field private mAlarm_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

.field private mCalendarPreference:Lcom/android/lgesettings/VibrateTypeListPreference;

.field private mEmail_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

.field private mIncomming_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

.field private mMessage_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

.field vibrate_type_entry:[Ljava/lang/CharSequence;

.field vibrate_type_value:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->currentPreference:Lcom/android/lgesettings/VibrateTypeListPreference;

    return-void
.end method

.method private getAlarm_VibrateType()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 214
    invoke-virtual {p0}, Lcom/android/lgesettings/VibrateTypePreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "distinctive_vibration_alarm"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 215
    .local v0, type:I
    invoke-direct {p0, v0}, Lcom/android/lgesettings/VibrateTypePreference;->typeIntegrityCheck(I)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 220
    .end local v0           #type:I
    :goto_0
    return v0

    .line 218
    .restart local v0       #type:I
    :cond_0
    const-string v2, "VibrateTypePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get call vibrate value is bad["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-direct {p0, v1}, Lcom/android/lgesettings/VibrateTypePreference;->setAlarm_VibrateType(I)V

    move v0, v1

    .line 220
    goto :goto_0
.end method

.method private getCalendar_VibrateType()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 227
    invoke-virtual {p0}, Lcom/android/lgesettings/VibrateTypePreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "distinctive_vibration_calendar"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 228
    .local v0, type:I
    invoke-direct {p0, v0}, Lcom/android/lgesettings/VibrateTypePreference;->typeIntegrityCheck(I)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 233
    .end local v0           #type:I
    :goto_0
    return v0

    .line 231
    .restart local v0       #type:I
    :cond_0
    const-string v2, "VibrateTypePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get call vibrate value is bad["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-direct {p0, v1}, Lcom/android/lgesettings/VibrateTypePreference;->setCalendar_VibrateType(I)V

    move v0, v1

    .line 233
    goto :goto_0
.end method

.method private getCall_VibrateType()I
    .locals 5

    .prologue
    const/4 v1, 0x2

    .line 175
    invoke-virtual {p0}, Lcom/android/lgesettings/VibrateTypePreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "distinctive_vibration_incoming_calls"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 176
    .local v0, type:I
    const/4 v2, 0x1

    invoke-direct {p0, v0}, Lcom/android/lgesettings/VibrateTypePreference;->typeIntegrityCheck(I)Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 181
    .end local v0           #type:I
    :goto_0
    return v0

    .line 179
    .restart local v0       #type:I
    :cond_0
    const-string v2, "VibrateTypePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get call vibrate value is bad["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0, v1}, Lcom/android/lgesettings/VibrateTypePreference;->setCall_VibrateType(I)V

    move v0, v1

    .line 181
    goto :goto_0
.end method

.method private getEmail_VibrateType()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 201
    invoke-virtual {p0}, Lcom/android/lgesettings/VibrateTypePreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "distinctive_vibration_email"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 202
    .local v0, type:I
    invoke-direct {p0, v0}, Lcom/android/lgesettings/VibrateTypePreference;->typeIntegrityCheck(I)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 207
    .end local v0           #type:I
    :goto_0
    return v0

    .line 205
    .restart local v0       #type:I
    :cond_0
    const-string v2, "VibrateTypePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get call vibrate value is bad["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct {p0, v1}, Lcom/android/lgesettings/VibrateTypePreference;->setEmail_VibrateType(I)V

    move v0, v1

    .line 207
    goto :goto_0
.end method

.method private getMessage_VibrateType()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 188
    invoke-virtual {p0}, Lcom/android/lgesettings/VibrateTypePreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "distinctive_vibration_messaging"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 189
    .local v0, type:I
    invoke-direct {p0, v0}, Lcom/android/lgesettings/VibrateTypePreference;->typeIntegrityCheck(I)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 194
    .end local v0           #type:I
    :goto_0
    return v0

    .line 192
    .restart local v0       #type:I
    :cond_0
    const-string v2, "VibrateTypePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get call vibrate value is bad["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-direct {p0, v1}, Lcom/android/lgesettings/VibrateTypePreference;->setMessage_VibrateType(I)V

    move v0, v1

    .line 194
    goto :goto_0
.end method

.method private setAlarm_VibrateType(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 283
    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/lgesettings/VibrateTypePreference;->typeIntegrityCheck(I)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/android/lgesettings/VibrateTypePreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "distinctive_vibration_alarm"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    const-string v0, "VibrateTypePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alarm vibrtate type - bad Value["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setCalendar_VibrateType(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 295
    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/lgesettings/VibrateTypePreference;->typeIntegrityCheck(I)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/android/lgesettings/VibrateTypePreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "distinctive_vibration_calendar"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    const-string v0, "VibrateTypePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calendar vibrtate type - bad Value["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setCall_VibrateType(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 247
    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/lgesettings/VibrateTypePreference;->typeIntegrityCheck(I)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/android/lgesettings/VibrateTypePreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "distinctive_vibration_incoming_calls"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    const-string v0, "VibrateTypePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Imcomming call vibrtate type - bad Value["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setEmail_VibrateType(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 271
    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/lgesettings/VibrateTypePreference;->typeIntegrityCheck(I)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/android/lgesettings/VibrateTypePreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "distinctive_vibration_email"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_0
    const-string v0, "VibrateTypePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Email vibrtate type - bad Value["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setEntiesValues()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->mIncomming_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/lgesettings/VibrateTypePreference;->vibrate_type_entry:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->mMessage_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/lgesettings/VibrateTypePreference;->vibrate_type_entry:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->mEmail_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/lgesettings/VibrateTypePreference;->vibrate_type_entry:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->mAlarm_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/lgesettings/VibrateTypePreference;->vibrate_type_entry:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->mCalendarPreference:Lcom/android/lgesettings/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/lgesettings/VibrateTypePreference;->vibrate_type_entry:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->mIncomming_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/lgesettings/VibrateTypePreference;->vibrate_type_value:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->mMessage_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/lgesettings/VibrateTypePreference;->vibrate_type_value:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->mEmail_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/lgesettings/VibrateTypePreference;->vibrate_type_value:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->mAlarm_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/lgesettings/VibrateTypePreference;->vibrate_type_value:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->mCalendarPreference:Lcom/android/lgesettings/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/lgesettings/VibrateTypePreference;->vibrate_type_value:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 118
    return-void
.end method

.method private setListener()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->mIncomming_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

    invoke-virtual {v0, p0}, Lcom/android/lgesettings/VibrateTypeListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->mMessage_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

    invoke-virtual {v0, p0}, Lcom/android/lgesettings/VibrateTypeListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 101
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->mEmail_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

    invoke-virtual {v0, p0}, Lcom/android/lgesettings/VibrateTypeListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 102
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->mAlarm_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

    invoke-virtual {v0, p0}, Lcom/android/lgesettings/VibrateTypeListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 103
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->mCalendarPreference:Lcom/android/lgesettings/VibrateTypeListPreference;

    invoke-virtual {v0, p0}, Lcom/android/lgesettings/VibrateTypeListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    return-void
.end method

.method private setMessage_VibrateType(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 259
    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/lgesettings/VibrateTypePreference;->typeIntegrityCheck(I)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/android/lgesettings/VibrateTypePreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "distinctive_vibration_messaging"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    const-string v0, "VibrateTypePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message vibrtate type - bad Value["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSummary()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->mIncomming_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

    invoke-direct {p0}, Lcom/android/lgesettings/VibrateTypePreference;->getCall_VibrateType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->setValue(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->mMessage_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

    invoke-direct {p0}, Lcom/android/lgesettings/VibrateTypePreference;->getMessage_VibrateType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->setValue(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->mEmail_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

    invoke-direct {p0}, Lcom/android/lgesettings/VibrateTypePreference;->getEmail_VibrateType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->setValue(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->mAlarm_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

    invoke-direct {p0}, Lcom/android/lgesettings/VibrateTypePreference;->getAlarm_VibrateType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->setValue(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->mCalendarPreference:Lcom/android/lgesettings/VibrateTypeListPreference;

    invoke-direct {p0}, Lcom/android/lgesettings/VibrateTypePreference;->getCalendar_VibrateType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->setValue(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->mIncomming_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/lgesettings/VibrateTypePreference;->mIncomming_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

    invoke-virtual {v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->mMessage_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/lgesettings/VibrateTypePreference;->mMessage_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

    invoke-virtual {v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->mEmail_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/lgesettings/VibrateTypePreference;->mEmail_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

    invoke-virtual {v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->mAlarm_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/lgesettings/VibrateTypePreference;->mAlarm_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

    invoke-virtual {v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->mCalendarPreference:Lcom/android/lgesettings/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/lgesettings/VibrateTypePreference;->mCalendarPreference:Lcom/android/lgesettings/VibrateTypeListPreference;

    invoke-virtual {v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method

.method private steArrayList()V
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/lgesettings/VibrateTypePreference;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->vibrate_type_entry:[Ljava/lang/CharSequence;

    .line 94
    invoke-virtual {p0}, Lcom/android/lgesettings/VibrateTypePreference;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->vibrate_type_value:[Ljava/lang/CharSequence;

    .line 95
    return-void
.end method

.method private typeIntegrityCheck(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 237
    if-lez p1, :cond_0

    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    .line 238
    const/4 v0, 0x1

    .line 240
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateState()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/lgesettings/VibrateTypePreference;->setSummary()V

    .line 141
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/lgesettings/VibrateTypePreference;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 55
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 57
    const v1, 0x7f080cca

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 62
    :cond_0
    const v1, 0x7f060072

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/VibrateTypePreference;->addPreferencesFromResource(I)V

    .line 63
    const-string v1, "incomming_vibrate"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/VibrateTypePreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/VibrateTypeListPreference;

    iput-object v1, p0, Lcom/android/lgesettings/VibrateTypePreference;->mIncomming_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

    .line 64
    const-string v1, "message_vibrate"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/VibrateTypePreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/VibrateTypeListPreference;

    iput-object v1, p0, Lcom/android/lgesettings/VibrateTypePreference;->mMessage_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

    .line 65
    const-string v1, "email_vibrate"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/VibrateTypePreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/VibrateTypeListPreference;

    iput-object v1, p0, Lcom/android/lgesettings/VibrateTypePreference;->mEmail_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

    .line 66
    const-string v1, "alarm_vibrate"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/VibrateTypePreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/VibrateTypeListPreference;

    iput-object v1, p0, Lcom/android/lgesettings/VibrateTypePreference;->mAlarm_vibrateType:Lcom/android/lgesettings/VibrateTypeListPreference;

    .line 67
    const-string v1, "calendar_vibrate"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/VibrateTypePreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/VibrateTypeListPreference;

    iput-object v1, p0, Lcom/android/lgesettings/VibrateTypePreference;->mCalendarPreference:Lcom/android/lgesettings/VibrateTypeListPreference;

    .line 69
    invoke-direct {p0}, Lcom/android/lgesettings/VibrateTypePreference;->setListener()V

    .line 70
    invoke-direct {p0}, Lcom/android/lgesettings/VibrateTypePreference;->steArrayList()V

    .line 71
    invoke-direct {p0}, Lcom/android/lgesettings/VibrateTypePreference;->setEntiesValues()V

    .line 72
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 305
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/android/lgesettings/VibrateTypePreference;->finish()V

    .line 307
    const/4 v0, 0x1

    .line 309
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 85
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->currentPreference:Lcom/android/lgesettings/VibrateTypeListPreference;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->currentPreference:Lcom/android/lgesettings/VibrateTypeListPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/VibrateTypeListPreference;->vibrateStop()V

    .line 88
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, key:Ljava/lang/String;
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 156
    .local v1, value:I
    const-string v2, "incomming_vibrate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    invoke-direct {p0, v1}, Lcom/android/lgesettings/VibrateTypePreference;->setCall_VibrateType(I)V

    .line 167
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/lgesettings/VibrateTypePreference;->updateState()V

    .line 168
    const/4 v2, 0x0

    return v2

    .line 158
    :cond_1
    const-string v2, "message_vibrate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    invoke-direct {p0, v1}, Lcom/android/lgesettings/VibrateTypePreference;->setMessage_VibrateType(I)V

    goto :goto_0

    .line 160
    :cond_2
    const-string v2, "email_vibrate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 161
    invoke-direct {p0, v1}, Lcom/android/lgesettings/VibrateTypePreference;->setEmail_VibrateType(I)V

    goto :goto_0

    .line 162
    :cond_3
    const-string v2, "alarm_vibrate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 163
    invoke-direct {p0, v1}, Lcom/android/lgesettings/VibrateTypePreference;->setAlarm_VibrateType(I)V

    goto :goto_0

    .line 164
    :cond_4
    const-string v2, "calendar_vibrate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    invoke-direct {p0, v1}, Lcom/android/lgesettings/VibrateTypePreference;->setCalendar_VibrateType(I)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 147
    move-object v0, p2

    check-cast v0, Lcom/android/lgesettings/VibrateTypeListPreference;

    iput-object v0, p0, Lcom/android/lgesettings/VibrateTypePreference;->currentPreference:Lcom/android/lgesettings/VibrateTypeListPreference;

    .line 148
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 78
    invoke-direct {p0}, Lcom/android/lgesettings/VibrateTypePreference;->updateState()V

    .line 79
    return-void
.end method
