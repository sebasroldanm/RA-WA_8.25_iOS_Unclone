.class public LX/2Sb;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static volatile A01:LX/2Sb;


# instance fields
.field public final A00:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(LX/1Pz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "media_daily_usage_preferences_v1"

    invoke-virtual {p1, v0}, LX/1Pz;->A01(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, LX/2Sb;->A00:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static A00(JIIIZI)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v0, "%d_%d_%d_%d_%b_%d"

    invoke-static {v3, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A01(JIIIZI)LX/2Sc;
    .locals 10

    move v5, p3

    move/from16 v9, p7

    move v7, p5

    move v6, p4

    move/from16 v8, p6

    move-wide v3, p1

    invoke-static/range {v3 .. v9}, LX/2Sb;->A00(JIIIZI)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, LX/2Sb;->A00:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1}, LX/2Sc;->A00(Ljava/lang/String;)LX/2Sc;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, LX/2Sc;

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    const/4 v0, 0x5

    if-eq p3, v0, :cond_0

    const/4 v5, 0x1

    :cond_0
    invoke-direct/range {v2 .. v9}, LX/2Sc;-><init>(JIIIZI)V

    :cond_1
    return-object v2

    :cond_2
    new-instance v2, LX/2Sc;

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_3

    const/4 v0, 0x5

    if-eq p3, v0, :cond_3

    const/4 v5, 0x1

    :cond_3
    invoke-direct/range {v2 .. v9}, LX/2Sc;-><init>(JIIIZI)V

    return-object v2
.end method

.method public A02(JIIIZILX/2Sc;)V
    .locals 7

    move v6, p7

    move v4, p5

    move v3, p4

    move v2, p3

    move v5, p6

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, LX/2Sb;->A00(JIIIZI)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-wide v0, p8, LX/2Sc;->A01:J

    const-string v4, "bytesSent"

    invoke-virtual {v3, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-wide v0, p8, LX/2Sc;->A00:J

    const-string v4, "bytesReceived"

    invoke-virtual {v3, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-wide v0, p8, LX/2Sc;->A05:J

    const-string v4, "countMessageSent"

    invoke-virtual {v3, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-wide v0, p8, LX/2Sc;->A04:J

    const-string v4, "countMessageReceived"

    invoke-virtual {v3, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-wide v0, p8, LX/2Sc;->A07:J

    const-string v4, "countUploaded"

    invoke-virtual {v3, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-wide v0, p8, LX/2Sc;->A02:J

    const-string v4, "countDownloaded"

    invoke-virtual {v3, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-wide v0, p8, LX/2Sc;->A03:J

    const-string v4, "countForward"

    invoke-virtual {v3, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-wide v0, p8, LX/2Sc;->A06:J

    const-string v4, "countShared"

    invoke-virtual {v3, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-wide v0, p8, LX/2Sc;->A08:J

    const-string v4, "countViewed"

    invoke-virtual {v3, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-wide v0, p8, LX/2Sc;->A0D:J

    const-string v4, "transferDate"

    invoke-virtual {v3, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget v1, p8, LX/2Sc;->A0A:I

    const-string v0, "mediaType"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v1, p8, LX/2Sc;->A0C:I

    const-string v0, "transferRadio"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v1, p8, LX/2Sc;->A09:I

    const-string v0, "mediaTransferOrigin"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-boolean v1, p8, LX/2Sc;->A0E:Z

    const-string v0, "isAutoDownload"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget v1, p8, LX/2Sc;->A0B:I

    const-string v0, "senderExperimentGroupId"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, LX/2Sb;->A00:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    return-void
.end method
