.class public LX/1R5;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static volatile A01:LX/1R5;


# instance fields
.field public final A00:LX/17b;


# direct methods
.method public constructor <init>(LX/17b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/1R5;->A00:LX/17b;

    return-void
.end method

.method public static A00()LX/1R5;
    .locals 3

    sget-object v0, LX/1R5;->A01:LX/1R5;

    if-nez v0, :cond_1

    const-class v2, LX/1R5;

    monitor-enter v2

    :try_start_0
    sget-object v0, LX/1R5;->A01:LX/1R5;

    if-nez v0, :cond_0

    new-instance v1, LX/1R5;

    invoke-static {}, LX/17b;->A00()LX/17b;

    move-result-object v0

    invoke-direct {v1, v0}, LX/1R5;-><init>(LX/17b;)V

    sput-object v1, LX/1R5;->A01:LX/1R5;

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
    sget-object v0, LX/1R5;->A01:LX/1R5;

    return-object v0
.end method


# virtual methods
.method public A01()I
    .locals 3

    iget-object v0, p0, LX/1R5;->A00:LX/17b;

    iget-object v2, v0, LX/17b;->A00:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v0, "registration_state"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public A02()Z
    .locals 3

    invoke-virtual {p0}, LX/1R5;->A01()I

    move-result v2

    const/4 v1, 0x3

    const/4 v0, 0x0

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
