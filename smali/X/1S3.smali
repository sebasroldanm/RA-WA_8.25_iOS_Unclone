.class public LX/1S3;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static volatile A03:LX/1S3;


# instance fields
.field public A00:Ljava/lang/String;

.field public A01:Ljava/lang/String;

.field public final A02:LX/181;


# direct methods
.method public constructor <init>(LX/181;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/1S3;->A02:LX/181;

    return-void
.end method

.method public static A00()LX/1S3;
    .locals 3

    sget-object v0, LX/1S3;->A03:LX/1S3;

    if-nez v0, :cond_1

    const-class v2, LX/1S3;

    monitor-enter v2

    :try_start_0
    sget-object v0, LX/1S3;->A03:LX/1S3;

    if-nez v0, :cond_0

    new-instance v1, LX/1S3;

    invoke-static {}, LX/181;->A00()LX/181;

    move-result-object v0

    invoke-direct {v1, v0}, LX/1S3;-><init>(LX/181;)V

    sput-object v1, LX/1S3;->A03:LX/1S3;

    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    sget-object v0, LX/1S3;->A03:LX/1S3;

    return-object v0
.end method

.method public static final A01(LX/181;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v2, "_"

    const-string v4, "unknown"

    const-string v0, "[^,\\.\\w\\-\\(\\)]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5f

    const/16 v1, 0x20

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v0, "Android"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    const v0, 0x7f11006d

    invoke-virtual {p0, v0}, LX/181;->A05(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string v0, "app/user-agent/release"

    invoke-static {v0, v1}, Lcom/whatsapp/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v4

    :goto_0
    :try_start_1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v1

    const-string v0, "app/user-agent/manufacturer"

    invoke-static {v0, v1}, Lcom/whatsapp/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v4

    :goto_1
    :try_start_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v1

    const-string v0, "app/user-agent/model"

    invoke-static {v0, v1}, Lcom/whatsapp/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const-string v2, "/"

    const-string v0, " "

    invoke-static {v8, v2, v7, v0, v6}, LX/0CI;->A0R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, " Device/"

    invoke-static {v1, v2, v5, v0, v3}, LX/0CI;->A15(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "-"

    invoke-static {v1, v0, v4}, LX/0CI;->A0G(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized A02()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LX/1S3;->A00:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v2, p0, LX/1S3;->A02:LX/181;

    const-string v1, "2.20.11"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "2.20.11"

    :try_start_1
    move-object v0, p0

    const/4 v0, 0x0

    invoke-static {v2, v1}, LX/1S3;->A01(LX/181;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LX/1S3;->A00:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, LX/1S3;->A00:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized A03()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LX/1S3;->A01:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v2, p0, LX/1S3;->A02:LX/181;

    const-string v1, "2.20.11"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "2.20.11"

    const/4 v0, 0x1

    :try_start_1
    invoke-static {v2, v1}, LX/1S3;->A01(LX/181;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LX/1S3;->A01:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, LX/1S3;->A01:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
