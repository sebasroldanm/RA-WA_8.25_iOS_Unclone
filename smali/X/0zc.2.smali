.class public LX/0zc;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field public final synthetic A00:LX/0ze;


# direct methods
.method public constructor <init>(LX/0ze;)V
    .locals 0

    iput-object p1, p0, LX/0zc;->A00:LX/0ze;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :try_start_0
    iget-object v0, p0, LX/0zc;->A00:LX/0ze;

    iget-object v1, v0, LX/0ze;->A09:Ljava/util/Stack;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, LX/0zc;->A00:LX/0ze;

    iget-object v0, v0, LX/0ze;->A09:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LX/0zc;->A00:LX/0ze;

    iget-object v0, v0, LX/0ze;->A09:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    iget-object v4, p0, LX/0zc;->A00:LX/0ze;

    iget-object v0, v4, LX/0ze;->A09:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v6, 0x0

    iget-object v1, v4, LX/0ze;->A05:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, v4, LX/0ze;->A09:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v4, LX/0ze;->A09:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LX/0zb;

    :cond_2
    monitor-exit v1

    if-eqz v6, :cond_c
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    iget-object v0, v6, LX/0zb;->A04:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    const/4 v0, 0x0

    if-nez v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_c

    iget-object v0, v6, LX/0zb;->A02:Ljava/lang/String;

    invoke-static {v0}, LX/1PQ;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LX/1Ru;->A05(Ljava/lang/Object;)V

    iget-object v2, v4, LX/0ze;->A03:LX/0zZ;

    iget v1, v6, LX/0zb;->A01:I

    iget v0, v6, LX/0zb;->A00:I

    invoke-virtual {v2, v3, v1, v0}, LX/0zZ;->A00(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_9

    iget-object v2, v4, LX/0ze;->A05:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v0, v6, LX/0zb;->A04:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LX/0zg;

    invoke-interface {v7}, LX/0zg;->A3h()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, LX/0zg;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v6, LX/0zb;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v6, LX/0zb;->A04:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v7}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v5, v4, LX/0ze;->A02:LX/0rz;

    new-instance v3, LX/0za;

    const/4 v1, 0x0

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v4, v1, v0}, LX/0za;-><init>(LX/0ze;Landroid/graphics/Bitmap;Ljava/util/Collection;)V

    iget-object v0, v5, LX/0rz;->A02:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_6
    iget-object v0, v6, LX/0zb;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v6, LX/0zb;->A04:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    const/4 v0, 0x0

    if-nez v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    if-nez v0, :cond_8

    iget-object v0, v4, LX/0ze;->A0A:Ljava/util/Stack;

    invoke-virtual {v0, v6}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    iget-object v0, v4, LX/0ze;->A0A:Ljava/util/Stack;

    invoke-virtual {v0, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v4, LX/0ze;->A0A:Ljava/util/Stack;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v0, v4, LX/0ze;->A0A:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_8
    :try_start_7
    monitor-exit v2

    goto :goto_1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_9
    :try_start_8
    iget-object v1, v4, LX/0ze;->A03:LX/0zZ;

    iget-object v0, v6, LX/0zb;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0, v5}, LX/0zZ;->A02(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v3, v4, LX/0ze;->A05:Ljava/lang/Object;

    monitor-enter v3
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    iget-object v1, v4, LX/0ze;->A08:Ljava/util/Map;

    iget-object v0, v6, LX/0zb;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v6, LX/0zb;->A04:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    const/4 v0, 0x0

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    if-nez v0, :cond_b

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, v6, LX/0zb;->A04:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, v6, LX/0zb;->A04:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    new-instance v1, LX/0za;

    invoke-direct {v1, v4, v5, v2}, LX/0za;-><init>(LX/0ze;Landroid/graphics/Bitmap;Ljava/util/Collection;)V

    iget-object v0, v4, LX/0ze;->A02:LX/0rz;

    iget-object v0, v0, LX/0rz;->A02:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_b
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_c
    :goto_1
    :try_start_a
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0

    :catchall_0
    :try_start_b
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v2

    goto :goto_3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_2
    :try_start_d
    move-exception v0

    monitor-exit v3

    goto :goto_3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catchall_3
    move-exception v0

    :try_start_e
    monitor-exit v1

    goto :goto_3

    :goto_2
    return-void
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :catchall_4
    move-exception v0

    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :goto_3
    :try_start_10
    throw v0
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_0

    :catch_0
    return-void
.end method
