.class public final synthetic LX/109;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic A00:LX/10d;

.field private final synthetic A01:LX/1AJ;

.field private final synthetic A02:LX/1AL;


# direct methods
.method public synthetic constructor <init>(LX/10d;LX/1AL;LX/1AJ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/109;->A00:LX/10d;

    iput-object p2, p0, LX/109;->A02:LX/1AL;

    iput-object p3, p0, LX/109;->A01:LX/1AJ;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, LX/109;->A00:LX/10d;

    iget-object v1, p0, LX/109;->A02:LX/1AL;

    iget-object v8, p0, LX/109;->A01:LX/1AJ;

    iget-object v0, v0, LX/10d;->A08:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LX/10a;

    if-nez v6, :cond_1

    const-string v0, "The response handler must not be null"

    invoke-static {v0}, Lcom/whatsapp/util/Log;->e(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    check-cast v6, LX/1tV;

    iget-object v3, v6, LX/1tV;->A01:LX/10d;

    const/4 v0, 0x0

    iput-boolean v0, v3, LX/10d;->A00:Z

    iget-object v2, v1, LX/1AL;->A04:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v0, v6, LX/1tV;->A03:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v1, 0x1

    if-nez v2, :cond_3

    const/4 v1, 0x0

    :cond_3
    iget-object v5, v3, LX/10d;->A04:LX/10Q;

    iget-object v7, v6, LX/1tV;->A02:Lcom/whatsapp/jid/UserJid;

    monitor-enter v5

    :try_start_0
    iget-object v0, v5, LX/10Q;->A00:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LX/10P;

    if-nez v4, :cond_4

    new-instance v4, LX/10P;

    invoke-direct {v4}, LX/10P;-><init>()V

    iget-object v0, v5, LX/10Q;->A00:Ljava/util/Map;

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-nez v1, :cond_6

    iget-object v0, v4, LX/10P;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/1CN;

    iget-object v1, v5, LX/10Q;->A02:Ljava/util/Map;

    iget-object v0, v0, LX/1CN;->A06:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    iget-object v0, v4, LX/10P;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_6
    iget-object v0, v8, LX/1AJ;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LX/1CN;

    iget-object v0, v4, LX/10P;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v5, LX/10Q;->A01:Ljava/util/Map;

    iget-object v0, v2, LX/1CN;->A06:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v5, LX/10Q;->A02:Ljava/util/Map;

    iget-object v0, v2, LX/1CN;->A06:Ljava/lang/String;

    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    iget-object v0, v8, LX/1AJ;->A00:LX/1AK;

    iput-object v0, v4, LX/10P;->A00:LX/1AK;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v6, LX/1tV;->A00:LX/10Z;

    iget-object v0, v6, LX/1tV;->A02:Lcom/whatsapp/jid/UserJid;

    invoke-interface {v1, v0}, LX/10Z;->ACN(Lcom/whatsapp/jid/UserJid;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
