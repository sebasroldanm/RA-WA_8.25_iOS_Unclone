.class public LX/1D2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# instance fields
.field public transient A00:LX/254;

.field public chatMemory:LX/1AP;

.field public final contactRawJid:Ljava/lang/String;


# direct methods
.method public constructor <init>(LX/254;LX/1AP;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/1D2;->A00:LX/254;

    invoke-virtual {p1}, Lcom/whatsapp/jid/Jid;->getRawString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LX/1D2;->contactRawJid:Ljava/lang/String;

    iput-object p2, p0, LX/1D2;->chatMemory:LX/1AP;

    return-void
.end method


# virtual methods
.method public A00(LX/1D2;)I
    .locals 6

    iget-object v5, p1, LX/1D2;->chatMemory:LX/1AP;

    iget-wide v3, v5, LX/1AP;->overallSize:J

    iget-object v2, p0, LX/1D2;->chatMemory:LX/1AP;

    iget-wide v0, v2, LX/1AP;->overallSize:J

    sub-long/2addr v3, v0

    long-to-float v0, v3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    if-nez v0, :cond_0

    iget v1, v5, LX/1AP;->numberOfMessages:I

    iget v0, v2, LX/1AP;->numberOfMessages:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    return v0

    :cond_0
    return v0
.end method

.method public declared-synchronized A01()LX/254;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LX/1D2;->A00:LX/254;

    if-nez v0, :cond_0

    iget-object v0, p0, LX/1D2;->contactRawJid:Ljava/lang/String;

    invoke-static {v0}, LX/254;->A01(Ljava/lang/String;)LX/254;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "contactRawJid = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, LX/1D2;->contactRawJid:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LX/1Ru;->A06(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, LX/1D2;->A00:LX/254;

    :cond_0
    iget-object v0, p0, LX/1D2;->A00:LX/254;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, LX/1D2;

    invoke-virtual {p0, p1}, LX/1D2;->A00(LX/1D2;)I

    move-result v0

    return v0
.end method
