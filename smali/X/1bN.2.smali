.class public final LX/1bN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/0Kk;


# instance fields
.field public A00:LX/0Kk;

.field public A01:LX/0Kk;

.field public A02:LX/0Kk;

.field public A03:LX/0Kk;

.field public A04:LX/0Kk;

.field public final A05:Landroid/content/Context;

.field public final A06:LX/0Kk;


# direct methods
.method public constructor <init>(Landroid/content/Context;LX/0Kk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LX/1bN;->A05:Landroid/content/Context;

    if-eqz p2, :cond_0

    iput-object p2, p0, LX/1bN;->A06:LX/0Kk;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public A7Q()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, LX/1bN;->A02:LX/0Kk;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, LX/0Kk;->A7Q()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public AHg(LX/0Km;)J
    .locals 5

    iget-object v1, p0, LX/1bN;->A02:LX/0Kk;

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, LX/00O;->A0N(Z)V

    iget-object v0, p1, LX/0Km;->A04:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p1, LX/0Km;->A04:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_4

    iget-object v0, p1, LX/0Km;->A04:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v0, "/android_asset/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, LX/1bN;->A03:LX/0Kk;

    if-nez v0, :cond_3

    new-instance v0, LX/1bP;

    invoke-direct {v0}, LX/1bP;-><init>()V

    iput-object v0, p0, LX/1bN;->A03:LX/0Kk;

    :cond_3
    iget-object v0, p0, LX/1bN;->A03:LX/0Kk;

    iput-object v0, p0, LX/1bN;->A02:LX/0Kk;

    :goto_0
    iget-object v0, p0, LX/1bN;->A02:LX/0Kk;

    invoke-interface {v0, p1}, LX/0Kk;->AHg(LX/0Km;)J

    move-result-wide v0

    return-wide v0

    :cond_4
    const-string v0, "asset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, LX/1bN;->A01:LX/0Kk;

    if-nez v0, :cond_5

    new-instance v2, LX/1bM;

    iget-object v1, p0, LX/1bN;->A05:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {v2, v1, v0}, LX/1bM;-><init>(Landroid/content/Context;LX/0Kx;)V

    iput-object v2, p0, LX/1bN;->A01:LX/0Kk;

    :cond_5
    iget-object v0, p0, LX/1bN;->A01:LX/0Kk;

    iput-object v0, p0, LX/1bN;->A02:LX/0Kk;

    goto :goto_0

    :cond_6
    const-string v0, "rtmp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v3, "Error instantiating RtmpDataSource"

    const-string v2, "DefaultDataSource"

    iget-object v0, p0, LX/1bN;->A04:LX/0Kk;

    if-nez v0, :cond_7

    :try_start_0
    const-string v0, "com.google.android.exoplayer2.ext.rtmp.RtmpDataSource"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v0, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/0Kk;

    iput-object v0, p0, LX/1bN;->A04:LX/0Kk;

    goto :goto_1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    const-string v0, "Attempting to play RTMP stream without depending on the RTMP extension"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, LX/1bN;->A04:LX/0Kk;

    if-nez v0, :cond_7

    iget-object v0, p0, LX/1bN;->A06:LX/0Kk;

    iput-object v0, p0, LX/1bN;->A04:LX/0Kk;

    :cond_7
    iget-object v0, p0, LX/1bN;->A04:LX/0Kk;

    iput-object v0, p0, LX/1bN;->A02:LX/0Kk;

    goto :goto_0

    :cond_8
    iget-object v0, p0, LX/1bN;->A06:LX/0Kk;

    iput-object v0, p0, LX/1bN;->A02:LX/0Kk;

    goto :goto_0

    :cond_9
    iget-object v0, p0, LX/1bN;->A00:LX/0Kk;

    if-nez v0, :cond_a

    new-instance v1, LX/1bL;

    iget-object v0, p0, LX/1bN;->A05:Landroid/content/Context;

    invoke-direct {v1, v0}, LX/1bL;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, LX/1bN;->A00:LX/0Kk;

    :cond_a
    iget-object v0, p0, LX/1bN;->A00:LX/0Kk;

    iput-object v0, p0, LX/1bN;->A02:LX/0Kk;

    goto :goto_0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, LX/1bN;->A02:LX/0Kk;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, LX/0Kk;->close()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, LX/1bN;->A02:LX/0Kk;

    throw v0

    :goto_0
    iput-object v1, p0, LX/1bN;->A02:LX/0Kk;

    :cond_0
    return-void
.end method

.method public read([BII)I
    .locals 1

    iget-object v0, p0, LX/1bN;->A02:LX/0Kk;

    invoke-interface {v0, p1, p2, p3}, LX/0Kk;->read([BII)I

    move-result v0

    return v0
.end method
